# Java Full Stack Web Application - Customer Connect
This is a full-stack web application built using Java Spring Boot MVC, Thymeleaf, Hibernate, and MySQL. 
The application is designed to manage customer interactions, tasks, appointments, and communications, providing a comprehensive solution for customer relationship management (CRM).
The project includes a responsive front-end with seamless navigation, as well as a secure back-end for managing data storage and business logic.

## Features 
__User Authentication and Authorization__: Secure login system with role-based access control.  

__Customer Management__: Add, edit, and view customer details including contacts, addresses, and communication history.  
 
__Task & Appointment Scheduling:__ Manage customer tasks and appointments, integrated with Google Calendar.  

__Search and Filter__: Sort and filter customer lists based on various criteria like name, email, or date of interaction.  

__Dashboard View__: A summary dashboard providing insights into customer activity and key metrics.  

__Data Persistence__: Uses Hibernate for object-relational mapping (ORM) and MySQL for data storage.  

__API Integration__: Integrates with external services like Google Drive, Gmail, and Google Calendar for seamless file storage, email, and event scheduling.
 
__Deployment__: Easily deployable on cloud platforms like Heroku, AWS, or Google Cloud for production use.  

## Tech Stack
- Front-End:
  - Thymeleaf (Template Engine)
  - HTML5, CSS3, Bootstrap (for responsive design)
  
- Back-End:
  - Spring Boot MVC (Java-based web framework)
  - Hibernate ORM (for data persistence)
  - MySQL (for database management)
    
- Security:
  - Spring Security (for authentication and role management)
    
- External Integrations:
  - Google Calendar API (for appointment scheduling)
  - Google Drive API (for file storage)
  - Gmail API (for sending customer emails)

## How to Run
- Clone the repository:
`git clone https://github.com/yourusername/Customer-Connect.git`
- Navigate to the project directory:
`cd Customer-Connect`
- Build the project:
`mvn clean install`
- Run the application:
`mvn spring-boot:run`
- Access the application: Open a browser and navigate to http://localhost:8080

## Installation
- Prerequisites:
  - Java 17 or later
  - Maven
  - MySQL
  
- Database Setup:
  - Configure database properties in application.properties:  
  `spring.datasource.url=jdbc:mysql://localhost:3306/customer_connect`  
  `spring.datasource.username=your_username`  
  `spring.datasource.password=your_password`   
  - Replace the __your_username__ and __your_password__ fields with your MySQL username and password.  

 - Google Cloud Setup:  
   - `spring.security.oauth2.client.registration.google.client-id={your_registration_id}`
   - `spring.security.oauth2.client.registration.google.client-secret={your_client_secret_id}`
   - Replace the registration id and client id with your actual id which can be obtained from [Google Cloud Console](https://console.cloud.google.com/apis/credentials/consent?project=watchful-bonus-434316-h4).

 ## Contribution
  Feel free to fork this repository and contribute by submitting pull requests. For major changes, please open an issue first to discuss what you would like to change.

