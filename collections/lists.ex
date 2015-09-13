defmodule Lists do
  import Integer

  @doc """
    Uma List é alocada na memória como uma lista ligada, ou seja, incluir ou
    apagar elementos são operações rápidas. Entretanto, recuperar um elemento do
    final da lista ou descobrir seu tamanho são operações custosas pois é necessário
    atravessar cada elemento até o alvo.

    O módulo List fornece algoritmos para manipulação de listas.

    #1 -> foldl reduz a lista da esquerda para direita, precisa de um acumulator
    #2 -> foldr reduz a lista da direita para esquerda, precisa de um acumulator

    Enum é um módulo que fornece diversos algoritmos para trabalhar com
    estruturas que seguem o protocolo 'Enumerables'

                                         |-> função anônima que será executada
                                         |   para cada elemento da lista
    #3 - Enum.filter(lista_de_entrada, fn(elemento) -> condição end)

                              |-> valor inicial do acumulador
                              |           |-> função anônima que recebe cada
                              |           |   elemento da lista e o valor do
                              |           |    acumulador
    #4 - List.foldl(entrada, acumulador ,fn(elemento, acumulador) -> operação end)
    #4 - Enum.reduce(entrada, acumulador, fn(elemento, acumulador) -> operação end)
  """

  def sum_odd(list) do
    Enum.filter(list, fn(x) -> is_number(x) and Integer.is_odd(x) end)
    |> sum_integers_from_list
  end

  def sum_even(list) do
    Enum.filter(list, fn(x) -> is_number(x) and Integer.is_even(x) end)
    |> sum_integers_from_list
  end

  def sum_all(list) do
    Enum.filter(list, fn(x) -> is_number(x) end)
    |> sum_integers_from_list
  end

  defp sum_integers_from_list(list), do: List.foldl(list, 0 ,fn(x, acc) -> x + acc end)

end
