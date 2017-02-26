# minimal-ruby

Minimal Ruby - for when you just don't feel like installing
[rbenv](https://github.com/rbenv/rbenv) and compiling Ruby for the umpteenth
time.

## Background

This is a Docker Container alongside a suggested Docker Compose file. It makes use of official Ruby Alpine container with some additions:

1. Install the dependencies required by every native extension 
2. Set up a mount of the current project directory, install bundled gems into it

## Usage (compose file)

Copy the `docker-compose.yml` into your project, treat each "service" as an alias.

### bundle

Since no reliable piece of Ruby software exists without a Gemfile, this is the primary means of interaction. To start off:

```sh
docker-compose run --rm bundle install
```

After that, run whatever command you want e.g.

```sh
docker-compose run --rm bundle exec rspec
```

### sh

You may need this if you want to run a command that does not begin with `bundle`. Opens an interactive shell.

```sh
docker-compose run --rm sh
```

## Usage  (raw)

Run commands using:

```sh
docker run --rm -it -v "${PWD}:/app" bentheax/minimal-ruby bundle ...
```
