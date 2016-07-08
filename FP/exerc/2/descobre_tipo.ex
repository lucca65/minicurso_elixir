defmodule DescobreTipo do
  @moduledoc """
  Crie uma função que recebe um valor e descobre se é integer, float ou não é
  um número.

  Exemplo:
    entrada: 1
    saída: é integer

    entrada: "abc"
    saída: não é um número

  Esse problema deve ser resolvido usando Guards
  """
  def solucao(val) when is_float(val), do: IO.puts "é float"
  def solucao(val) when is_integer(val), do: IO.puts "é integer"
  def solucao(_), do: IO.puts "não é number"

end
