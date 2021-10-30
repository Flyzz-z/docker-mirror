FROM registry.access.redhat.com/ubi8/ubi-minimal:8.4
WORKDIR /work/
RUN chown root /work \
    && chmod "g+rwX" /work \
    && chmod "u+rwX" /work \
    && chown root:root /work
COPY --chown=root:root *-runner /work/application
RUN chmod "u+rwX" /work/application
EXPOSE 8080

CMD ["./application", "-Dquarkus.http.host=0.0.0.0"]