defmodule PatternMatching do

  @doc """
    Pattern Matching, em programação funcional, é uma forma de obter uma, ou
    várias, variáveis que estão dentro de uma estrutura complexa (list, tuple,
    map, dict...) através da definição de um pattern(modelo).
  """

  def list_example do
    lista = [1,2,3,4,5]
    IO.inspect lista

    [head | tail] = lista
    IO.puts "Head:"
    IO.inspect head
    IO.puts "Tail:"
    IO.inspect tail

    [a,b,c,_,d] = lista
    IO.puts a + b
    IO.puts c + d
  end

  def tuple_example do
    tuple = {:ok, {4.25, 4.50, 4.75}, [1,2,3,4,5] }
    IO.inspect tuple

    {atom, _, _} = tuple
    IO.puts "atom: #{atom}"

    {_, {a, b, c}, _} = tuple
    IO.puts "valores: #{a} - #{b} - #{c}"
  end

  def map_example do
    map = %{name: "Charlinho", age: 20}
    IO.inspect map

    %{name: x, age: _} = map
    IO.puts x

    %{name: _, age: y} = map
    IO.puts y

    map_nomes = %{nomes: ["Charlinho", "Paula", "Roberto", "Julia"]}
    IO.inspect map_nomes
    %{nomes: [primeiro|[primeiro_do_tail|_]]} = map_nomes
    IO.puts primeiro
    IO.puts primeiro_do_tail
  end

  def tuple_case_example do
    tuple = {23, 9, 2015}
    case tuple do
      {_x, _y, 2013} -> IO.puts "wont match!"
      {_, _, 2014} -> IO.puts "wont match!"
      {x, y, 2015} -> IO.puts "Day: #{x}, Month: #{y}"
      _ -> IO.puts "catch all"
    end
  end

  def in_function(nil), do: nil #quando o valor é nil
  def in_function([10|tail]), do: tail #quando é uma lista e o primeiro elemento é 10
  def in_function([x|y]), do: x #retorna o primeiro elemento da lista
  def in_function(<< "At start",  rest::binary >>) do
    "Without start: #{rest}"
  end
  def in_function(_), do: "all the rest" # nenhuma das outras opções

  def run_it do
    in_function(nil) |> IO.inspect
    in_function([10, 9, 8]) |> IO.inspect
    in_function([1,2,3,4,5,6]) |> IO.puts
    in_function("At start of given string") |> IO.puts
    in_function(%{a: "map"}) |> IO.puts
  end
end
