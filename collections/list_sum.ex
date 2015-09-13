defmodule ListSum do
  import Integer

  @doc """
    Enum é um módulo que fornece diversos algoritmos para trabalhar com
    estruturas que seguem o protocolo 'Enumerables'

                                         |-> função anônima que será executada
                                         |   para cada elemento da lista
    #1 - Enum.filter(lista_de_entrada, fn(elemento) -> condição end)

                              |-> valor inicial do acumulador
                              |           |-> função anônima que recebe cada
                              |           |   elemento da lista e o valor do
                              |           |    acumulador
    #2 - Enum.reduce(entrada, acumulador, fn(elemento, acumulador) -> operação end)
  """

  def sum_odd(list) do
    Enum.filter(list, fn(x) -> Integer.is_odd(x) end)
    |> sum_integers_from_list
  end

  def sum_even(list) do
    Enum.filter(list, fn(x) -> Integer.is_even(x) end)
    |> sum_integers_from_list
  end

  def sum_all(list) do
    Enum.filter(list, fn(x) -> is_number(x) end)
    |> sum_integers_from_list
  end

  defp sum_integers_from_list(list), do: Enum.reduce(list, 0, fn(x, acc) -> x + acc end)

end
