defmodule Top10Palavras do

  @doc """
  Parte 1:
    Dado o conteúdo do arquivo vish.txt
    -> 1 pegar todas as palavras como uma lista
    -> 2 transformar em lowercase
    -> 3 agrupar todas as palavras repetidas
    -> 4 criar pares de palavras com sua quantidade de aparições
    -> 5 capturar as dez maiores

    Dica: Faça quebrando o problema em várias funções.
  """

  #solucao 1
  def top_dez do
    get_top_10_words File.read("vish.txt")
  end

  def get_top_10_words({:error, reason}), do: IO.puts reason
  def get_top_10_words({:ok, text}) do
    text
    |> lowercase
    |> clean_text
    |> to_list
    |> join_same_words
    |> generate_pairs
    # |> top_10
  end

  def clean_text(text) do
    text
    |> String.replace "\n", " "
    |> String.replace ",", ""
    |> String.replace ".", ""
  end

  def lowercase(text) do
    text
    |> String.downcase
  end

  def to_list(text) do
    text
    |> String.split " "
  end

  def join_same_words(list) do
    list
    |> Enum.sort
  end

  def generate_pairs(list) do
    occurrences = Enum.uniq(list)
    |> Enum.map &(Enum.count(list, fn(x) -> &1 == x end))

    Enum.zip Enum.uniq(list), occurrences
  end

end
