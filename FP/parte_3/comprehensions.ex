defmodule Comprehensions do

  @doc """
    TODO
  """

def simple_for do
  IO.puts "Escreva todas as letras do alfabeto"
  for letra <- ?a..?z, do: letra

  IO.puts "Do 1 ao 5"
  for n <- 1..5, do: IO.puts n

  IO.puts "Para cada elemento de 1 a 5 multiplique por 2"
  for n <- 1..5, do: IO.puts n * 2

  IO.puts "Para cada elemento de 1 a 5, que for par, multiplique por 3"
  for n <- 1..5, rem(n, 2) == 0, do: IO.puts n * 3

  IO.puts "Multiplique cada elemento de 1 a 5 por cada elemento de 0 a 1"
  for n <- 1..5, y <- 0..1, do: IO.puts n * y
end

def other_examples do
  IO.puts "Multiplique por 3 cada valor da chave :sim"
  values = [sim: 1, nao: 2, sim: 3, nao: 4]
  for {:sim, n} <- values, do: IO.puts n * 3

  IO.puts "Dado uma lista, multiplique todos os elementos pelo primeiro elemento"
  list = [2,1,2,3]
  for n <- list, y <- [hd(list)] , do: IO.puts n * y
end

end
