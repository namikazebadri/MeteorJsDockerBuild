FROM node:14.16.0-alpine3.13

ENV METEOR_HOME=/app

RUN mkdir -p $METEOR_HOME

WORKDIR $METEOR_HOME

COPY . $METEOR_HOME

# install dependencies
RUN npm install

EXPOSE 3000

ENTRYPOINT ["./docker-entrypoint.sh"]