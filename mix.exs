defmodule Immortal.Mixfile do
  use Mix.Project

  def project do
    [app: :immortal,
     version: "0.2.2",
     elixir: "~> 1.0",
     name: "Immortal",
     description: "Helpers for fault-tolerant OTP applications",
     source_url: "https://github.com/danielberkompas/immortal",
     package: package(),
     docs: docs(),
     dialyzer: [
       plt_file: "#{System.get_env("HOME")}/#{plt_filename()}",
       flags: ["--no_native", "-Wno_match", "-Wno_return"]
     ],
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:inch_ex, ">= 0.0.0", only: :docs},
     {:ex_doc, ">= 0.0.0", only: [:dev, :docs]}]
  end

  def docs do
    [
      readme: "README.md",
      main: Immortal
    ]
  end

  defp plt_filename do
    "elixir-#{System.version}_#{otp_release()}.plt"
  end

  defp otp_release do
    case System.get_env("TRAVIS_OTP_RELEASE") do
      nil     -> :erlang.system_info(:otp_release)
      release -> release
    end
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
