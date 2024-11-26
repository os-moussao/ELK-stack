FROM alpine:latest
RUN apk update && apk upgrade && apk add --update bash
WORKDIR /app
COPY ./script.sh .
ENTRYPOINT ["/bin/bash"]
CMD [ "/app/script.sh" ]