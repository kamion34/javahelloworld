FROM java:8

ENV  FOO bar

COPY src  /root/javahelloworld/src
WORKDIR   /root/javahelloworld
RUN mkdir /root/javahelloworld/bin

RUN  javac -d bin src/HelloWorld.java
# RUN  echo ${FOO}
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
