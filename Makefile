ifneq (,)
.error This Makefile requires GNU Make.
endif

.PHONY: build rebuild lint test _test-run-ok _test-run-fail tag pull login push enter

CURRENT_DIR = $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

DIR = .
FILE = Dockerfile
IMAGE = cytopia/phplint
TAG = latest

build:
	$(eval VERSION = $(shell if [ '$(TAG)' = "latest" ]; then echo '7-cli-alpine'; else echo '$(TAG)'; fi))
	docker build --build-arg VERSION=$(VERSION) -t $(IMAGE) -f $(DIR)/$(FILE) $(DIR)

rebuild: pull
	$(eval VERSION = $(shell if [ '$(TAG)' = "latest" ]; then echo '7-cli-alpine'; else echo '$(TAG)'; fi))
	docker build --no-cache --build-arg VERSION=$(VERSION) -t $(IMAGE) -f $(DIR)/$(FILE) $(DIR)

lint:
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-cr --text --ignore '.git/,.github/,tests/' --path .
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-crlf --text --ignore '.git/,.github/,tests/' --path .
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-trailing-single-newline --text --ignore '.git/,.github/,tests/' --path .
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-trailing-space --text --ignore '.git/,.github/,tests/' --path .
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-utf8 --text --ignore '.git/,.github/,tests/' --path .
	@docker run --rm -v $(CURRENT_DIR):/data cytopia/file-lint file-utf8-bom --text --ignore '.git/,.github/,tests/' --path .

test:
	@$(MAKE) --no-print-directory _test-run-ok
	@$(MAKE) --no-print-directory _test-run-fail

_test-run-ok:
	@echo "------------------------------------------------------------"
	@echo "- Testing correct files (1/2)"
	@echo "------------------------------------------------------------"
	@if ! docker run --rm -v $(CURRENT_DIR)/tests/ok:/data $(IMAGE); then \
		echo "Failed"; \
		exit 1; \
	fi; \
	echo "Success"
	@echo "------------------------------------------------------------"
	@echo "- Testing correct files (2/2)"
	@echo "------------------------------------------------------------"
	@if ! docker run --rm -v $(CURRENT_DIR)/tests:/data $(IMAGE) -i './fail/*' '*.php'; then \
		echo "Failed"; \
		exit 1; \
	fi; \
	echo "Success";

_test-run-fail:
	@echo "------------------------------------------------------------"
	@echo "- Testing failures (1/2)"
	@echo "------------------------------------------------------------"
	@if docker run --rm -v $(CURRENT_DIR)/tests/fail:/data $(IMAGE); then \
		echo "Failed"; \
		exit 1; \
	fi; \
	echo "Success"
	@echo "------------------------------------------------------------"
	@echo "- Testing failures (2/2)"
	@echo "------------------------------------------------------------"
	@if docker run --rm -v $(CURRENT_DIR)/tests:/data $(IMAGE); then \
		echo "Failed"; \
		exit 1; \
	fi; \
	echo "Success";

tag:
	docker tag $(IMAGE) $(IMAGE):$(TAG)

pull:
	$(eval VERSION = $(shell if [ '$(TAG)' = "latest" ]; then echo '7-cli-alpine'; else echo '$(TAG)'; fi))
	grep -E '^\s*FROM' Dockerfile \
		| sed -e 's/$${VERSION}/$(VERSION)/g' \
		| sed -e 's/^FROM//g' -e 's/[[:space:]]*as[[:space:]]*.*$$//g' \
		| xargs -n1 docker pull;

login:
	yes | docker login --username $(USER) --password $(PASS)

push:
	@$(MAKE) tag TAG=$(TAG)
	docker push $(IMAGE):$(TAG)

enter:
	docker run --rm --name $(subst /,-,$(IMAGE)) -it --entrypoint=/bin/sh $(ARG) $(IMAGE):$(TAG)
