EXE=bedtime dusktime schedule_light lighton lightoff
DATA=dusk_times.txt
EXEINSTALLDIR=/usr/local/bin
DATAINSTALLDIR=/usr/local/etc

.phony: install

all:

install:
	sudo cp -f $(EXE) $(EXEINSTALLDIR)
	sudo cp -f $(DATA) $(DATAINSTALLDIR)
	@echo "To start at bootup run:"
	@echo "sudo crontab -e"
	@echo "And add:"
	@echo "00 03 * * * /usr/local/bin/schedule_light"

