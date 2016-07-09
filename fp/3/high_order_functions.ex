defmodule HighOrder do
  @moduledoc """
    High Order Functions são funções que podem receber funções como parâmetro
  """

  defp list do
    list = [1,2,3,4,5]
    IO.puts "Somar todos os elementos"
    IO.inspect list
    List.foldl(list, 0 ,fn(x, acc) -> x + acc end) |> IO.puts

    list = [1,2,3,4,5]
    IO.puts "Transformar elemento por index"
    IO.inspect list
    List.update_at(list, 3, &(&1 + 100)) |> IO.puts
  end

  defp enum do
    IO.puts "Agrupar por tamanho da palavra"
    IO.inspect Enum.group_by(~w{elixir haskell erlang common_lisp}, &String.length/1)

    list = [1,2,3,4,5]
    IO.puts "Somar todos os elementos"
    IO.inspect list
    Enum.reduce([1, 2, 3], 0, fn(x, acc) -> x + acc end) |> IO.puts

    list = [1,2,3,4,5]
    IO.puts "Each"
    IO.inspect list
    Enum.each(list, fn(x) -> IO.puts x end)

    list = [1,2,3,4,5]
    IO.puts "Filtrando a lista"
    IO.inspect list
    Enum.filter(list, fn(x) -> rem(x, 2) == 0 end)
  end

end
