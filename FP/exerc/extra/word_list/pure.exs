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

  @doc """
  read file and make it downcase
  """
  def read_file do
    {:ok, text} = File.read("vish.txt")
    text |> String.downcase
  end

  @doc """
  this splits the words and make the list follow
  alphabetical order
  """
  def as_ordered_list(text) do
    text |> String.split |> Enum.sort
  end

  @doc """
  Here we create groups for words that repeat
  """
  def as_group_list(word_list) do
    Enum.group_by(word_list, &(&1))
  end

  @doc """
  this generates an tuple with our word, and the number of ocurrencies
  """
  def to_occurency_tuple(word_list) do
    word_list |> Map.to_list |> Enum.map(fn (x) ->
      {word, oc} = x
      {word, length(oc)}
    end)
  end

  @doc """
  This sort the tuples by ocurrency
  """
  def as_ordered_tuples(tuples) do
    tuples |> Enum.sort_by(&(elem(&1, 1))) |> Enum.reverse
  end

  @doc """
  Duh
  """
  def top10(tuples) do
    tuples |> Enum.take(10)
  end

  def pretty_print(tuples) do
    tuples |> Enum.map(fn(x) ->
      IO.puts "#{elem(x, 1)}\t#{elem(x, 0)}"
    end)
  end

  def run_it do
    a = read_file
    |> as_ordered_list
    |> as_group_list
    |> to_occurency_tuple
    |> as_ordered_tuples
    |> top10
    |> pretty_print
  end
end
