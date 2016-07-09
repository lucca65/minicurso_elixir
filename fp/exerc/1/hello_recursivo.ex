defmodule HelloRecursivo do
  @moduledoc """
    Utilizando recursão, crie uma função que recebe um número e printa no
    console "hello world" n vezes.

    Exemplo:
      entrada: 3
      saída:
        hello world
        hello world
        hello world
  """
  # Solução
  def print_hello_n_times(0), do: :ok
  def print_hello_n_times(n) do
    IO.puts("Hello World")
    print_hello_n_times(n-1)
  end
end
