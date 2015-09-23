defmodule Shouter do
  @doc """
  Just an short cut for spawn this module's loop function
  in a pid (start return the pid)
  """
  def start do
    spawn(__MODULE__, :loop, [])
  end

  @doc """
  Again just an shortcut to sending messages.
  The message itself is an tuple sending and the sender pid and a msg
  """
  def send_message(to_pid, from_pid, msg) do
    send(to_pid, {from_pid, msg})
  end

  @doc """
  This is our way to have a 'mailbox'.
  We will be waiting for a message, after it is received,
  it will be printed, and the last statement makes sure we will be able to receive
  more messages on the future
  """
  def loop do
    receive do
      {sender_pid, msg} ->
        IO.puts "#{inspect sender_pid} disse: #{msg}"
    end
    loop
  end
end
