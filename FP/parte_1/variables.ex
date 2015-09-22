defmodule Variables do

  @doc """
    Tipos e Declarações

    -> Todas as variaveis são imutáveis.
    -> Variáveis não precisam de tipos.
    -> O tipo é inferido em tempo de execução.
  """
  def types do
    int = 1
    float = 1.0
    boolean = true
    atom = :value
    string = "elixir"
    list = [1, 2, 3]
    tuple = {1, 2, 3}
    function =  fn(x) -> x + x end
    syntactic_sugar_function = &(&1 + &1)
  end
end
