FROM debian:latest

RUN apt update
RUN apt install -y fish

CMD ["fish"]
