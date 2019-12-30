SED := $(shell which sed)
.PHONY: install uninstall test

install:
	@ mkdir -p ~/.config/rebar3
	@ mkdir -p ~/.config/rebar3/templates
	@ install ./src/* ~/.config/rebar3/templates/
	@ $(SED) -i 's/{author, "Aram", "aramyazdanpanah@gmail.com"}/{author, "${author}", "${email}"}/g' ~/.config/rebar3/templates/repc.template
	@ echo "install successfull"

uninstall:
	rm -rf ~/.config/rebar3/templates/repc*
