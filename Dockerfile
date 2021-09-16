FROM busybox
###
RUN mkdir /app
WORKDIR /app
RUN touch `date +%s`
