FROM ruby:3.2.2-bullseye

RUN set -xe \
  && apt-get update -qq \
  && apt-get install -y --no-install-recommends build-essential git libvips pkg-config \
  && rm -rf /var/lib/apt/lists/*

ARG UID=1000
ARG GID=1000
RUN groupadd --gid ${GID} karimado \
  && useradd --uid ${UID} --gid ${GID} --shell /bin/bash --create-home karimado

USER karimado:karimado
WORKDIR /home/karimado/workspace

RUN gem install bundler -v 2.5.3
COPY --chown=karimado:karimado Gemfile .
COPY --chown=karimado:karimado Gemfile.lock .
RUN bundle install

COPY --chown=karimado:karimado . .

CMD ["./bin/rails", "about"]
