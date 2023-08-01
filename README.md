# Express App with Jenkins Integration

![Express](https://img.shields.io/badge/Express-^4.17.1-green.svg)

## Overview
This repository contains an Express.js web application integrated with Jenkins for continuous integration and deployment. The app serves as a basic example to help you get started with Express and Jenkins.

## Features
- Basic Express server configuration.
- Sample routes and endpoints.
- Jenkins integration for CI/CD.

## Prerequisites
- Node.js and npm installed.
- Docker installed.
- Jenkins server set up for CI/CD (optional).

## Installation
1. Clone the repository:
    - > git clone https://github.com/Lakhdar-CHIKHI/express-jankins.git

    - > cd express-jenkins

2. Build and Run Containers : 
    > sh setup.sh

    This script will automatically check the environment and environment variables, making the process of setting up the application seamless and straightforward.

## Usage
- After successfully setting up the containers, you can access the application in two ways:

    > Access the application locally at: http://localhost/

    **Note:** The domain name can be configured by setting the "DOMAIN_NAME" variable in the environment file. Once set, access the application using the specified domain name, for example: **http://DOMAIN_NAME/**


## Jenkins Integration
This app is integrated with Jenkins for continuous integration and deployment. Jenkins can be set up to automatically build, test, and deploy the app whenever changes are pushed to the repository. Jenkinsfile defines the CI/CD pipeline.

## Contributing
Contributions are welcome! If you find any bugs or have suggestions for improvement, please open an issue or submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).