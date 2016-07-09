defmodule WordFreq do
  @moduledoc """
   Objetive is to read an list of words,
   and tell the number of top 10 most used words,nd
   and the number of times each were used


   ## Steps

   1 - Get text from file
   2 - Split string into an array
   3 - Group repetead words by repetition
   4 - Map group to a tuple: `{word, repetions}`
   5 - Capture top ten
   """

  use Application

  def start(_type, _args) do
    WordFreq.Parser.work |> print_words
    status = Supervisor.start_link([], [strategy: :one_for_one, name: WordFreq.Supervisor])
  end

  def print_words(words) do
    words
    |> Enum.map(fn {word, frequency} ->
      IO.puts "Word: #{word}, usages: #{frequency}"
    end)
  end
end
