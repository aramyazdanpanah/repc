-module({{name}}_log).
-author('{{author}}').

%% API
-export([debug/0, info/0, error/0, get_level/0]).

-spec debug() -> ok | error.
debug() ->
	lager:set_loglevel(lager_console_backend, debug).

-spec info() -> ok | error.
info() ->
	lager:set_loglevel(lager_console_backend, info).

-spec error() -> ok | error.
error() ->
	lager:set_loglevel(lager_console_backend, error).

-spec get_level() -> atom().
get_level() ->
	lager:get_loglevel(lager_console_backend).