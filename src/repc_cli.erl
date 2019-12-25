-module(cli).
-author('{{author}}').

%% API
-export([run/1, run/2]).


%% example for single argument with tupple
%% for call this cli => ./bin/{Appname} cli {arg1, arg2}
%% Note: after comma we need a space
%%      wrong => ./bin/{Appname} cli {arg1,arg2}
%%      true => ./bin/{Appname} cli {arg1, arg2}
run({Arg1,Arg2}) ->
	io:format("in {{name}}_cli module => arg1=> ~p, arg2 => ~p, arg1_is_atom => ~p", [Arg1, Arg2, is_atom(Arg1)]);

%% example for single argument
%% for call this cli => ./bin/{Appname} cli arg
run(Arg) ->
	io:format("in {{name}}_cli module => arg = ~p", [Arg]).


%% example for two argument
%% for call this cli => ./bin/{Appname} cli arg1, arg2
run(Arg1, Arg2) ->
	#{module => ?MODULE, arg1 => Arg1, arg2 => Arg2}.

