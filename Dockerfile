FROM openjdk: 8
COPY . /dockerapp
WORKDIR /dockerapp
RUN javac calculadora.java
CMD ["java", "calculadora"]
