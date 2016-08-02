FROM node:latest

RUN mkdir noflo-ui
RUN cd noflo-ui

RUN sudo git clone https://github.com/sejnub/docker-noflo-ui.git


