defmodule Variables do

  @doc """
    TODO
    contexto estático

    atom

    rebound
  """
  def variables do
    x = 1          # integer
    x = 0x1F       # integer
    x = 1.0        # float
    x = true       # boolean
    x = :atom      # atom / symbol
    x = "elixir"   # string
    x = [1, 2, 3]  # list
    x = {1, 2, 3}  # tuple
  end
end
