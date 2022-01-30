defmodule Dictionary do
  def random_word() do
    Enum.at(word_list(), :rand.uniform(length(word_list())))
  end

  defp word_list() do
    {:ok, word_list} = File.read(Path.join(:code.priv_dir(:word_generator), "br-utf8.txt"))

    word_list
    |> String.split("\n")
  end
end
