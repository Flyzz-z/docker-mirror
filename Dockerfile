FROM registry.access.redhat.com/ubi8/ubi-minimal:8.4
WORKDIR /work/
COPY  *-runner /work/application

EXPOSE 8080

CMD ["./application", "-Dquarkus.http.host=0.0.0.0"]