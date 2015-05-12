defmodule Exd.Mixfile do
  use Mix.Project

  def project do
    [app: :exd,
     version: "0.0.1",
     elixir: "~> 1.1-dev",
     deps: deps,
     compilers: [:erlang, :elixir, :app]]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :ecto, :ecto_migrate, :apix],
     mod: {Exd, []}]
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
    [{:postgrex, ">= 0.0.0", optional: true},
     {:mariaex, ">= 0.1.0", optional: true},
     {:ecto_it, "~> 0.1.0", optional: true},
     {:hello, github: "travelping/hello", branch: "hello_v3", optional: true},

     {:lager, "~> 2.1.1", override: true},
     {:jsx, "~> 2.6.0", override: true},
     {:exscript, "~> 0.0.1"},
     {:apix, github: "liveforeverx/apix"},
     {:ecto, "~> 0.11.0"},
     {:ecto_migrate, "~> 0.1.0"},
     {:poison, "~> 1.4.0"}]
  end
end
