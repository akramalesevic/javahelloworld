FROM java:7
COPY src /home/root/javahelloworld/src
RUN mkdir /home/root/javahelloworld/bin
WORKDIR /home/root/javahelloworld/
RUN javac -d bin /home/root/javahelloworld/src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "/home/root/javahelloworld/bin", "HelloWorld"]
ENV FOO bar

