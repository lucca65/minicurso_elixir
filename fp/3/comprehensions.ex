defmodule Comprehensions do

  @doc """
    Comprehensions é meramente uma definição simplificada (syntactic sugar) para
    realizar operações de iteração, filtro e mapping em listas.
  """

  def simple_for do
    IO.puts "Escreva todas as letras do alfabeto"
    IO.inspect for letra <- ?a..?z, do: letra

    IO.puts "Do 1 ao 5"
    IO.inspect for n <- 1..5, do: n

    IO.puts "Para cada elemento de 1 a 5 multiplique por 2"
    IO.inspect for n <- 1..5, do: n * 2

    IO.puts "Para cada elemento de 1 a 5, que for par, multiplique por 3"
    IO.inspect for n <- 1..5, rem(n, 2) == 0, do: n * 3

    IO.puts "Multiplique cada elemento de 1 a 5 por cada elemento de 0 a 1"
    IO.inspect for n <- 1..5, y <- 0..1, do: n * y

    :ok
  end

  def other_examples do
    IO.puts "Multiplique por 3 cada valor da chave :sim"
    values = [sim: 1, nao: 2, sim: 3, nao: 4]
    IO.inspect for {:sim, n} <- values, do: n * 3

    IO.puts "Dado uma lista, multiplique todos os elementos pelo primeiro elemento"
    list = [2,1,2,3]
    IO.inspect for n <- list, y <- [hd(list)] , do: n * y

    IO.puts "Transformando dados de um mapa"
    map = %{:a => 1, :b => 2, :c => 3 }
    IO.inspect for {key, val} <- map, into: %{}, do: {key, val * val}

    :ok
  end
end
