# Docker image for `phplint`

[![Tag](https://img.shields.io/github/tag/cytopia/docker-phplint.svg)](https://github.com/cytopia/docker-phplint/releases)
[![](https://img.shields.io/badge/github-cytopia%2Fdocker--phplint-red.svg)](https://github.com/cytopia/docker-phplint "github.com/cytopia/docker-phplint")
[![License](https://img.shields.io/badge/license-MIT-%233DA639.svg)](https://opensource.org/licenses/MIT)

[![lint](https://github.com/cytopia/docker-phplint/workflows/lint/badge.svg)](https://github.com/cytopia/docker-phplint/actions?query=workflow%3Alint)
[![build](https://github.com/cytopia/docker-phplint/workflows/build/badge.svg)](https://github.com/cytopia/docker-phplint/actions?query=workflow%3Abuild)
[![nightly](https://github.com/cytopia/docker-phplint/workflows/nightly/badge.svg)](https://github.com/cytopia/docker-phplint/actions?query=workflow%3Anightly)


> #### All [#awesome-ci](https://github.com/topics/awesome-ci) Docker images
>
> [ansible-lint][alint-git-lnk] **•**
> [ansible][ansible-git-lnk] **•**
> [awesome-ci][aci-git-lnk] **•**
> [bandit][bandit-git-lnk] **•**
> [black][black-git-lnk] **•**
> [checkmake][cm-git-lnk] **•**
> [eslint][elint-git-lnk] **•**
> [file-lint][flint-git-lnk] **•**
> [gofmt][gfmt-git-lnk] **•**
> [goimports][gimp-git-lnk] **•**
> [golint][glint-git-lnk] **•**
> [jsonlint][jlint-git-lnk] **•**
> [kubeval][kubeval-git-lnk] **•**
> [linkcheck][linkcheck-git-lnk] **•**
> [mypy][mypy-git-lnk] **•**
> [php-cs-fixer][pcsf-git-lnk] **•**
> [phpcbf][pcbf-git-lnk] **•**
> [phpcs][pcs-git-lnk] **•**
> [phplint][plint-git-lnk] **•**
> [pycodestyle][pycs-git-lnk] **•**
> [pydocstyle][pyds-git-lnk] **•**
> [pylint][pylint-git-lnk] **•**
> [terraform-docs][tfdocs-git-lnk] **•**
> [terragrunt-fmt][tgfmt-git-lnk] **•**
> [terragrunt][tg-git-lnk] **•**
> [yamlfmt][yfmt-git-lnk] **•**
> [yamllint][ylint-git-lnk]

View **[Dockerfiles](https://github.com/cytopia/docker-phplint/blob/master/Dockerfiles/)** on GitHub.


**Available Architectures:**  `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6`

Tiny Alpine-based dockerized version of [PHP](https://github.com/php/php-src)<sup>[1]</sup>,
which defaults to linting mode and adds the option to ignore files and paths.
The image is built nightly against multiple stable versions and pushed to Dockerhub.

* <sub>[1] Official project: https://github.com/php/php-src</sub>

## :whale: Available Docker image versions

[![](https://img.shields.io/docker/pulls/cytopia/phplint.svg)](https://hub.docker.com/r/cytopia/phplint)
[![Docker](https://badgen.net/badge/icon/:latest?icon=docker&label=cytopia/phplint)](https://hub.docker.com/r/cytopia/phplint)

#### Rolling releaess

The following Docker image tags are rolling releases and are built and updated every night.

[![nightly](https://github.com/cytopia/docker-phplint/workflows/nightly/badge.svg)](https://github.com/cytopia/docker-phplint/actions?query=workflow%3Anightly)


| Docker Tag           | Git Ref   | PHP          | Flavour | Available Architectures                      |
|----------------------|-----------|--------------|---------|----------------------------------------------|
| `latest`             | master    | latest       | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `alpine`             | master    | latest       | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `debian`             | master    | latest       | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |           |              |         |                                              |
| `8.1`                | master    | **`8.1.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `8.1-alpine`         | master    | **`8.1.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `8.1-debian`         | master    | **`8.1.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |           |              |         |                                              |
| `8.0`                | master    | **`8.0.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `8.0-alpine`         | master    | **`8.0.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `8.0-debian`         | master    | **`8.0.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |           |              |         |                                              |
| `7.4`                | master    | **`7.4.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.4-alpine`         | master    | **`7.4.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.4-debian`         | master    | **`7.4.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |           |              |         |                                              |
| `7.3`                | master    | **`7.3.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.3-alpine`         | master    | **`7.3.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.3-debian`         | master    | **`7.3.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |           |              |         |                                              |
| `7.2`                | master    | **`7.2.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.2-alpine`         | master    | **`7.2.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.2-debian`         | master    | **`7.2.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |           |              |         |                                              |
| `7.1`                | master    | **`7.1.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.1-alpine`         | master    | **`7.1.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.1-debian`         | master    | **`7.1.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |           |              |         |                                              |
| `7.0`                | master    | **`7.0.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.0-alpine`         | master    | **`7.0.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.0-debian`         | master    | **`7.0.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |           |              |         |                                              |
| `5.6`                | master    | **`5.6.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `5.6-alpine`         | master    | **`5.6.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `5.6-debian`         | master    | **`5.6.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |

#### Point in time releases

The following Docker image tags are built once and can be used for reproducible builds. Its version never changes so you will have to update tags in your pipelines from time to time in order to stay up-to-date.

[![build](https://github.com/cytopia/docker-phplint/workflows/build/badge.svg)](https://github.com/cytopia/docker-phplint/actions?query=workflow%3Abuild)

| Docker Tag           | Git Ref      | PHP          | Flavour | Available Architectures                      |
|----------------------|--------------|--------------|---------|----------------------------------------------|
| `latest-<tag>`       | tag: `<tag>` | latest       | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `alpine-<tag>`       | tag: `<tag>` | latest       | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `debian-<tag>`       | tag: `<tag>` | latest       | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |              |              |         |                                              |
| `8.1-<tag>`          | tag: `<tag>` | **`8.1.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `8.1-alpine-<tag>`   | tag: `<tag>` | **`8.1.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `8.1-debian-<tag>`   | tag: `<tag>` | **`8.1.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |              |              |         |                                              |
| `8.0-<tag>`          | tag: `<tag>` | **`8.0.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `8.0-alpine-<tag>`   | tag: `<tag>` | **`8.0.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `8.0-debian-<tag>`   | tag: `<tag>` | **`8.0.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |              |              |         |                                              |
| `7.4-<tag>`          | tag: `<tag>` | **`7.4.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.4-alpine-<tag>`   | tag: `<tag>` | **`7.4.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.4-debian-<tag>`   | tag: `<tag>` | **`7.4.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |              |              |         |                                              |
| `7.3-<tag>`          | tag: `<tag>` | **`7.3.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.3-alpine-<tag>`   | tag: `<tag>` | **`7.3.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.3-debian-<tag>`   | tag: `<tag>` | **`7.3.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |              |              |         |                                              |
| `7.2-<tag>`          | tag: `<tag>` | **`7.2.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.2-alpine-<tag>`   | tag: `<tag>` | **`7.2.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.2-debian-<tag>`   | tag: `<tag>` | **`7.2.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |              |              |         |                                              |
| `7.1-<tag>`          | tag: `<tag>` | **`7.1.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.1-alpine-<tag>`   | tag: `<tag>` | **`7.1.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.1-debian-<tag>`   | tag: `<tag>` | **`7.1.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |              |              |         |                                              |
| `7.0-<tag>`          | tag: `<tag>` | **`7.0.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.0-alpine-<tag>`   | tag: `<tag>` | **`7.0.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `7.0-debian-<tag>`   | tag: `<tag>` | **`7.0.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
|                      |              |              |         |                                              |
| `5.6-<tag>`          | tag: `<tag>` | **`5.6.x`**  | default | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `5.6-alpine-<tag>`   | tag: `<tag>` | **`5.6.x`**  | Alpine  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |
| `5.6-debian-<tag>`   | tag: `<tag>` | **`5.6.x`**  | Debian  | `amd64`, `i386`, `arm64`, `arm/v7`, `arm/v6` |

> Where `<tag>` refers to the chosen git tag from this repository.


## :open_file_folder: Docker mounts

The working directory inside the Docker container is **`/data/`** and should be mounted locally.


## :computer: Usage

### Generic
```bash
$ docker run -it --rm cytopia/phplint --help
```
```bash
Usage: cytopia/phplint [-i] <PATH-TO-FILE>
       cytopia/phplint [-i] <GLOB-PATTERN>
       cytopia/phplint --version
       cytopia/phplint --help

 -i <GLOB-PATTERN>  Ignore glob pattern when using the GLOB-PATTERN for file search.
                    (e.g.: -i '\.test*.php')
 <PATH-TO-FILE>     Path to file to validate
 <GLOB-PATTERN>     Glob pattern for recursive scanning. (e.g.: *\.php)
                    Anything that "find . -name '<GLOB-PATTERN>'" will take is valid.
```

### Lint PHP files
```bash
$ docker run -it --rm -v $(pwd):/data cytopia/phplint
```
```bash
find . -name "*.php" -type f -print0
php -d display_errors=1 -d error_reporting=-1 -l ./index.php
php -d display_errors=1 -d error_reporting=-1 -l ./config.php
php -d display_errors=1 -d error_reporting=-1 -l ./settings.php

Parse error: syntax error, unexpected 'echo' (T_ECHO), expecting ',' or ';' in ./settings.php on line 4
```

### Example Makefile
You can add the following Makefile to your project for easy generation of PHP linting.

```make
ifneq (,)
.error This Makefile requires GNU Make.
endif

.PHONY: lint _update-phplint
CURRENT_DIR = $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

VERSION = 7.3
IGNORES = ./vendor/*

lint: _update-phplint
	docker run -it --rm cytopia/phplint:${VERSION} -i ${IGNORES} '*.php'

_update-phplint:
	docker pull cytopia/phplint:${VERSION}
```

### Travis CI integration
With the above Makefile in place, you can easily add a Travis CI rule to ensure the terraform-docs
output is always up-to-date and will fail otherwise (due to git changes):
```yml
---
sudo: required
language: minimal
services:
  - docker
script:
  - make lint
```


## :arrows_counterclockwise: Related [#awesome-ci](https://github.com/topics/awesome-ci) projects

### Docker images

Save yourself from installing lot's of dependencies and pick a dockerized version of your favourite
linter below for reproducible local or remote CI tests:

| GitHub | DockerHub | Type | Description |
|--------|-----------|------|-------------|
| [awesome-ci][aci-git-lnk]        | [![aci-hub-img]][aci-hub-lnk]         | Basic      | Tools for git, file and static source code analysis |
| [file-lint][flint-git-lnk]       | [![flint-hub-img]][flint-hub-lnk]     | Basic      | Baisc source code analysis |
| [linkcheck][linkcheck-git-lnk]   | [![linkcheck-hub-img]][flint-hub-lnk] | Basic      | Search for URLs in files and validate their HTTP status code |
| [ansible][ansible-git-lnk]       | [![ansible-hub-img]][ansible-hub-lnk] | Ansible    | Multiple versions and flavours of Ansible |
| [ansible-lint][alint-git-lnk]    | [![alint-hub-img]][alint-hub-lnk]     | Ansible    | Lint Ansible |
| [gofmt][gfmt-git-lnk]            | [![gfmt-hub-img]][gfmt-hub-lnk]       | Go         | Format Go source code **<sup>[1]</sup>** |
| [goimports][gimp-git-lnk]        | [![gimp-hub-img]][gimp-hub-lnk]       | Go         | Format Go source code **<sup>[1]</sup>** |
| [golint][glint-git-lnk]          | [![glint-hub-img]][glint-hub-lnk]     | Go         | Lint Go code |
| [eslint][elint-git-lnk]          | [![elint-hub-img]][elint-hub-lnk]     | Javascript | Lint Javascript code |
| [jsonlint][jlint-git-lnk]        | [![jlint-hub-img]][jlint-hub-lnk]     | JSON       | Lint JSON files **<sup>[1]</sup>** |
| [kubeval][kubeval-git-lnk]       | [![kubeval-hub-img]][kubeval-hub-lnk] | K8s        | Lint Kubernetes files |
| [checkmake][cm-git-lnk]          | [![cm-hub-img]][cm-hub-lnk]           | Make       | Lint Makefiles |
| [phpcbf][pcbf-git-lnk]           | [![pcbf-hub-img]][pcbf-hub-lnk]       | PHP        | PHP Code Beautifier and Fixer |
| [phpcs][pcs-git-lnk]             | [![pcs-hub-img]][pcs-hub-lnk]         | PHP        | PHP Code Sniffer |
| [phplint][plint-git-lnk]         | [![plint-hub-img]][plint-hub-lnk]     | PHP        | PHP Code Linter **<sup>[1]</sup>** |
| [php-cs-fixer][pcsf-git-lnk]     | [![pcsf-hub-img]][pcsf-hub-lnk]       | PHP        | PHP Coding Standards Fixer |
| [bandit][bandit-git-lnk]         | [![bandit-hub-img]][bandit-hub-lnk]   | Python     | A security linter from PyCQA
| [black][black-git-lnk]           | [![black-hub-img]][black-hub-lnk]     | Python     | The uncompromising Python code formatter |
| [mypy][mypy-git-lnk]             | [![mypy-hub-img]][mypy-hub-lnk]       | Python     | Static source code analysis |
| [pycodestyle][pycs-git-lnk]      | [![pycs-hub-img]][pycs-hub-lnk]       | Python     | Python style guide checker |
| [pydocstyle][pyds-git-lnk]       | [![pyds-hub-img]][pyds-hub-lnk]       | Python     | Python docstyle checker |
| [pylint][pylint-git-lnk]         | [![pylint-hub-img]][pylint-hub-lnk]   | Python     | Python source code, bug and quality checker |
| [terraform-docs][tfdocs-git-lnk] | [![tfdocs-hub-img]][tfdocs-hub-lnk]   | Terraform  | Terraform doc generator (TF 0.12 ready) **<sup>[1]</sup>** |
| [terragrunt][tg-git-lnk]         | [![tg-hub-img]][tg-hub-lnk]           | Terraform  | Terragrunt and Terraform |
| [terragrunt-fmt][tgfmt-git-lnk]  | [![tgfmt-hub-img]][tgfmt-hub-lnk]     | Terraform  | `terraform fmt` for Terragrunt files **<sup>[1]</sup>** |
| [yamlfmt][yfmt-git-lnk]          | [![yfmt-hub-img]][yfmt-hub-lnk]       | Yaml       | Format Yaml files **<sup>[1]</sup>** |
| [yamllint][ylint-git-lnk]        | [![ylint-hub-img]][ylint-hub-lnk]     | Yaml       | Lint Yaml files |

> **<sup>[1]</sup>** Uses a shell wrapper to add **enhanced functionality** not available by original project.

[aci-git-lnk]: https://github.com/cytopia/awesome-ci
[aci-hub-img]: https://img.shields.io/docker/pulls/cytopia/awesome-ci.svg
[aci-hub-lnk]: https://hub.docker.com/r/cytopia/awesome-ci

[flint-git-lnk]: https://github.com/cytopia/docker-file-lint
[flint-hub-img]: https://img.shields.io/docker/pulls/cytopia/file-lint.svg
[flint-hub-lnk]: https://hub.docker.com/r/cytopia/file-lint

[linkcheck-git-lnk]: https://github.com/cytopia/docker-linkcheck
[linkcheck-hub-img]: https://img.shields.io/docker/pulls/cytopia/linkcheck.svg
[linkcheck-hub-lnk]: https://hub.docker.com/r/cytopia/linkcheck

[jlint-git-lnk]: https://github.com/cytopia/docker-jsonlint
[jlint-hub-img]: https://img.shields.io/docker/pulls/cytopia/jsonlint.svg
[jlint-hub-lnk]: https://hub.docker.com/r/cytopia/jsonlint

[ansible-git-lnk]: https://github.com/cytopia/docker-ansible
[ansible-hub-img]: https://img.shields.io/docker/pulls/cytopia/ansible.svg
[ansible-hub-lnk]: https://hub.docker.com/r/cytopia/ansible

[alint-git-lnk]: https://github.com/cytopia/docker-ansible-lint
[alint-hub-img]: https://img.shields.io/docker/pulls/cytopia/ansible-lint.svg
[alint-hub-lnk]: https://hub.docker.com/r/cytopia/ansible-lint

[kubeval-git-lnk]: https://github.com/cytopia/docker-kubeval
[kubeval-hub-img]: https://img.shields.io/docker/pulls/cytopia/kubeval.svg
[kubeval-hub-lnk]: https://hub.docker.com/r/cytopia/kubeval

[gfmt-git-lnk]: https://github.com/cytopia/docker-gofmt
[gfmt-hub-img]: https://img.shields.io/docker/pulls/cytopia/gofmt.svg
[gfmt-hub-lnk]: https://hub.docker.com/r/cytopia/gofmt

[gimp-git-lnk]: https://github.com/cytopia/docker-goimports
[gimp-hub-img]: https://img.shields.io/docker/pulls/cytopia/goimports.svg
[gimp-hub-lnk]: https://hub.docker.com/r/cytopia/goimports

[glint-git-lnk]: https://github.com/cytopia/docker-golint
[glint-hub-img]: https://img.shields.io/docker/pulls/cytopia/golint.svg
[glint-hub-lnk]: https://hub.docker.com/r/cytopia/golint

[elint-git-lnk]: https://github.com/cytopia/docker-eslint
[elint-hub-img]: https://img.shields.io/docker/pulls/cytopia/eslint.svg
[elint-hub-lnk]: https://hub.docker.com/r/cytopia/eslint

[cm-git-lnk]: https://github.com/cytopia/docker-checkmake
[cm-hub-img]: https://img.shields.io/docker/pulls/cytopia/checkmake.svg
[cm-hub-lnk]: https://hub.docker.com/r/cytopia/checkmake

[pcbf-git-lnk]: https://github.com/cytopia/docker-phpcbf
[pcbf-hub-img]: https://img.shields.io/docker/pulls/cytopia/phpcbf.svg
[pcbf-hub-lnk]: https://hub.docker.com/r/cytopia/phpcbf

[pcs-git-lnk]: https://github.com/cytopia/docker-phpcs
[pcs-hub-img]: https://img.shields.io/docker/pulls/cytopia/phpcs.svg
[pcs-hub-lnk]: https://hub.docker.com/r/cytopia/phpcs

[plint-git-lnk]: https://github.com/cytopia/docker-phplint
[plint-hub-img]: https://img.shields.io/docker/pulls/cytopia/phplint.svg
[plint-hub-lnk]: https://hub.docker.com/r/cytopia/phplint

[pcsf-git-lnk]: https://github.com/cytopia/docker-php-cs-fixer
[pcsf-hub-img]: https://img.shields.io/docker/pulls/cytopia/php-cs-fixer.svg
[pcsf-hub-lnk]: https://hub.docker.com/r/cytopia/php-cs-fixer

[bandit-git-lnk]: https://github.com/cytopia/docker-bandit
[bandit-hub-img]: https://img.shields.io/docker/pulls/cytopia/bandit.svg
[bandit-hub-lnk]: https://hub.docker.com/r/cytopia/bandit

[black-git-lnk]: https://github.com/cytopia/docker-black
[black-hub-img]: https://img.shields.io/docker/pulls/cytopia/black.svg
[black-hub-lnk]: https://hub.docker.com/r/cytopia/black

[mypy-git-lnk]: https://github.com/cytopia/docker-mypy
[mypy-hub-img]: https://img.shields.io/docker/pulls/cytopia/mypy.svg
[mypy-hub-lnk]: https://hub.docker.com/r/cytopia/mypy

[pycs-git-lnk]: https://github.com/cytopia/docker-pycodestyle
[pycs-hub-img]: https://img.shields.io/docker/pulls/cytopia/pycodestyle.svg
[pycs-hub-lnk]: https://hub.docker.com/r/cytopia/pycodestyle

[pyds-git-lnk]: https://github.com/cytopia/docker-pydocstyle
[pyds-hub-img]: https://img.shields.io/docker/pulls/cytopia/pydocstyle.svg
[pyds-hub-lnk]: https://hub.docker.com/r/cytopia/pydocstyle

[pylint-git-lnk]: https://github.com/cytopia/docker-pylint
[pylint-hub-img]: https://img.shields.io/docker/pulls/cytopia/pylint.svg
[pylint-hub-lnk]: https://hub.docker.com/r/cytopia/pylint

[tfdocs-git-lnk]: https://github.com/cytopia/docker-terraform-docs
[tfdocs-hub-img]: https://img.shields.io/docker/pulls/cytopia/terraform-docs.svg
[tfdocs-hub-lnk]: https://hub.docker.com/r/cytopia/terraform-docs

[tg-git-lnk]: https://github.com/cytopia/docker-terragrunt
[tg-hub-img]: https://img.shields.io/docker/pulls/cytopia/terragrunt.svg
[tg-hub-lnk]: https://hub.docker.com/r/cytopia/terragrunt

[tgfmt-git-lnk]: https://github.com/cytopia/docker-terragrunt-fmt
[tgfmt-hub-img]: https://img.shields.io/docker/pulls/cytopia/terragrunt-fmt.svg
[tgfmt-hub-lnk]: https://hub.docker.com/r/cytopia/terragrunt-fmt

[yfmt-git-lnk]: https://github.com/cytopia/docker-yamlfmt
[yfmt-hub-img]: https://img.shields.io/docker/pulls/cytopia/yamlfmt.svg
[yfmt-hub-lnk]: https://hub.docker.com/r/cytopia/yamlfmt

[ylint-git-lnk]: https://github.com/cytopia/docker-yamllint
[ylint-hub-img]: https://img.shields.io/docker/pulls/cytopia/yamllint.svg
[ylint-hub-lnk]: https://hub.docker.com/r/cytopia/yamllint


### Makefiles

Visit **[cytopia/makefiles](https://github.com/cytopia/makefiles)** for dependency-less, seamless project integration and minimum required best-practice code linting for CI.
The provided Makefiles will only require GNU Make and Docker itself removing the need to install anything else.


## :page_facing_up: License


**[MIT License](LICENSE)**

Copyright (c) 2019 [cytopia](https://github.com/cytopia)
