FROM prom/node-exporter:v1.0.1

USER root

COPY entrypoint.sh /etc/node-exporter/

USER nobody

ENTRYPOINT [ "/etc/node-exporter/entrypoint.sh" ]
