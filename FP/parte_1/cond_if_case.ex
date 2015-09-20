defmodule CondIfCase do

  @doc """
    Estruturas Seletivas e Condição

    -> case
    -> cond
    -> if else
    -> unless else

  """

  def case_example do
    case "String value" do
      "String Value" -> false
      x when is_number(x) -> false
                   1 -> false
      :string_value  -> false
      "String value" -> true
        _ -> IO.puts "err.."
    end
  end

  def if_example(number) do
    if number > 0 do
      IO.puts "positivo!!"
    else
      IO.puts "negativo!!"
    end
  end

  def unless_example(struct) do
    unless is_list(struct) do
      IO.puts "não é lista!"
    else
      List.foldr(struct, 0, &(&1 + &2))
    end
  end

  def cond_example(value) do
    cond do
      value >= 0 or value <= 149.0 -> IO.puts "Taxa = R$#{value * 0.03}"
      value >= 150.0 or value <= 299.0 ->  IO.puts "Taxa = R$#{ value * 0.06}"
      value >= 300.0 or value >= 500.0 ->  IO.puts "Taxa = R$#{ value * 0.15}"
      true ->  IO.puts "Taxa = R$#{ value * 0.35}"
    end
  end

end
