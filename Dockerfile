FROM golang

RUN git clone https://github.com/bitly/statsdaemon && cd statsdaemon && go build
ADD start.sh statsdaemon

WORKDIR statsdaemon
ENV GRAPHITE_HOST "127.0.0.1:2003"
CMD ["./start.sh"]
