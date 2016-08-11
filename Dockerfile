FROM node

RUN git clone https://github.com/noflo/noflo-ui.git 

RUN cd /noflo-ui && npm install

RUN cd /noflo-ui && npm install -g grunt-cli

RUN cd /noflo-ui && grunt build

RUN cd /noflo-ui && npm install simple-server

RUN echo "cd /noflo-ui && ./node_modules/.bin/simple-server . 80" > /noflo-ui/start.sh && chmod +x /noflo-ui/start.sh

CMD /noflo-ui/start.sh

EXPOSE 80
