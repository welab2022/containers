# clean image and container resource 
docker image ls 
docker container ls 
docker image rm -f $(docker image ls -q)
docker container rm -f $(docker container ls -aq)


docker build -t frontend:dev .
docker run -it --rm -v ${PWD}:/app -v /app/node_modules -p 3001:3000 -e CHOKIDAR_USEPOLLING=true frontend:dev
docker run -it  -p 3001:3000 -e CHOKIDAR_USEPOLLING=true frontend:dev
docker exec -it <CONTAINER_ID> /bin/sh
docker-compose up -d --build


docker run -p 80:4000 --name app-prod app-prod