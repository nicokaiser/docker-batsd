# docker-batsd

A Dockerfile that installs [Batsd](https://github.com/noahhl/batsd), a StatsD implementation.

## Installation

```
$ git clone https://github.com/nicokaiser/docker-batsd.git
$ cd docker-batsd
$ docker build -t nicokaiser/batsd .
```

## Usage

```
$ docker run -p 8125 -p 8126 -p 8127 -d nicokaiser/batsd
```

## License

MIT. See the LICENSE file.
