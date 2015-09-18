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

end
