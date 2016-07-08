defmodule Parameters do
  @moduledoc """
    Também podemos passar funções, inclusive anônimas, e módulos como parâmetro
  """

  def funcao_como_parametro(fun) do
    fun.()
  end

  def modulo_como_parametro(module) do
    #passando o módulo String como parâmetro
    module.reverse "minicurso elixir"
  end

end
