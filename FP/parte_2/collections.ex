defmodule Collections do
  @moduledoc """
    Tuple, List, Map e Dict são estruturas que agrupam valores e/ou outras estruturas.

    Declaração:
      Tipo    |   Inicialização   |     Inicialização com valores
      List    |       []          |  [1,2,3],  ['a', 'b', 'c'], [1,[2,3]]
      Tuple   |       {}          |  {1,2,3},  {'a', 'b', 'c'}, {1,{2,3}}
      Map     |      %{}          |  %{x: 1.5, y: 3.3}, %{a: [1,2], b: {3,4}}
      Dict    |     [{}]          |  [{:a, "A"}], [{:a, [1,2]}, {:b, {3,4}}]

    Map && Dict
      Dict ou Dicionário são listas no formato [chave: valor] ou [{:chave, valor}].
      A principal característica de um Dict é a repetição de elementos com mesma
      chave. Exemplo

     ```elixir
     my_dict = [nome: "Leo", nome: "Joao"]
     [nome: "Leo", nome: "Joao"]
     ```

      É possível acessar os valores de um Dict informando o atom que representa
      a chave. Exemplo

      ```elixir
      my_dict[:nome]
      "Leo"
      ```

      Nota:

      Map ou Mapa são representados com %{chave: valor}, %{:chave => valor} ou
      %{"chave" => valor}. Diferente dos Dicts, o Map não permite chaves iguais.

      ```elixir
      my_map = %{nome: "Leo", nome: "Joao"}
      %{nome: "Joao"}
      ```

      Assim como os Dicts, podemos acessar o valor informando a chave

      ```elixir
      my_map[:nome]
      "Joao"
      ```
  """

 def tuple_example do
   tuple =  {33.21, 99.19, "ABC"}
   IO.inspect tuple
   IO.inspect "acessando index 1: #{elem tuple, 1}"
 end

 def list_example do
   list =  [33.21, 77.72]
   head = hd list
   [tail] = tl list

   IO.inspect list
   IO.inspect "head: #{head} tail: #{tail}"
 end

 def map_example do
   map = %{dia: 23, mes: 9, ano: 2015}
   IO.inspect map
   IO.inspect ":dia == #{map[:dia]}"
   IO.inspect ":mes == #{map[:mes]}"
   IO.inspect ":ano == #{map[:ano]}"
 end

 def dict_example do
   dict = [{:month, "mês"}, {:year, "ano"}]
   IO.inspect dict
   IO.inspect ":year == #{dict[:year]}"
 end

end
