# Colixir

A simple library for colorizing output text in Elixir.  

## Usage
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
