defmodule PositivoNegativo do
  @moduledoc """
  Crie uma função que dado um número retorne:
   -> "positivo" caso positivo
   -> "negativo" caso negativo
   -> "zero" caso 0
  """
  def solucao(num) do
    cond do
      num > 0 -> IO.puts "positivo"
      num < 0 -> IO.puts "negativo"
      _ -> IO.puts "zero"
    end
  end
end
