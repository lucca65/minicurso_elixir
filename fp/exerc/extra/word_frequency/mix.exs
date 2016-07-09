defmodule WordFreq.Mixfile do
  use Mix.Project

  def project do
    [app: :word_frequency,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger], mod: {WordFreq, []}]
  end

  defp deps do
    []
  end
end
