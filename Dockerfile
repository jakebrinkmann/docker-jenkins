FROM centos:7

WORKDIR /opt

## Install JAVA JDK 1.8.0
ENV JAVA_HOME "/usr/local/java"
RUN curl -L -H "Cookie: oraclelicense=accept-securebackup-cookie" \
	http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz | tar zx && \
	mv jdk1.8.0_131 $JAVA_HOME
ENV PATH="${PATH}:${JAVA_HOME}/bin"

## Install Jenkins
WORKDIR /home/jenkins
RUN curl -LO "http://mirrors.jenkins.io/war-stable/latest/jenkins.war"
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "jenkins.war"]

