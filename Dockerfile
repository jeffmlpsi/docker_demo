# syntax=docker/dockerfile:1
   
FROM ubuntu AS hw_build
WORKDIR /BUILD
COPY hello_world.c .
RUN apt-get update
RUN apt-get install gcc -y
RUN gcc -o hello_world -static hello_world.c
RUN ls -lh /BUILD

FROM scratch AS hw_sratch
COPY --from=hw_build /BUILD/hello_world /hello_world
CMD ["/hello_world"]
