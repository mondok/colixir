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

  @doc """
  Used for streaming new text into the current formatted stream.
  """
  def colorize(prev_text, next_text, color) do
    new_text = IO.ANSI.format([color, next_text], true)
    "#{prev_text} #{new_text}"
  end

  @doc """
  Determines if current machine supports ANSI coloring
  """
  def can_color? do
    IO.ANSI.enabled?
  end
end
