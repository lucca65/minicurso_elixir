defmodule Fibonacci do
  @moduledoc """
  Construir um algoritmo para imprimir a série de FIBONACCI. A série de FIBONACCI
  é formada pela sequência:

  0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55...

  Essa sequência tem uma lei de formação simples: cada elemento, a partir do
  terceiro, é obtido somando-se os dois anteriores.
  Veja: 1+1=2, 2+1=3, 3+2=5, 3+5=8, 5+8=13...
  """
  #solucao
  def fibonacci(num) when num <= 2, do: 1
  def fibonacci(num) do
    fibonacci(num-1) + fibonacci(num-2);
  end
  
end
