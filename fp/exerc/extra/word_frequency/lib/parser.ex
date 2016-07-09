defmodule WordFreq.Parser do
  def work do
    read_file
    |> to_list
    |> group
    |> transform
    |> Enum.take(10)
  end

  @doc """
  Read the word file and return a string
  """
  def read_file do
    {:ok, str} = File.read("words.txt")
    str
  end

  @doc """
  Converts the text to a list of words, making sure they are all downcase
  """
  def to_list(text) do
    text
    |> String.replace("\n", " ") # Remove line breaks
    |> String.split(" ") # Split on every blank space
    |> Enum.filter(&(&1 != "")) # Remove empty strings
    |> Enum.map(&String.downcase/1) # Transforms to downcase
  end

  @doc """
  Just a group_by
  """
  def group(word_list) do
    Enum.group_by(word_list, &(&1))
  end

  @doc """
  Transforms the structure into something more readable
  """
  def transform(words) do
    words
    |> Map.to_list # transforms %{"word" => ["word", "word"]} to [{"word", ["word", "word"]}]
    |> Enum.map(fn {key, values} -> {key, length(values)} end) # Create new tuple for each element with the repetition count
    |> Enum.sort_by(fn {_,v} -> v end, &>=/2) # sort by repetition. `>=/2` is a function reference for sorting ASC
  end
end
