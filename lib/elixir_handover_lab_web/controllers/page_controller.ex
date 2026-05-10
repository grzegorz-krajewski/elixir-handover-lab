defmodule ElixirHandoverLabWeb.PageController do
  use ElixirHandoverLabWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
