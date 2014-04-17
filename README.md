# docker-batsd

A Dockerfile that installs Batsd, a StatsD implementation.

## Installation

```
$ git clone https://github.com/nicokaiser/docker-batsd.git
$ cd docker-batsd
$ docker build -t batsd .
```

## Usage

```
$ docker run -p 8125 -p 8126 -p 8127 -d batsd
```
