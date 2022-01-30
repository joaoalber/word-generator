defmodule WordGeneratorWeb.PageController do
  use WordGeneratorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
