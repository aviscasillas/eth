defmodule Eth.Mixfile do
  use Mix.Project

  def project do
    [
      app: :eth,
      version: "0.2.2",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :ethereumex]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ethereumex, "~> 0.1.1"},
      {:ex_rlp, "~> 0.2.1"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:hexate, "~> 0.6.1"},
      {:keccakf1600, "~> 2.0", hex: :keccakf1600_orig},
      {:mnemonic, "~> 0.2.0"},
      {:poison, "~> 3.1"},
      {:libsecp256k1, "~> 0.1.3"}
    ]
  end

  defp description do
     """
     Ethereum utilities for Elixir.
     """
  end

  def package do
    [
      name: :eth,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Izel Nakri"],
      licenses: ["MIT License"],
      links: %{
        "GitHub" => "https://github.com/izelnakri/eth",
        "Docs" => "https://hexdocs.pm/eth/ETH.html"
      }
    ]
  end
end
