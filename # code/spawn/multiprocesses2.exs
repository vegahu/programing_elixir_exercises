defmodule Multiprocesses2 do

@moduledoc """
“Write a program that spawns two processes and then passes each a unique token (for example, “fred” and “betty”). Have them send the tokens back.

Is the order in which the replies are received deterministic in theory? In practice?

If either answer is no, how could you make it so?”

Excerpt From: Dave Thomas. “Programming Elixir.” iBooks.
"""

  def callthem do
    receive do
      {sender, name} -> send sender, {:ok, name}
    end
  end
end

  pid1 = spawn(Multiprocesses2, :callthem, [])
  pid2 = spawn(Multiprocesses2, :callthem, [])

  send pid1, {self, "fred"}
  receive do
    {:ok, name} -> IO.puts name
  end
  send pid2, {self, "betty"}
  receive do
    {:ok, name} -> IO.puts name
  end
