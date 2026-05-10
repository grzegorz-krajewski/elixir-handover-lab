defmodule ElixirHandoverLabWeb.ProjectHTML do
  use ElixirHandoverLabWeb, :html

  embed_templates "project_html/*"

  @doc """
  Renders a project form.

  The form is defined in the template at
  project_html/project_form.html.heex
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true
  attr :return_to, :string, default: nil

  def project_form(assigns)
end
