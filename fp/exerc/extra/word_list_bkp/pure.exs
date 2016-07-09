defmodule WordList do
  @moduledoc """
  Objetive is to read an list of words,
  and tell the number of top 10 most used words,
  and the number of times each were used


  ## Steps

  1 - Get text from file
  2 - Split string into an array
  3 - Group repetead words by repetition
  4 - Map group to a tuple: `{word, repetions}`
  5 - Capture top ten
  """

  def parse_file do
    File.read("words.txt")
  end
end
