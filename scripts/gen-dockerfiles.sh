#!/usr/bin/env bash

set -e
set -u
set -o pipefail


DOCKER_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/../Dockerfiles"
VERSIONS=("latest" "8.1" "8.0" "7.4" "7.3" "7.2" "7.1" "7.0" "5.6")

create_alpine() {
	local version="${1}"
	local flavour="${2}"
	local directory="${3}"
	local outfile

	outfile="${directory}/Dockerfile.${flavour}-${version}"
	{
		if [ "${version}" = "latest" ]; then
			echo "FROM php:cli-alpine"
		else
			echo "FROM php:${version}-cli-alpine"
		fi
		echo
		echo "RUN set -eux \\"
		echo "	&& apk add --no-cache \\"
		echo "		bash"
		echo
		echo "COPY ./data/docker-entrypoint.sh /docker-entrypoint.sh"
		echo
		echo "ENV WORKDIR /data"
		echo "WORKDIR /data"
		echo
		echo "CMD [\"*.php\"]"
		echo "ENTRYPOINT [\"/docker-entrypoint.sh\"]"
	} > "${outfile}"
}

create_debian() {
	local version="${1}"
	local flavour="${2}"
	local directory="${3}"
	local outfile

	outfile="${directory}/Dockerfile.${flavour}-${version}"
	{
		if [ "${version}" = "latest" ]; then
			echo "FROM php:cli"
		else
			echo "FROM php:${version}-cli"
		fi
		echo
		echo "COPY ./data/docker-entrypoint.sh /docker-entrypoint.sh"
		echo
		echo "ENV WORKDIR /data"
		echo "WORKDIR /data"
		echo
		echo "CMD [\"*.php\"]"
		echo "ENTRYPOINT [\"/docker-entrypoint.sh\"]"
	} > "${outfile}"
}



for version in "${VERSIONS[@]}"; do
	create_alpine "${version}" "latest" "${DOCKER_DIR}"
	create_alpine "${version}" "alpine" "${DOCKER_DIR}"
	create_debian "${version}" "debian" "${DOCKER_DIR}"
done
