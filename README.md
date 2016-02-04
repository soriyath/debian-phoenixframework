# debian-phoenixframework
A Dockerfile for an Elixir-PostgreSQL-Phoenixframework stack on Debian Jessie with a swiss locale.
Based on soriyath/debian-nodejs5

## Run a new app
1. mix phoenix.new hello_phoenix
2. cd hello_phoenix
3. npm i -g brunch@1
4. iex -S mix phoenix.server
