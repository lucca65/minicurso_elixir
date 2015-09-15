defmodule Ex1 do

  @doc """
    Dado uma lista de inteiros, escreva no console um elemento por linha usando
    recursão e guard

    Exemplo:
      entrada -> [1,2,3,4,5]
      Saída -> 1
               2
               3
               4
               5

    Dica:
      head(list) ou hd(list) -> retorna o primeiro elemento de uma lista.
      tail(list) ou tl(list) -> retorna toda a lista exceto o primeiro elemento.
  """

  # Solução usando Enum
  def print_one_per_line(list) do
    Enum.each(list, fn(x) -> IO.puts(x) end)
  end

  # Solução usando Recursão
  def print_without_enum([]), do: :ok
  def print_without_enum(list) do
    IO.puts(hd list)
    print_without_enum(tl list)
  end

end
