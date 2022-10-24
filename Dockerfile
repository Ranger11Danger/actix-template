FROM rust:latest

# set work directory
WORKDIR /usr/src/app

RUN apt-get update
RUN cargo install cargo-watch
RUN cargo install sqlx-cli --no-default-features --features native-tls,postgres
COPY . .