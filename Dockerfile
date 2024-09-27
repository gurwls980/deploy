FROM ubuntu:latest
LABEL authors="ITPS"

ENTRYPOINT ["top", "-b"]