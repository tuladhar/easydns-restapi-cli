PROGRAM_PATH=bin
PROGRAM_NAME=easydnscli
INSTALL_PATH=/usr/local/bin

install:
	@install $(PROGRAM_PATH)/$(PROGRAM_NAME) $(INSTALL_PATH)/$(PROGRAM_NAME)  
	@echo "$(PROGRAM_NAME): installed"

uninstall:
	@rm -f $(INSTALL_PATH)/$(PROGRAM_NAME)
	@echo "$(PROGRAM_NAME): uninstalled"
