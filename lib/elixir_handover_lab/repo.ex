defmodule ElixirHandoverLab.Repo do
  use Ecto.Repo,
    otp_app: :elixir_handover_lab,
    adapter: Ecto.Adapters.Postgres
end
