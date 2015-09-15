defmodule HelloWorld do

  @doc """
    Todas as linguagens funcionais, devido ao contexto imutável, não possuem
    iteração como for, while, do while e foreach. Portanto é necessário usar
    recursão.

    Quando usamos recursão, precisamos de um gatilho para poder pará-la.
    Nesse caso, utilizamos o guard na declaração da função ou no parâmetro que
    desejamos usar como gatilho. Exemplo: linhas 17 e 18
  """

  def print_hello do
    IO.puts("Hello World")
  end

  def print_hello_n_times(0), do: :ok
  def print_hello_n_times(n) do
    IO.puts("Hello World")
    print_hello_n_times(n-1)
  end

end
