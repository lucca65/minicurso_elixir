defmodule Operators do

  @doc """
    Operadores aritméticos, logicos e outros
  """

  def arithmetic_operators do
    1 + 2 = 3
    3 - 1 = 2
    2 * 2 = 4
    4 / 2 = 2.0
    div(5, 2) = 2
    rem(5, 2) = 1
  end

  def logical_operators do
    1 == 1.0
    1 !== 1.0
    1 === 1
    1 > 0
    1 >= 0
    1 < 2
    1 <= 2
    (true && false) == (true and false)
    (true || false) == (true or false)
    !false == not false
  end

  def other_operators do
    2 |> div(2) = div(2, 2)
    
    x = 1
    try do
      ^x = 2 
    rescue 
      _ -> IO.puts("x cannot be rebinding")
    end
    {^x, y} = {1, 2}
    IO.puts(x)
    IO.puts(y)
  end

end
