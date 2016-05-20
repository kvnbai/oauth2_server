defmodule Oauth2Server.Mixfile do
  use Mix.Project

  def project do
    [app: :oauth2_server,
     version: "0.0.2",
     elixir: "~> 1.2",
     description: "An elixir Oauth 2.0 server",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: escript,
     package: package,
     deps: deps]
  end

  def escript do
    [main_module: Oauth2Server]
  end

  def application do
    [applications: [:logger, :ecto]]
  end

  defp deps do
    [
      {:ecto, "~> 1.1.2"},
      {:poison, "~> 1.5 or ~> 2.0"},
    ]
  end

  defp package do
    [
     maintainers: ["Kevin Baisas"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/kevinbaisas/oauth2_server"},
     files: ~w(lib mix.exs README.md)
   ]
  end
end