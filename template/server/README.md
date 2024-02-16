# Karimado Server + Rails

## Development

1. Install [Docker Desktop](https://docs.docker.com/get-docker/) on your local machine.

2. Open a terminal and type the following commands to start rails server and required services:

   ```sh
   # docker services:
   #
   #     postgres - database
   #        redis - in-memory data store
   #         puma - web server
   #      rubydev - ruby development environment container
   #
   $ docker compose up --build
   ...
   [+] Running 4/4
   ✔ Container karimado-server-rails-redis-1     Created
   ✔ Container karimado-server-rails-postgres-1  Created
   ✔ Container karimado-server-rails-rubydev-1   Created
   ✔ Container karimado-server-rails-puma-1      Created
   ...
   ```

3. Open a terminal and type the following commands to initialize database:

   ```sh
   $ docker compose exec rubydev bin/rails db:setup
   Created database 'karimado_development'
   Created record Karimado::User {uid: 'karimado', password: 'karimado'}
   ```

   > **TIP**
   >
   > You can use `bin/rails db:setup` directly if you have set up the ruby
   > development environment on your local machine.

4. Visit http://localhost:3000 in your favorite browser.

## License

Licensed under the [GPL-3.0-only License](./LICENSE).
