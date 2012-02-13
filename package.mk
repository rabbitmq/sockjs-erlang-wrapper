DEPS:=cowboy-wrapper

APP_NAME:=sockjs

UPSTREAM_GIT:=https://github.com/sockjs/sockjs-erlang.git
UPSTREAM_REVISION:=5db8e68400d74aad52c1257311591e837611a492
RETAIN_ORIGINAL_VERSION:=true

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE-MIT-SockJS $(APP_DIR)
endef
