defmodule ElixirHandoverLab.Handover.Project do
  use Ecto.Schema
  import Ecto.Changeset

  schema "projects" do
    field :name, :string
    field :description, :string
    field :source_language, :string
    field :framework, :string
    field :repository_url, :string
    field :status, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:name, :description, :source_language, :framework, :repository_url, :status])
    |> validate_required([:name, :description, :source_language, :framework, :repository_url, :status])
  end
end
