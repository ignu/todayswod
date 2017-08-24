defmodule Wod.Mixfile do
  use Mix.Project

  def project do
    [app: :wod,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: [main_module: Wod],
     deps: deps()]
  end

  def application do
    [applications: [:httpoison], extra_applications: [:httpoison, :logger]]
  end

  defp deps do
    [
      {:httpoison, "~> 0.13"}
    ]
  end
end
