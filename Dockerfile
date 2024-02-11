
# Build the project
FROM node:lts-iron as builder

ADD . .

RUN yarn
RUN yarn build
# RUN make test

FROM nginx:alpine

WORKDIR /app

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY --from=builder ./build .
