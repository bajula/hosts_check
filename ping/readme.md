Create the container with command:
```bash
#create the docker image from Dockerfile
docker build -t mwping /home/alex/hosts_check/ping/Dockerfile 
# upload the image to container repository
docker push mwping 
