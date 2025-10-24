FROM docker.io/openjdk:11-jdk-slim

RUN apt-get update && \
    apt-get install -y gnuplot && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

ENTRYPOINT ["/bin/bash"]
CMD ["./run_exps.sh", "31"]

