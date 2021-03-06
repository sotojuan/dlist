defmodule DiffList.Mixfile do
  use Mix.Project

  def project do
    [
      app: :difflist,
      version: "1.0.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [extra_applications: []]
  end

  defp description do
    """
    Difference lists in Elixir
    """
  end

  defp deps do
    [
      {:excheck, "~> 0.5", only: :test},
      {:ex_doc, "~> 0.15", only: :dev},
      {:triq, github: "triqng/triq", only: :test},
      {:benchfella, "~> 0.3.0", only: :dev}
    ]
  end

  defp package do
    [
      maintainers: ["sotojuan"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sotojuan/difflist"}
    ]
  end
end
