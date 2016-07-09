defmodule Veiculo do
   use Behaviour
   defcallback tipo() :: any
end

defmodule Carro do
   @behaviour Veiculo
   def tipo(), do: "Carro :: 250km/h"
end

defmodule Moto do
   @behaviour Veiculo
   def tipo(), do: "Moto :: 180km/h"
end

defmodule Aviao do
   @behaviour Veiculo
   def tipo(), do: "Aviao :: 800km/h"
end

defmodule TestaVeiculo do
  def ver_tipo(veiculo), do: veiculo.tipo
end
