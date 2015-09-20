defmodule Comprehensions do

  @doc """
    TODO
  """

def simple_for do
  IO.puts "Do 1 ao 5"
  for n <- 1..5, do: IO.puts n

  IO.puts "Para cada elemento de 1 a 5 multiplique por 2"
  for n <- 1..5, do: IO.puts n * 2

  IO.puts "Para cada elemento de 1 a 5, que for par, multiplique por 3"
  for n <- 1..5, rem(n, 2) == 0, do: IO.puts n * 3

  IO.puts "Multiplique cada elemento de 1 a 5 por cada elemento de 0 a 1"
  for n <- 1..5, y <- 0..1, do: IO.puts n * y
end

def for_with_pattermatching do
  values = [sim: 1, nao: 2, sim: 3, nao: 4]
  for {:sim, n} <- values, do: n * n
end

end
