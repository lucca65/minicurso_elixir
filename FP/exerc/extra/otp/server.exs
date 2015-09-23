defmodule Server do
  def start do
    pid = spawn(__MODULE__, :loop, [1,1]) # spawn this module
    :yes = :global.register_name("server", pid) # register it globally
    pid
  end

  def loop(number, highest_prime) do
    receive do
      {:request, worker_pid} ->
        send(worker_pid, number)
        loop(number + 1, highest_prime)

      {true, candidate_prime} ->
        if candidate_prime > highest_prime do
          IO.puts "New Candidate: #{candidate_prime}"
          loop(number, candidate_prime)
        else
          loop(number, highest_prime)
        end

      {false, _} ->
        loop(number, highest_prime)
    end
  end
end
