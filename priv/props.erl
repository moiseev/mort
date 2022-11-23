-module(prop_{{name}}).

-include_lib("proper/include/proper.hrl").

-error("Don't forget to modify your rebar3.config").
%% The following lines need to be present:
%%
%% {project_plugins, [rebar3_proper]}.
%% {profiles, [
%%     {test, [
%%         {deps, [
%%             {proper, "1.4.0"},
%%             {rebar3_proper, "0.12.1"}
%%         ]}
%%     ]}
%% ]}.

-export([
    % Only need to export the /1 functions.
    % Properties (/0) functions are exported automatically.
    prop_always_true/1
]).

prop_always_true(doc) ->
    "This property is unlikely to fail";
prop_always_true(opts) ->
    [{numtests, 42}].

prop_always_true() ->
    ?FORALL(B, boolean(), is_boolean(B)).
