
-include config.mk

info:
	@echo "Makefile for docker image"
	@echo ""

run:
	-sudo docker rm -f $(CONTAINER_NAME)
	sudo docker run -it \
	    --name $(CONTAINER_NAME) \
	    debian-texlive /bin/bash

stop:
	sudo docker stop $(CONTAINER_NAME)

image:
	sudo docker build -t debian-texlive \
	    .


# generated default configuration file
config.mk:
	@echo "First time run. Configuration file config.mk is generated..."
	@echo " Use it and apply your local settings. Do NOT add it to version control!"
	@echo ""
	@echo "# .............................................................................." > $@
	@echo "# DO NOT add this file to version control. It is only used to set your local" >> $@
	@echo "#  preferences for using this Makefile!" >> $@
	@echo "# .............................................................................." >> $@
	@echo "" >> $@
	@echo "# .............................................................................." >> $@
	@echo "# Settings..." >> $@
	@echo "CONTAINER_NAME := rpmbuild" >> $@
	@echo "# .............................................................................." >> $@

