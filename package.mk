APP_NAME:=sockjs
DEPS:=cowboy-wrapper

UPSTREAM_GIT:=https://github.com/rabbitmq/sockjs-erlang.git
UPSTREAM_REVISION:=99fd95329daa6fde1c553edd90921bee8472391b
RETAIN_ORIGINAL_VERSION:=true
WRAPPER_PATCHES:=

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE-* $(APP_DIR)
endef

define package_rules

endef
