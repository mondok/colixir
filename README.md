# Colixir

A simple library for colorizing output text in Elixir.  This library simply wraps
the [IO.ANSI module](http://elixir-lang.org/docs/master/elixir/IO.ANSI.html).

## Usage
Basic usage is as follows:
```
content = Colixir.colorize("hello world", :red)
IO.puts content
```

You can also chain the output with formatting.
```
content = Colixir.colorize("hello world", :red)
          |> Colixir.colorize(:bright)
          |> Colixir.colorize(:blue_background)

IO.puts content
```

Another option is to concat text and use multiple colors
```
content = Colixir.colorize("hello world", :red)
          |> Colixir.colorize(:bright)
          |> Colixir.colorize("from Mars", :yellow)
          |> Colixir.colorize(:blue_background)

IO.puts content
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add colixir to your list of dependencies in `mix.exs`:

        def deps do
          [{:colixir, "~> 0.0.1"}]
        end

  2. Ensure colixir is started before your application:

        def application do
          [applications: [:colixir]]
        end
