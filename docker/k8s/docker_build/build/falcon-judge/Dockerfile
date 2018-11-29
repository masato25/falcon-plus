FROM falcon-plus:v0.1
WORKDIR /root/falcon-plus/
RUN mv judge /root
RUN rm -rf /root/falcon-plus
WORKDIR /root/judge
CMD ["./bin/falcon-judge", "-c", "./config/cfg.json"]
