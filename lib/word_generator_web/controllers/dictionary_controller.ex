defmodule WordGeneratorWeb.DictionaryController do
  use WordGeneratorWeb, :controller

  def index(conn, _params) do
    word = Dictionary.random_word()

    render(conn, "index.html", data: word)
  end
end
