defmodule Wod do
  def main(_args) do
    IO.puts " 💪 💪 💪 💪 💪 💪"

    url = "http://foundationcrossfit.com/blog/"

    {:ok, article} = HTTPoison.get(url)

    post = article.body
      |> Floki.find("article")
      |> List.first
      |> Floki.text
      |> String.split("CrossFit WOD for ")
      |> List.last
      |> String.split("Post ")
      |> List.first
    IO.puts post
  end
end
