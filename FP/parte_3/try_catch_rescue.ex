defmodule TryCatchRescue do

  @doc """
    TODO
  """
  defmodule Error do
   defexception message: "DEU ERRO"
  end

  def throw_error do
    raise Erro # erro custom
  end

  def throw_other_error do
    raise Erro, message: "OUTRA MSG"
  end

  def catch_error do
    try do
      raise "fail"
    catch
        _ -> what_happened = :rescued
    end
  end

  def after_error do
    # TODO
  end

end
