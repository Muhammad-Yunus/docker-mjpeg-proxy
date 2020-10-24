FROM aarch64/node:4.6.1

RUN git clone https://github.com/rhodiumlabs/node-mjpeg-proxy.git \
#  && cd node-mjpeg-proxy \
  && npm install express \
  && npm install mjpeg-proxy \
  && npm install https \
  && npm install fs

#
# Define an environment variable
# 
# Use this variable when creating a container to specify the MJPEG host.
ENV MJPEG_URL=""
ENV MJPEG_PORT="8081"
ENV MJPEG_CONSUMER=""

#ADD index.js /
ADD . /

RUN chmod +x index.js

CMD nodejs index.js
