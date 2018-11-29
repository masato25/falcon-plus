FROM falcon-plus:v0.1
WORKDIR /root/falcon-plus/
RUN mv transfer /root
RUN rm -rf /root/falcon-plus
WORKDIR /root/transfer
CMD ["./bin/falcon-transfer", "-c", "./config/cfg.json"]
