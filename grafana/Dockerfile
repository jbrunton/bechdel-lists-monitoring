FROM grafana/grafana:7.0.3

USER root

RUN apk add gettext

COPY provisioning /etc/grafana/provisioning/
COPY --chown=grafana grafana.template.ini /etc/grafana/grafana.template.ini
COPY entrypoint.sh /etc/grafana/entrypoint.sh

RUN chown -R grafana:grafana /etc/grafana && rm /etc/grafana/grafana.ini

USER grafana

ENTRYPOINT [ "/etc/grafana/entrypoint.sh" ]

# CMD [ "/run.sh" ]
