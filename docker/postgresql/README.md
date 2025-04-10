# Docker

## postgresql (Docker Compose for setting up a PostgreSQL database and PgAdmin)

### Prerequisites

Install docker.

### Environment variables

Create a `.env` file with the following variables:

```
POSTGRES_DB=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
PGADMIN_DEFAULT_EMAIL=admin@pgadmin.org
PGADMIN_DEFAULT_PASSWORD=admin
PGADMIN_PORT=80
```

### Run docker compose

To run Docker compose in detached mode:

```
docker compose up -d
```

### Connect to a server in PgAdmin

- Host name/address: database
- Port: 5432
- Username: postgres
- Password: postgres

### Stop docker compose

To stop and remove the containers in Docker compose:

```
docker compose down
```