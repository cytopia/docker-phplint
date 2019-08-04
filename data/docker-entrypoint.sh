#!/usr/bin/env bash

# Be strict
set -e
set -u
set -o pipefail


###
### Globals
###
ARG_IGNORE=                       # phplint arg to ignore files found via glob
REG_GLOB='(\*.+)|(.+\*)|(.+\*.+)' # Regex pattern to identify valid glob supported by 'find'


###
### Show Usage
###
print_usage() {
	>&2 echo "Usage: cytopia/phplint [-i] <PATH-TO-FILE>"
	>&2 echo "       cytopia/phplint [-i] <GLOB-PATTERN>"
	>&2 echo "       cytopia/phplint --version"
	>&2 echo "       cytopia/phplint --help"
	>&2 echo
	>&2 echo " -i <GLOB-PATTERN>  Ignore glob pattern when using the GLOB-PATTERN for file search."
	>&2 echo "                    (e.g.: -i '\.test*.php')"
	>&2 echo " <PATH-TO-FILE>     Path to file to validate"
	>&2 echo " <GLOB-PATTERN>     Glob pattern for recursive scanning. (e.g.: *\\.php)"
	>&2 echo "                    Anything that \"find . -name '<GLOB-PATTERN>'\" will take is valid."
}


###
### Validate PHP file
###
### @param  string Path to file.
### @return int    Success (0: success, >0: Failure)
###
_phplint() {
	local file="${1}"
	# shellcheck disable=SC2155
	local ret=0
	local cmd="php -d display_errors=1 -d error_reporting=-1 -l ${file}"

	echo "${cmd}"
	if ! output="$( eval "${cmd}" 2>&1)"; then
		echo "${output}"
		ret=$(( ret + 1 ))
	fi

	return "${ret}"
}


###
### Arguments appended?
###
if [ "${#}" -gt "0" ]; then

	while [ "${#}" -gt "0"  ]; do
		case "${1}" in
			# Show Help and exit
			--help)
				print_usage
				exit 0
				;;
			# Show Version and exit
			--version)
				php --version || true
				exit 0
				;;
			# Ignore glob patterh
			-i)
				shift
				if [ "${#}" -lt "1" ]; then
					>&2 echo "Error, -i requires an argument"
					exit 1
				fi
				ARG_IGNORE="${1}"
				shift
				;;
			# Anything else is handled here
			*)
				# Case 1/2: Its a file
				if [ -f "${1}" ]; then
					# Argument check
					if [ "${#}" -gt "1" ]; then
						>&2 echo "Error, you cannot specify arguments after the file position."
						print_usage
						exit 1
					fi
					_phplint "${1}"
					exit "${?}"
				# Case 2/2:  Its a glob
				else
					# Glob check
					if ! echo "${1}" | grep -qE "${REG_GLOB}"; then
						>&2 echo "Error, wrong glob format. Allowed: '${REG_GLOB}'"
						exit 1
					fi
					# Argument check
					if [ "${#}" -gt "1" ]; then
						>&2 echo "Error, you cannot specify arguments after the glob position."
						print_usage
						exit 1
					fi

					# Iterate over all files found by glob and jsonlint them
					if [ -z "${ARG_IGNORE}" ]; then
						find_cmd="find . -name \"${1}\" -type f -print0"
					else
						find_cmd="find . -not \( -path \"${ARG_IGNORE}\" \) -name \"${1}\" -type f -print0"
					fi

					echo "${find_cmd}"
					ret=0
					while IFS= read -rd '' file; do
						if ! _phplint "${file}"; then
							ret=$(( ret + 1 ))
						fi
					done < <(eval "${find_cmd}")
					exit "${ret}"
				fi
				;;
		esac
	done

###
### No arguments appended
###
else
	print_usage
	exit 0
fi
