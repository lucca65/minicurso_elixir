defmodule Lazy do
  def run_eager do
    odd? = &(rem(&1, 2) != 0)

    10..1_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?)
    |> Enum.map(fn (n) ->
      IO.puts "Valor eager: #{n}"
      n # try to comment this line to see when the error pops
    end) |> Enum.sum
  end

  def run_lazy do
    odd? = &(rem(&1, 2) != 0)

    10..1_000 |> Stream.map(&(&1 *3))
    |> Stream.map(fn (n) ->
      IO.puts "Valor atual: #{n}"
      n # try to comment this line to see when the error pops
    end) |> Stream.filter(odd?) |> Enum.sum
  end
end
