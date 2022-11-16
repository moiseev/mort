Max's Opinionated Rebar3 Templates
=====

rebar3 supports templates in a local folder or supplied by a plugin. Plugin is
simpler from the distribution standpoint.

Build
-----

You don't need to build it. There is nothing to build.

Use
---

Add the plugin to your rebar config:

    {plugins, [
        {mort, {git, "https://github.com/moiseev/mort.git"}}
    ]}.

Having done that, the output of `rebar3 new` should include these templates.
