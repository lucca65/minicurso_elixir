defmodule Functions do

  @doc """
   TODO

   Declarações normais
   def
   defp

   Declarações anônimas
   fn() -> ... end
   &(...)
  """

  def hello do
    IO.puts "hello"
  end

  def syntactic_sugar_hello(), do: IO.puts "hello"

  def default_value_hello(hello \\ "hello") do
    IO.puts hello
  end

  def default_value_syntactic_sugar_hello(hello \\ "hello"), do: IO.puts hello


end
