FROM node:6

RUN rm -rf /nodal-docker/node_modules
RUN mkdir /nodal-docker
COPY . /nodal-docker

WORKDIR /nodal-docker

RUN npm install
RUN npm install -g nodal

EXPOSE 3000

CMD nodal s
