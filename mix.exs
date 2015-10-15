defmodule Colixir.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [app: :colixir,
     version: @version,
     elixir: "~> 1.1",
     deps: deps,

     # Hex
     description: description,
     package: package,

     # Docs
     name: "Colixir",
     docs: [source_ref: "v#{@version}", main: "Colixir",
            source_url: "https://github.com/mondok/colixir"]]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    Colixir creates colorized text for terminal output
    """
  end

  defp package do
    [maintainers: ["Matt Mondok"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/mondok/colixir"},
     files: ~w(mix.exs README.md lib)]
  end

  defp deps do
    []
  end
end
