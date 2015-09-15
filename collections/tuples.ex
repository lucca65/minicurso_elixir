defmodule Tuples do

  @doc """
    Uma Tuple é construída com {}
    Exemplos: {1,2,3}, {"a", "b", "c"}

    Assim como a List, uma Tuple também pode armazenar qualquer valor.
    Exemplo: {1, 2, 3, {10, "teste"}, [1, 2, 3], 'a'}

    Um uso bastante útil das Tuples está nos guards das funções. Combinadas
    com um atom, {:ok, alguma_coisa}, produzimos o mesmo comportamento de um
    polimorfismo na POO
  """

  def do_this(tuple \\ {:any, []}) do
    tuple
    |> do_something
  end

  defp do_something({_, []}), do: :ok

  defp do_something({:sum, list}) do
    List.foldl(list, 0 ,fn(x, acc) -> x + acc end)
  end

  defp do_something({:multiply, list}) do
    List.foldl(list, 1 ,fn(x, acc) -> x * acc end)
  end

  defp do_something({:reverse, list}) do
     Enum.reverse list
  end

end
