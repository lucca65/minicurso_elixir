defmodule Functions do

  @doc """
   Declarações normais
   def -> função visivél fora do módulo
   defp -> função encapsulada

   Declarações anônimas
   fn() -> ... end -> declaração normal
   &(...) -> declaração simplificada
  """

  def hello do
    IO.puts "hello"
  end

  def syntactic_sugar_hello(), do: IO.puts "hello"

  def default_value_hello(hello \\ "hello") do
    IO.puts hello
  end

  def default_value_syntactic_sugar_hello(hello \\ "hello"), do: IO.puts hello

  def anonymous_function do
    # definindo funções anônimas
    anonymous_function = fn -> IO.puts "Hi!" end
    another_anonymous = fn (x) -> IO.puts "Your value: #{x}" end

    # chamando funções anônimas
    anonymous_function.()
    another_anonymous.("WOW")

    # mais exemplos
    long_sum = fn(x, y) -> x + y end
    small_sum = &(&1 + &2)

    small_print = &(IO.puts(&1))
    smaller_print = &IO.puts/2

    long_sum.(10, 5) |> IO.puts
    small_sum.(10, 5) |> IO.puts

    small_print.("Nice!")
  end

  def try_it(function \\ &(IO.puts "Hello!"))
    function.()
  end
end
