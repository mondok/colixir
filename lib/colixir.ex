# colixir.ex

defmodule Colixir do

  @doc """
  Colorizes and formats text content for terminal output.
  Supports all the outputs from
  http://elixir-lang.org/docs/master/elixir/IO.ANSI.html
  """
  def colorize(text, color) do
    IO.ANSI.format([color, text], true)
  end
end
