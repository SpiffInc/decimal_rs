defmodule DecimalRs.MixProject do
  use Mix.Project

  def project do
    [
      app: :decimal_rs,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:decimal, "~> 2.0"},
      {:rustler, "~> 0.27"},
      {:benchee, "~> 1.0", only: :dev}
    ]
  end
end
