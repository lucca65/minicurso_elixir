defmodule Worker do
  def start do
    pid = spawn(__MODULE__, :loop, [])
    send(server_pid, {:request, pid})
    pid
  end

  def server_pid do
    :global.whereis_name("server")
  end

  def loop do
    receive do
      number ->
        if result = is_prime?(number, 5) do
          IO.puts "Found a prime!!! #{number}"
        end
        send(server_pid, {result, number})
        send(server_pid, {:request, self()})
        loop
    end
  end

  def is_prime?(_, 0), do: true
  def is_prime?(p, n) do
    if fermat(p) do
      is_prime?(p, n-1)
    else
      false
    end
  end

  def fermat(1), do: true
  def fermat(p) do
    r = :random.uniform(p-1)
    t = mpow(r, p-1, p)

    if t == 1 do
      true
    else
      false
    end
  end

  def mpow(n, 1, _), do: n
  def mpow(n, k, m), do: mpow(rem(k,2), n, k, m)

  def mpow(0, m, k, m) do
    x = mpow(m, div(k, 2), m)
    rem(x*x, m)
  end

  def mpow(_, n, k, m) do
    x = mpow(n, k-1, m)
    rem(x*n, m)
  end
end
