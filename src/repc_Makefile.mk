PWD := $(shell pwd)
SED := $(shell which sed)
VER := $(shell cat ./Version)
REBAR := $(PWD)/script/rebar3

.PHONY: compile shell   test    console-dev rel-dev rel-stage   rel-prod

all: compile

compile:
	${REBAR} compile

shell:
	${REBAR} shell

test:
	${REBAR} ct

console-dev:
	_build/dev/rel/{{name}}/bin/{{name}} console

rel-prod:
	${REBAR} as prod release
	${REBAR} as prod tar
	@printf "\nApplication: %s\n" $(PWD)/_build/prod/rel/{{name}}/{{name}}-$(VER).tar.gz

rel-stage:
	${REBAR} as stage release
	${REBAR} as stage tar
	@printf "\nApplication: %s\n" $(PWD)/_build/stage/rel/{{name}}/{{name}}-$(VER).tar.gz

rel-dev:
	${REBAR} as dev release
