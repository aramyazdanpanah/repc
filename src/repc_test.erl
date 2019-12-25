-module({{name}}_SUITE).
-author('{{author}}').
%%====================================================================
%% Exports
%%====================================================================
%% ct callbacks:
-export([init_per_suite/1
	,end_per_suite/1
	,all/0
	,init_per_testcase/2
	,end_per_testcase/2]).

%% Suite case
-export([sample/1]).

-include_lib("common_test/include/ct.hrl").
-include_lib("eunit/include/eunit.hrl").
%%====================================================================
%% initiate Suite
%%====================================================================
all() ->
	[sample].


init_per_suite(Config) ->
	application:start({{name}}),
	Config.


end_per_suite(Config) ->
	application:stop({{name}}),
	Config.


init_per_testcase(_TestCase, Config) ->
	Config.


end_per_testcase(_TestCase, _Config) ->
	ok.

%%====================================================================
%% Suite case
%%====================================================================
sample(_Config) ->
	ok.