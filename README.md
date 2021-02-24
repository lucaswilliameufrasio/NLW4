# Rocketpay

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## How to run the app outside the docker
## First option

- Copy the .env.example to a file named .env and fill it up with your database credentials.
- Type in the terminal `source .env`
- Then you will be able to run mix commands without receiving errors of wrong credentials.

## Second option

- Run `make dev`
- Type the request information of each input
- This will only run the application.

Note: To enter in the interactive mode, you have `make interactive`. To setup ecto, you have `make setup-ecto`
## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
