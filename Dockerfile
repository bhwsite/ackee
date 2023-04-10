FROM verdaccio/verdaccio

EXPOSE 80

USER root
ENV NODE_ENV=production
COPY config.yaml /verdaccio/conf
USER verdaccio

CMD ["verdaccio","--listen", "0.0.0.0:80"]
