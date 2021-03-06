Immortal
========

[![Build Status](https://danielberkompas.semaphoreci.com/badges/immortal/branches/master.svg?style=shields)](https://danielberkompas.semaphoreci.com/projects/immortal)

Immortal is a small collection of helper modules intended to make it easier
to build a fault-tolerant OTP application. Each module tries to solve a
common problem in the most concise possible way.

## Included Modules:

- `Immortal.ETSTableManager`: Keep your ETS tables alive while your process
  is rebooted by your supervisor.

- `Immortal.Ghost`: Create processes which remain alive for a set period
  after a target process dies.

## Installation

Get it from Hex:

```elixir
def deps do
  {:immortal, "~> 0.2.2"}
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
