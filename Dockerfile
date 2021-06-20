FROM alpine:3.14.0

WORKDIR /usr/src/app

RUN apk add --update alpine-sdk yasm git

RUN git clone --recursive https://github.com/nemasu/asmttpd.git .

RUN make release

EXPOSE 80

ENTRYPOINT [ "./asmttpd", "./web_root", "80" ]
