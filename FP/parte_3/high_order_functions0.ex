defmodule HighOrder do

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
