defmodule ColixirTest do
  use ExUnit.Case
  doctest Colixir

  setup do
    IO.puts(Colixir.colorize("Running test...", :yellow))
  end

  test "can colorize text" do
    output = Colixir.colorize("test", :red)
    expected = IO.ANSI.format([:red, "test"], true)
    assert output == expected
  end

  test "can chain formatting" do
    output = Colixir.colorize("test", :red) |> Colixir.colorize(:bright)
    assert output != nil
  end

  test "can chain formatting with new text" do
    output = Colixir.colorize("test", :red) |> Colixir.colorize("test2", :bright)
    assert output != nil
  end
end
