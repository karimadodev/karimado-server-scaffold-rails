# Karimado Server + Rails

## Requirements

- PostgreSQL 16.1
- Redis 7.2
- Ruby 3.2, and Bundler 2.5

## Development

### Option 1: Docker (Recommended)

1. Install [Docker Desktop](https://docs.docker.com/get-docker/) on your local machine.

2. Open a terminal and type the following commands to start rails server and required services:

   ```console
   # docker services:
   #
   #    postgres - database
   #       redis - in-memory data store
   #        puma - web server
   #     rubydev - ruby development environment container
   #
   $ bin/dcupb
   ...
   [+] Running 4/4
   ✔ Container karimado-server-rails-postgres-1  Created
   ✔ Container karimado-server-rails-redis-1     Created
   ✔ Container karimado-server-rails-puma-1      Created
   ✔ Container karimado-server-rails-rubydev-1   Created
   ...
   ```

3. Open a terminal and type the following commands to initialize database **(only execute once)**:

   ```console
   $ bin/dcsh rails db:setup
   Created database 'karimado_development'
   Created record Karimado::User {uid: 'karimado', password: 'karimado'}
   ```

4. Visit http://localhost:3000 in your favorite browser.

### Option 2: Local Ruby Development Environment

1. Install [PostgreSQL](https://www.postgresql.org/download/) and [Redis](https://redis.io/docs/install/install-redis/) and run on your local machine.

2. Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/) on your local machine.

3. Open a terminal and type the following commands to setup your local development environment **(only execute once)**:

   ```console
   $ bin/setup
   == Installing dependencies ==
   The Gemfile's dependencies are satisfied

   == Preparing database ==
   Created database 'karimado_development'
   Created record Karimado::User {uid: 'karimado', password: 'karimado'}

   == Removing old logs and tempfiles ==

   == Restarting application server ==
   ```

4. Open a terminal and type the following commands to start rails server:

   ```console
   $ bin/dev
   18:29:53 puma.1 | started with pid 496634
   18:29:53 puma.1 | => Booting Puma
   18:29:53 puma.1 | => Rails 7.1.3 application starting in development
   18:29:53 puma.1 | => Run `bin/rails server --help` for more startup options
   18:29:54 puma.1 | Puma starting in single mode...
   18:29:54 puma.1 | * Puma version: 6.4.2 (ruby 3.2.2-p53) ("The Eagle of Durango")
   18:29:54 puma.1 | *  Min threads: 5
   18:29:54 puma.1 | *  Max threads: 5
   18:29:54 puma.1 | *  Environment: development
   18:29:54 puma.1 | *          PID: 496634
   18:29:54 puma.1 | * Listening on http://0.0.0.0:3000
   18:29:54 puma.1 | Use Ctrl-C to stop
   ...
   ```

5. Visit http://localhost:3000 in your favorite browser.

## License

Licensed under the [GPL-3.0-only License](./LICENSE).
