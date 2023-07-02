# Template Django Postgres Docker-Compose environment

A template Django-Postgres project with Docker-compose.

## Stack

This repository is a template for the following Django stack:

- Django
- Postgres database
- Pyscopg2
- Gunicorn

## Requirements

- [Docker](https://www.docker.com/)
## Usage

### Standalone Docker image

To build the Django image locally run:

```bash
docker build . -t template-django
```

To run the Docker image and check it runs (get the Django debug screen):

```bash
docker run -e DEBUG=true --env-file ./.env --rm -it -p 8000:8000 test-django:latest 
```

Navigate to http://localhost:8000 to view the Django install successful screen.

### Docker Compose

To run the Docker Compose configuration to also bring up a Postgres database
container use the following command:

```bash
docker compose up -d
```

Check http://localhost:8000 to view the Django install successful screen.

To stop containers which can be restarted later use:

```bash
docker compose stop
```

To permanently remove images, networks and volumes used by Docker Compose run:

```bash
docker compose down --remove-orphans --volumes
```
