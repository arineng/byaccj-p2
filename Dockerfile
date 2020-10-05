FROM centos:8

RUN echo "fastestmirror=1" >> /etc/dnf/dnf.conf
RUN dnf -y install make gcc
COPY /src /src
WORKDIR /src
RUN make

FROM centos:8
COPY --from=0 /src/yacc /bin/yacc
ENTRYPOINT ["/bin/yacc"]