FROM 192.168.10.100:8080/staging/base
USER bayauser
RUN mkdir -p /home/bayauser/app/logs
ADD --chown=bayauser:bayauser ./target/helloworld-0.0.1.war /home/bayauser/app/
WORKDIR /home/bayauser/app
ENTRYPOINT ["java","-jar","helloworld-0.0.1.war"]
