APP_NAME:=sockjs
DEPS:=cowboy-wrapper

UPSTREAM_GIT:=https://github.com/rabbitmq/sockjs-erlang.git
UPSTREAM_REVISION:=315a349bcbe6b843803b4b9a06c1f12ca98e7c01
RETAIN_ORIGINAL_VERSION:=true
WRAPPER_PATCHES:=

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

ERLC_OPTS:=$(ERLC_OPTS) -D no_specs

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE-* $(APP_DIR)
endef

define package_rules

endef
