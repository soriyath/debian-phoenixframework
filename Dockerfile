FROM soriyath/debian-nodejs5
MAINTAINER Sumi Straessle

# Install Erlang and Elixir
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb \
	&& DEBIAN_FRONTEND=noninteractive dpkg -i erlang-solutions_1.0_all.deb \
	&& rm erlang-solutions_1.0_all.deb \
	&& apt-get update \
	&& apt-get install -y --fix-missing build-essential esl-erlang elixir inotify-tools \
	&& mix local.hex --force

# Install Phoenix Framework
RUN DEBIAN_FRONTEND=noninteractive mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
RUN DEBIAN_FRONTEND=noninteractive npm install -g brunch \
	&& npm install

# Clean
RUN DEBIAN_FRONTEND=noninteractive apt-get clean \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 4000
WORKDIR /srv/www
