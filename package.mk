APP_NAME:=sockjs

UPSTREAM_GIT:=https://github.com/sockjs/sockjs-erlang.git
UPSTREAM_REVISION:=d3b1a8b0ee16bf5422a02fef5aebe3c812821e7d
RETAIN_ORIGINAL_VERSION:=true
WRAPPER_PATCHES:=\
	0000-remove-spec-patch.diff

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

ERLC_OPTS:=$(ERLC_OPTS) -D no_specs

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE-* $(APP_DIR)
endef
