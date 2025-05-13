# springboot-crud-demo

Spring Boot CRUD demo is demonstrating how to implement simple CRUD operations with a `Product` entity.

## What's inside 
This project is based on the [Spring Boot](http://projects.spring.io/spring-boot/) project and uses these packages :
- Maven
- Spring Core
- Spring Data (Hibernate & MySQL)
- Spring MVC (Tomcat)
- [Thymleaf](https://thymeleaf.org)

![demo](https://cl.ly/sEGH/Screen%20Recording%202018-06-11%20at%2010.34%20AM.gif)

## Installation 
The project is created with Maven, so you just need to import it to your IDE and build the project to resolve the dependencies

## Database configuration 
Create a MySQL database with the name `springbootdb` and add the credentials to `/resources/application.properties`.  
The default ones are :

```
spring.datasource.url=jdbc:mysql://localhost:3306/springbootdb
spring.datasource.username=root
spring.datasource.password=
spring.jpa.hibernate.ddl-auto=update
```

## Usage 
Run the project through the IDE and head out to [http://localhost:8080](http://localhost:8080)

or 

run this command in the command line:
```
mvn spring-boot:run
*****************************************************************************************************

## Docker Image Build and Push to DockerHub 

docker build -t mamtagour1999/springboot-crud-demo:v1 .
![image](https://github.com/user-attachments/assets/7b60ba3f-649b-4c81-a981-1aee5d1e4919)
****************************************************************************************************
## Kubernetes Deployment
****springboot-deployment.yml****
-------------------------------------
apiVersion: apps/v1
kind: Deployment
metadata:
  name: springboot-deployment
spec:
  replicas: 1
  selector:
    matchLabels:
      app: springboot-app
  template:
    metadata:
      labels:
        app: springboot-app
    spec:
      containers:
        - name: springboot-container
          image: msjabb1015/spring-boot-web:v1   # ✅ your Docker Hub image
          ports:
            - containerPort: 8080
---
apiVersion: v1
kind: Service
metadata:
  name: springboot-service
spec:
  type: LoadBalancer   # Docker Desktop will handle it like NodePort internally
  selector:
    app: springboot-app
  ports:
    - port: 80
      targetPort: 8080
-----------------------------------------------------------------------------------
kubectl apply -f springboot-deployment.yml

![image](https://github.com/user-attachments/assets/2c42a882-4e93-4c9c-9f18-b4f06b5acdd6)
![image](https://github.com/user-attachments/assets/28f4c7ce-99bb-4e00-9dc5-8f281920c4b2)

*************************************************************************************************************
