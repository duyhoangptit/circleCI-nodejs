# --production de loai bo cac lib trong devDependencies
# --silent: loai bo bot log o terminal
# --no-cache: Neu muon bo cache thi them option nay vao cuoi cung khi build image
# su dung 

1. Docker build image
    [Docker build](https://docs.docker.com/engine/reference/commandline/build/)
    `docker build -t image_name .`
    `docker build . -t <your username>/nodejs-be`
    `docker build . -t hoangtd/nodejs-be`

2. Run docker container from docker image
    `docker run -p 49160:8080 -d <your username>/nodejs-be`

3. Print the output of your app
    `docker ps`
    `docker logs <container id>`
    `docker exec -it <container id> /bin/bash`

4. Push to dockerhub
    `docker build -t duyhoangptit/nodejs-cicd:tagname .`
    `docker push duyhoangptit/nodejs-cicd:tagname`