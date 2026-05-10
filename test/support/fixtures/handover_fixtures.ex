defmodule ElixirHandoverLab.HandoverFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirHandoverLab.Handover` context.
  """

  @doc """
  Generate a project.
  """
  def project_fixture(attrs \\ %{}) do
    {:ok, project} =
      attrs
      |> Enum.into(%{
        description: "some description",
        framework: "some framework",
        name: "some name",
        repository_url: "some repository_url",
        source_language: "some source_language",
        status: "some status"
      })
      |> ElixirHandoverLab.Handover.create_project()

    project
  end
end
