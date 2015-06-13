# Haproxy Dockerfile

This repository contains Dockerfile of Haproxy with consul-template and statsd stats module

## Base Docker Image

[haproxy:1.5](https://registry.hub.docker.com/_/haproxy/)

## Installation

1. Install [Docker](https://www.docker.com/)
2. Have a consul server running
3. Download image from public [Crakmedia Docker Hub Registry](https://registry.hub.docker.com/repos/crakmedia/) `docker pull crakmedia/haproxy`

## Usage

docker run -d -p 80:80 -e CONSUL_SERVER=X.X.X.X:8500 -e CONSUL_SERVICE_NAME=service-name-80 crakmedia/haproxy

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## ToDo

- Adding statsd module
- Download consul-template and install it when we build image
- Add support for more than one service (like HTTP and HTTPs for one service in the same instance)

## Credits

- Julien Maitrehenry

## License

TODO: Write license