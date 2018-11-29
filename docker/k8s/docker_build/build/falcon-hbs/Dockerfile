FROM falcon-plus:v0.1
WORKDIR /root/falcon-plus/
RUN mv hbs /root
RUN rm -rf /root/falcon-plus
WORKDIR /root/hbs
CMD ["./bin/falcon-hbs", "-c", "./config/cfg.json"]
