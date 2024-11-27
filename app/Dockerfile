FROM alpine:latest
RUN apk update && apk upgrade && apk add --update bash && apk add coreutils
WORKDIR /app
COPY ./script.sh .
ENTRYPOINT ["/bin/bash"]
CMD [ "/app/script.sh" ]