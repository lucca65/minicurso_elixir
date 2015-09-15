defmodule Ex3 do
  @doc """
  Dado uma lista de inteiros e um número, retorne uma lista que repita
  n vezes cada elemento da lista de entrada

  Exemplo:
  entrada -> [1,2,3], 2
  Saída -> [1,1,2,2,3,3]

  Dica:
  Stream.cycle([n]) -> cria um ciclo de repetição com os valores recebidos.

  Nota:
  Uma solução possível para esse problema é usar o `for`. Apesar de não
  funcionar como um for tradicional, também serve para interagir com listas

  Exemplo:
  ```
  iex(1)> for x <- 1..3, do: n * n
  [1, 4, 9]
  ```
  """

  def your_solution(list, n) do

  end

  # Solução
  def our_solution(list, n) do
    # Uma função que cria uma lista de elementos repetidos
    repeat = fn(elem, n) ->
      for _ <- 1..n, do: elem
    end

    # interar cada elemento da lista com nossa função
    list_of_lists = for elem <- list, do: repeat.(elem, n)

    List.flatten(list_of_lists)
  end
end
