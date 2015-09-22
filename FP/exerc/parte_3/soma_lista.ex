defmodule SomaLista do

  @doc """
    Crie um conjunto de funções que recebem uma lista e retorna:
    -> soma de todos os elementos pares
    -> soma de todos os elementos ímpares
    -> soma de todos os elementos

    Você dever usar funçẽos High Order como List, Enum, Dict, Tuples ou Map

  """
  # solucao
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
