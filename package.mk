APP_NAME:=sockjs
DEPS:=cowboy-wrapper

UPSTREAM_GIT:=https://github.com/rabbitmq/sockjs-erlang.git
UPSTREAM_REVISION:=92d4ba4e41f6e110f97cb50ea0810e34e9b8ef4f
RETAIN_ORIGINAL_VERSION:=true
WRAPPER_PATCHES:=\
	0000-remove-spec-patch.diff

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

ERLC_OPTS:=$(ERLC_OPTS) -D no_specs

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE-* $(APP_DIR)
endef
