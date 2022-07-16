FROM node:alpine

WORKDIR /app

RUN npm install -g pm2

COPY package*.json ./

# --production de loai bo cac lib trong devDependencies
# --silent: loai bo bot log o terminal
RUN npm install --production --silent

COPY . .

CMD ["npm", "start"]
# --no-cache: Neu muon bo cache thi them option nay vao cuoi cung khi build image
# su dung DOCKER_BUILDKIT=1 -> condition: docker >= 18.06, v 20.10 thi da dk default.
