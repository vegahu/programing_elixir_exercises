waazoooo:spawn hugo$ elixir -r chain.exs -e "Chain.run(10)"
{14320, "Result is 10"}
waazoooo:spawn hugo$ elixir -r chain.exs -e "Chain.run(100)"
{16304, "Result is 100"}
waazoooo:spawn hugo$ elixir -r chain.exs -e "Chain.run(1000)"
{27583, "Result is 1000"}
waazoooo:spawn hugo$ elixir -r chain.exs -e "Chain.run(10000)"
{223985, "Result is 10000"}
waazoooo:spawn hugo$ elixir --erl "+P 1000000" -r chain.exs -e "Chain.run(400000)"
{12278264, "Result is 400000"}
waazoooo:spawn hugo$ elixir --erl "+P 1000000" -r chain.exs -e "Chain.run(1000000)"
{32701480, "Result is 1000000"}
