defmodule Ex2 do
  @doc """
  GUARDS!

  Crie uma função que dado um número retorne:
   -> true se for positivo
   -> false se for negativo
   -> "zero" se for 0

  """
  def solucao(num) when num > 0 do
    "positivo"
  end

  def solucao(num) when num < 0 do
    "negativo"
  end

  def solucao(num) when num == 0 do
    "zero"
  end

end
