defmodule Browser.Mixfile do
  use Mix.Project

  def project do
    [app: :browser,
     version: "0.5.2",
     name: "browser",
     source_url: "https://github.com/danhper/elixir-browser",
     homepage_url: "https://github.com/danhper/elixir-browser",
     package: package(),
     description: description(),
     elixir: "~> 1.10",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     docs: [
       main: "readme",
       extras: ["README.md"]
     ]]
  end

  defp description() do
    "Browser detection library"
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE", "bots.txt", "bot_exceptions.txt", "search_engines.txt"],
      maintainers: ["Daniel Perez"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/danhper/elixir-browser"}
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [{:plug, "~> 1.2", optional: true},
     {:earmark, "~> 1.0", only: :dev},
     {:ex_doc, "~> 0.19", only: :dev},
     {:mix_test_watch, "~> 1.1", only: :dev}]
  end
end
