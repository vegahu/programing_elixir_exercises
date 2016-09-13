defmodule Multiprocesses4 do
@moduledoc """
“Use spawn_link to start a process, and have that process send a message to the parent and then exit immediately. Meanwhile, sleep for 500 ms in the parent, then receive as many messages as are waiting. Trace what you receive. Does it matter that you weren’t waiting for the notification from the child when it exited?”

“Do the same, but have the child raise an exception. What difference do you see in the tracing?”

Excerpt From: Dave Thomas. “Programming Elixir.” iBooks.
Excerpt From: Dave Thomas. “Programming Elixir.” iBooks.


"""

  def mensajea(pid) do
    send pid, {self, "hola"}
    exit(:ala_venga)

  end

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Multiprocesses4, :mensajea, [self])
    :timer.sleep(500)
    recibe_todos

    end

  def recibe_todos do
    receive do
      message -> IO.inspect message
      recibe_todos
    after 100 ->
      IO.puts "no more messages"
    end
  end



  end
