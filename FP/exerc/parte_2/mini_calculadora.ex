defmodule MiniCalculadora do

  @doc """
  Dado uma tupla de entrada do tipo: {atom, valor1, valor1}. No qual:
  atom = :soma || :multiplica || :subtrai || :divide
  valor1 = número
  valor2 = número

  Crie uma estrutura que realize a operação usando qualquer aplicação  do
  PatternMatching

  Exemplo:
    entrada: {:soma, 1, 1}
    saída: 2

    entrada: {:multiplica, 2, 2}
    saída: 4

    entrada: {:to_list, 33, 10}
    saída: 23

    entrada: {nil, 1, 7}
    saída: 'invalid'
  """

  #solução
  def solucao(tupla) do
    case tupla do
      {:soma, val1, val2} -> val1 + val2
      {:multiplica, val1, val2} -> val1 * val2
      {:subtrai, val1, val2} -> val1 - val2
      {:divide, val1, val2} -> val1 / val2
      _ -> IO.puts "invalid"
    end
  end

end
