# --production de loai bo cac lib trong devDependencies
# --silent: loai bo bot log o terminal
# --no-cache: Neu muon bo cache thi them option nay vao cuoi cung khi build image
# su dung 

1. Docker build image
    `docker build . -t <your username>/node-web-app`

2. Run docker container from docker image
    `docker run -p 49160:8080 -d <your username>/node-web-app`

3. Print the output of your app
    `docker ps`
    `docker logs <container id>`
    `docker exec -it <container id> /bin/bash`