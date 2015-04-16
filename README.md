Immortal
========

Immortal is a small collection of helper modules intended to make it easier
to build a fault-tolerant OTP application. Each module tries to solve a
common problem in the most concise possible way.

## Included Modules:

- `Immortal.EtsTableManager`: Keep your ETS tables alive while your process
  is rebooted by your supervisor.

## Installation

Get it from Hex:

```elixir
def deps do
  {:immortal, "~> 0.0.1"}
end
```

Or from Github:

```elixir
def deps do
  {:immortal, github: "danielberkompas/immortal"}
end
```

Then run `mix deps.get`.

## Contributing
Check out the [Contributing Guidelines](CONTRIBUTING.md).

## License
MIT. See the `LICENSE` file for more details.
