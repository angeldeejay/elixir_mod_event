defmodule FSModEvent.Mixfile do
  @moduledoc false
  use Mix.Project

  def project do
    [
      app: :elixir_mod_event,
      name: "elixir_mod_event",
      version: "0.0.10",
      description: description(),
      package: package(),
      source_url: "https://github.com/marcelog/elixir_mod_event",
      elixir: "~> 1.14",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:logger]
    ]
  end

  defp description do
    """
    Elixir client for FreeSWITCH mod_event_socket.

    Find the user guide in the github repo at: https://github.com/marcelog/elixir_mod_event.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Marcelo Gornstein"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/marcelog/elixir_mod_event"
      }
    ]
  end

  defp deps do
    [
      {:earmark, "~> 1.4.46", only: :dev},
      {:elixir_uuid, "~> 1.2"},
      {:ex_doc, "~> 0.32.1", only: :dev},
      {:coverex, "~> 1.5.0", only: :test}
    ]
  end
end
