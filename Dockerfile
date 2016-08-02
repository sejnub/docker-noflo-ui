FROM node:latest

RUN mkdir noflo-ui
RUN cd noflo-ui

RUN git config --global http.proxy $http_proxy
RUN sudo git clone https://github.com/sejnub/docker-noflo-ui.git


