FROM falcon-plus:v0.1
WORKDIR /root/falcon-plus/
RUN mv graph /root
RUN rm -rf /root/falcon-plus
WORKDIR /root/graph
ADD ./cfg.json /root/graph/config/cfg.json
CMD ["./bin/falcon-graph", "-c", "./config/cfg.json"]
