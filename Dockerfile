FROM golang

RUN git clone https://github.com/bitly/statsdaemon && cd statsdaemon && go build

WORKDIR statsdaemon
ENV GRAPHITE_HOST "127.0.0.1:2003"

CMD ["sh", "-c", "./statsdaemon", "-graphite", "{$GRAPHITE_HOST}"]

