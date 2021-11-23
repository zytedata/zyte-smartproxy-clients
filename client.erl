-module(client).
-export([scrape/0]).

scrape() ->
    [Host, Port] = string:split(os:getenv("PROXY"), ":"),
    ok = httpc:set_options([
        {proxy,{{Host,list_to_integer(Port)},[]}}
    ]),

    {ok, {{_, 200, _}, _Headers, Body}} = httpc:request(get, {os:getenv("URL"), []}, [
        {ssl,[{verify,verify_peer}, {cacertfile, "zyte-smartproxy-ca.crt"}]},
        {proxy_auth,{os:getenv("KEY"),""}}
    ], []),

    io:format("~s",[Body]).
