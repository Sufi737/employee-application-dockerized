# Employee Microservice
This is a proof of concept repository which demonstrates how to Dockerize a Spring Boot application

## Steps to Dockerize your application
Refer to this article for the steps: https://khotsufyan.medium.com/dockerize-your-spring-boot-application-in-9-steps-236ce61b6980

## REST Endpoints
You may refer to the postman_collection.json file and import it to test the endpoints in Postman

### Employee endpoints

| Method | Endpoint    | Description    |
| :---:   | :---: | :---: |
| GET | employee/{id}   | To get an employee by id |
| POST | employee   | To create an employee |
| PUT | employee   | To update an employee |
| DELETE | employee/{id}   | To delete an employee |

### Department endpoints

| Method | Endpoint    | Description    |
| :---:   | :---: | :---: |
| GET | department/{id}   | To get a department by id |
| POST | department   | To create a department |
| PUT | department   | To update a department |
| DELETE | department/{id}   | To delete a department | 

### Role endpoints

| Method | Endpoint    | Description    |
| :---:   | :---: | :---: |
| GET | role/{id}   | To get a role by id |
| POST | role   | To create a role |
| PUT | role   | To update a role |
| DELETE | role/{id}   | To delete a role |

## How to run this application
1. Clone this repository
2. Run `mvn package dockerfile:build`
3. Run `docker-compose up`
