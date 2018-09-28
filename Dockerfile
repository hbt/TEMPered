FROM ubuntu:14.04


RUN apt-get update  && apt-get install -y \
  usbutils \ 
  git \ 
  cmake \
  libhidapi-dev
  
  
RUN cd / && git clone https://github.com/hbt/TEMPered tempered && mkdir /tempered/build
WORKDIR /tempered/build

RUN cmake ../ && make 
