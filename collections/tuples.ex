defmodule Tuples do

  @doc """
    Diferente da List, uma Tuple é alocada continuamente na memória, ou seja,
    acessá-la por index ou recuperar seu tamanho são operações rápidas. Entretanto,
    nos casos de inclusão ou exclusão de elementos são operações custosas pois
    requer uma cópia de toda a Tuple na memória.

    Tuples são comumente usadas como Keywords.
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
     List.foldr(list, 0 ,fn(x, _) -> IO.puts(x) end)
  end

end
