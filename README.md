# docker-image-optimizer-demo
More efficient way of writing docker files for lesser docker image size

## Building docker images
    `docker build -t xc:plain .`
### Corresponding size of the image : `947MB`


## Building docker images by merging commands
    `docker build -t xc:collate -f Dockerfile_collate .`
### Corresponding size of the image : `930MB`


## Building docker images by using base image
    `docker build -t xc:slim -f Dockerfile_base_image .`
### Corresponding size of the image : `344MB`


## Building docker images by multi-stage
    `docker build -t xc:multistage -f Dockerfile_multistage .`
### Corresponding size of the image : `165MB`


## Building docker images by multi-stage distroless
    `docker build -t xc:distroless -f Dockerfile_multistage_distroless .`
### Corresponding size of the image : `49MB`

## List the docker images built
    `docker images`
## To remove images
    `docker stop $(docker ps -a -q)`
    `docker rm $(docker ps -a -q)`
    `docker rmi $(docker images 'xc')`