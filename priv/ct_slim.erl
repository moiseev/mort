-module({{name}}_SUITE).

-include_lib("common_test/include/ct.hrl").
-include_lib("stdlib/include/assert.hrl").

-export([
    all/0
]).

% Test cases
-export([
    % This one is here for convenience. Just append your test cases above it.
    always_pass/1
]).

all() -> [
    always_pass
].

% Test cases

always_pass(_Config) ->
    ok.
