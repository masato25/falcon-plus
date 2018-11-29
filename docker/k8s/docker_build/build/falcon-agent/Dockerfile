FROM falcon-plus:v0.1
WORKDIR /root/falcon-plus/
RUN mv agent /root
RUN rm -rf /root/falcon-plus
WORKDIR /root/agent
COPY cfg.json /root/agent/config
CMD ["./bin/falcon-agent", "-c", "./config/cfg.json"]
