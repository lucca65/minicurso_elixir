defmodule Tabuada do
  @moduledoc """
    Crie uma função que recebe um número e retorna sua tabuada

    Exemplo:
      entrada: 4
      saida:
        2x1 = 2
        2x2 = 4
        2x3 = 6
        2x4 = 8
        2x5 = 10
        2x6 = 12
        2x7 = 14
        2x8 = 16
        2x9 = 18
        2x10 = 20

    Nota: deve usar list comprehensions
          deve escrever uma multiplicação por linha
          não pode quebrar quando receber algo diferente de um número
  """
  #solucao
  def solution(num) do
    for n <- 1..10, y <- [num], do: IO.puts "#{y}x#{n} = #{y*n}"
  end
end
