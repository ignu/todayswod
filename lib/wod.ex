defmodule Wod do
  def main(_args) do
    url = "http://foundationcrossfit.com/blog/"
    IO.puts IO.ANSI.underline <> "|||||||||||||" <> IO.ANSI.reset
    IO.inspect HTTPoison.get(url).body
    IO.puts IO.ANSI.underline <> "|||||||||||||" <> IO.ANSI.reset
  end
end
