defmodule HelloWorld do

  @doc """
    IO é um modulo que fornece funções de leitura e escrita.

                                         |-> função anônima que será executada
                                        |    para cada elemento da lista
    #1 - IO.puts -> Escreve a string passada por parâmetro
    #2 - IO.inspect -> Escreve a estrutura passada por parâmetro

    Todas as linguagens funcionais, devido ao contexto imutável, não possuem
    iteração como for, while, do while e foreach. Portanto é necessário usar
    recursão.

    #3 -> Quando usamos recursão, precisamos de um gatilho para poder pará-la.
    Nesse caso, utilizamos o guard na declaração da função ou no parâmetro que
    desejamos usar como gatilho. Exemplo: linhas 23 e 24
  """

  def print_hello do
    IO.puts("Hello World")
  end

  def print_hello_n_times(0), do: :ok
  def print_hello_n_times(n) do
    IO.puts("Hello World")
    print_hello_n_times(n-1)
  end

  def print_this(x) do
    IO.inspect(x)
  end

end
