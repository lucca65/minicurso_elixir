defmodule PatternMatching do

  @doc """
    TODO
  """

  def list_example do
    lista = String.split "E l I x I r", " "
    IO.puts "lista = #{lista}"

    [primeiro | resto] = lista

    IO.puts "Head: #{primeiro}"
    IO.puts "Tail: #{resto}"

    [primeiro_do_resto | _] = resto

    IO.puts "Tail_Head: #{primeiro_do_resto}"
  end

  def tuple_example do
    tuple = {:ok, {4.25, 4.50, 4.75}, [1,2,3,4,5] }
    IO.inspect tuple

    {atom, _, _} = tuple
    IO.puts "atom: #{atom}"

    {_, {a, b, c}, _} = tuple
    IO.puts "valores: #{a} - #{b} - #{c}"
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

  def in_function(nil), do: nil #when value is nil
  def in_function([10|tail]), do: tail # when its a list, and the first element is the number 10
  def in_function([x|y]), do: y # when calling first element x, and the rest y
  def in_function(<< "At start",  rest::binary >>) do
    "Without start: #{rest}"
  end
  def in_function(_), do: "all the rest"

  def run_it do
    in_function(nil) |> IO.inspect
    in_function([10, 9, 8]) |> IO.inspect
    in_function([1,2,3,4,5,6]) |> IO.puts
    in_function("At start of given string") |> IO.puts
    in_function(%{a: "map"}) |> IO.puts
  end
end
