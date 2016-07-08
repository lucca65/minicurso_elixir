defmodule ParImpar do

  @doc """
    Dado uma lista [1,2,3,4,5,6,7,8,9,10] crie uma função que escreva no console
    apenas os pares e outra apenas os ímpares

    Dica:
      rem
      div
  """
  # solution
  def par([_|[]]), do: :ok
  def par([first|list]) do
    if rem(first, 2) == 0 do
      IO.puts first
    end
    only_even list
  end

  def impar([_|[]]), do: :ok
  def impar([first|list]) do
    if rem(first, 2) != 0 do
      IO.puts first
    end
    only_even list
  end
end
