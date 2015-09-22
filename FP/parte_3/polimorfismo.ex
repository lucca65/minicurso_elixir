defmodule Carro do
   def tipo(), do: "Carro :: 250km/h"
end

defmodule Moto do
   def tipo(), do: "Moto :: 180km/h"
end

defmodule Aviao do
   def tipo(), do: "Aviao :: 800km/h"
end

defmodule TestaVeiculo do
  def ver_tipo(veiculo), do: veiculo.tipo
end
