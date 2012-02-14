APP_NAME:=sockjs

UPSTREAM_GIT:=https://github.com/sockjs/sockjs-erlang.git
UPSTREAM_REVISION:=dev
RETAIN_ORIGINAL_VERSION:=true

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE-* $(APP_DIR)
endef
