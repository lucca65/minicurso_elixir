defmodule Ex2 do

  @doc """
    Dado uma lista de inteiros e um número, retorne uma lista que repita
    n vezes cada elemento da lista de entrada

    Exemplo:
      entrada -> [1,2,3], 2
      Saída -> [1,1,2,2,3,3]

    Dica:
      Stream.cycle([n]) -> cria um ciclo de repetição com os valores recebidos.
      Stream.iterate(valor_inicial, &(&1)) -> 

  """

  def solution(list, n) do

  end

  #Solução
  def solution(list, n) do
    for arr <- x, n <- [y], do: Stream.cycle([arr]) |> Enum.take(n)
    |> List.flatten
  end

end
