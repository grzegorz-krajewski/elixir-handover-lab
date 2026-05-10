defmodule ElixirHandoverLab.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ElixirHandoverLabWeb.Telemetry,
      ElixirHandoverLab.Repo,
      {DNSCluster,
       query: Application.get_env(:elixir_handover_lab, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ElixirHandoverLab.PubSub},
      # Start a worker by calling: ElixirHandoverLab.Worker.start_link(arg)
      # {ElixirHandoverLab.Worker, arg},
      # Start to serve requests, typically the last entry
      ElixirHandoverLabWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElixirHandoverLab.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ElixirHandoverLabWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
