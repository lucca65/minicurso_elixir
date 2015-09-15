defmodule Lists do
  import Integer

  @doc """
    Listas são definidas com: []
    Exemplos de declaração: [1,2,3], ["Teste"], ['e','l','i','x','i','r']

    No Elixir, listas podem armazenar qualquer valor, independente do tipo.
    Exemplo: [1, 2.0, "a", [1,"a"]].
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
