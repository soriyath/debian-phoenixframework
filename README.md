# debian-phoenixframework
A Dockerfile for an Elixir-PostgreSQL-Phoenixframework stack on Debian Jessie with a swiss locale.
Based on soriyath/debian-nodejs5

## Run a new app
1. mix phoenix.new hello_phoenix
2. cd hello_phoenix
3. npm i -g brunch
4. iex -S mix phoenix.server

We are all set! Run your Phoenix application:

    $ cd asobo
    $ mix phoenix.server

You can also run your app inside IEx (Interactive Elixir) as:

    $ iex -S mix phoenix.server

Before moving on, configure your database in config/dev.exs and run:

    $ mix ecto.create

`docker run -it -P -v $(pwd -P):/srv/www soriyath/debian-phoenixframework bash`
`service postgresql start`
`mix local.hex --force`
`mix local.rebar --force`