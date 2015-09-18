defmodule Comprehensions do

  @doc """
    TODO
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


  @doc """
    TODO
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
