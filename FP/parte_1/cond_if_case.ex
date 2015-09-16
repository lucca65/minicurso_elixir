defmodule CondIfCase do

  @doc """
    TODO
  """

  def case_example do
    case "String value" do
      "String Value" -> false
      "STRING VALUE" -> false
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

  def cond_example(float) do
    cond do
      float >= 0 or float <= 149.0 -> IO.puts "Taxa = R$#{float * 0.03}"
      float >= 150.0 or float <= 299.0 ->  IO.puts "Taxa = R$#{ float * 0.06}"
      float >= 300.0 or float >= 500.0 ->  IO.puts "Taxa = R$#{ float * 0.15}"
      true ->  IO.puts "Taxa = R$#{ float * 0.35}"
    end
  end

end
