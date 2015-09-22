defmodule HighOrder do

  @doc """
    No Elixir, também existem diversos módulos auxiliares para trabalhar
    com as abstrações existentes (list, tuple, map, dict...).
  """

  defp list do
    list = [[1,2], [3,4], [5,6]]
    IO.puts "Achatar lista"
    IO.inspect list
    List.flatten list |> IO.inspect

    list = [1,2,3,4,5]
    IO.puts "Equivalente ao hd()"
    IO.inspect list
    IO.puts List.first list

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
    IO.puts "Pegar de 2 em 2 do 0 ao 10"
    IO.inspect Enum.take_every(0..10, 2)

    list = [10,20,30,40,50]
    IO.puts "Embaralhar"
    IO.inspect list
    IO.inspect Enum.shuffle(list)

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

  defp stream do
     IO.puts "Pegar 6 elementos de 1 a 3"
     stream = Stream.cycle([1,2,3])
     IO.inspect Enum.take(stream, 6)

     IO.puts "Sem repetir elementos"
     list = [1,3,3,3,5,5]
     IO.inspect list
     stream = Stream.uniq(list)
     IO.inspect Enum.to_list stream
  end


end
