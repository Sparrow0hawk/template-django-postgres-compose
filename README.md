# Template Django Postgres Docker-Compose environment

A template Django-Postgres project with Docker-compose.

## Requirements

- [Docker](https://www.docker.com/)
## Usage

To build the Django image locally run:

```bash
docker build . -t template-django
```

To run the Docker image and check it runs (get the Django debug screen):

```bash
docker run --rm -p 8000:8000 template-django:latest
```

Navigate to http://localhost:8000 to view the Django install successful screen.
