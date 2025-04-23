# Docker

## local-registry (Docker Compose for setting up a local registry)

### Prerequisites

Install docker.

### Run docker compose

To run Docker compose in detached mode:

```
docker compose up -d
```

Now, our local registry is running on port 5000.

To push a Docker image to the local registry, we first need to have an image. In this example, we’ll use the Ubuntu image:

```
docker pull ubuntu
```

We need to tag our Docker image:

```
docker tag ubuntu localhost:5000/ubuntu
```

We can push our local Docker image to the local registry:

```
docker push localhost:5000/ubuntu
```

### Stop docker compose

To stop and remove the containers in Docker compose:

```
docker compose down
```

### Usefull commands

List all avaible repositories in our local registry:

```
curl -X GET localhost:5000/v2/_catalog
```

Describe the contents of the manifest of the Docker image with the latest tag:

```
curl -X GET localhost:5000/v2/<docker-image>/manifests/latest
```

Remove a Docker image from the local registry by specifying the manifest value:

```
curl -X DELETE localhost:5000/v2/<docker-image>/manifests/<manifest_value>
```