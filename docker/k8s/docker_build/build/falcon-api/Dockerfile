FROM falcon-plus:v0.1
WORKDIR /root/falcon-plus/
RUN mv api /root
RUN rm -rf /root/falcon-plus
WORKDIR /root/api
CMD ["./bin/falcon-api", "-c", "./config/cfg.json"]
