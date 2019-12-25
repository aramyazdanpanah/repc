%%%-------------------------------------------------------------------
%% @doc {{name}} top level supervisor.
%% @end
%%%-------------------------------------------------------------------
-module({{name}}_sup).
-author('{{author}}').

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SUPERVISOR_NAME, ?MODULE).
%%%===================================================================
%%% API functions
%%%===================================================================
start_link() ->
	supervisor:start_link({local, ?SUPERVISOR_NAME}, ?MODULE, []).

%%%===================================================================
%%% Supervisor callbacks
%%%===================================================================
init([]) ->
	MaxRestarts = 10,
	MaxSecondsBetweenRestarts = 5,
	SupFlags = #{strategy => one_for_one,
		intensity => MaxRestarts,
		period => MaxSecondsBetweenRestarts},
	
%%	AChild = #{id => 'AName',
%%		start => {'AModule', start_link, []},
%%		restart => permanent,
%%		shutdown => 2000,
%%		type => worker,
%%		modules => ['AModule']},
	
	{ok, {SupFlags, []}}.

%%%===================================================================
%%% Internal functions
%%%===================================================================
