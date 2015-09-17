defmodule Ex0 do
  @doc """

  Crie uma função que dado um número retorne:
   -> "positivo" caso positivo
   -> "negativo" caso negativo
   -> "zero" caso 0

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
