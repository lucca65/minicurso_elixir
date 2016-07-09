defmodule WordFreq.ParserTest do
  use ExUnit.Case

  setup do
    lorem = """
    empty
    empty empty Empty
    not not

    not

    not not not
    """
    {:ok, lorem: lorem}
  end

  test "transforms text in list and filters", %{lorem: lorem} do
    assert WordFreq.Parser.to_list(lorem) == ["empty", "empty", "empty", "empty", "not", "not", "not", "not",
                                              "not", "not"]
  end

  test "transforms it correctly", %{lorem: lorem} do
    word_list = WordFreq.Parser.to_list(lorem)

    tuples = word_list |> WordFreq.Parser.group |> WordFreq.Parser.transform
    assert tuples == [{"not", 6}, {"empty", 4}]
  end
end
