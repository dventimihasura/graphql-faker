FROM node:14.3.0-alpine

WORKDIR /workdir

COPY sdl/schema.graphql .

ENTRYPOINT ["node", "/usr/local/bin/graphql-faker", "schema.graphql"]

EXPOSE 9002

RUN yarn global add graphql-faker && \
    yarn cache clean --force
