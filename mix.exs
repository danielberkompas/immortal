defmodule Immortal.Mixfile do
  use Mix.Project

  def project do
    [
      app: :immortal,
      version: "0.2.2",
      elixir: "~> 1.0",
      name: "Immortal",
      description: "Helpers for fault-tolerant OTP applications",
      source_url: "https://github.com/danielberkompas/immortal",
      package: package(),
      docs: docs(),
      deps: deps()
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:inch_ex, ">= 0.0.0", only: [:dev, :test]},
      {:ex_doc, ">= 0.0.0", only: [:dev, :test]}
    ]
  end

  def docs do
    [
      readme: "README.md",
      main: Immortal
    ]
  end

  defp package do
    [
      contributors: ["Daniel Berkompas"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/danielberkompas/immortal"
      }
    ]
  end
end
