defmodule ElixirHandoverLab.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :name, :string
      add :description, :text
      add :source_language, :string
      add :framework, :string
      add :repository_url, :string
      add :status, :string

      timestamps(type: :utc_datetime)
    end
  end
end
