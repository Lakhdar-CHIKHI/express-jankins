#!bin/bash

GREEN='\033[1;32m'
ERROR='\033[0;31m'
WARNING='\033[0;33m'
NC='\033[0m' # No Color
echo "\n"


if [ ! -f ".env" ]; then
    echo " ${ERROR}(-) [ Error ] .env file not found , please provide .env file to continue ... ${NC} \n ";
    exit 1;
fi

export $(cat .env | xargs)

PROJECT_SUFIX=""


if [ -z "$DOMAIN_NAME" ]; then
    echo "${ERROR}(-) [ Error ] DOMAIN_NAME variable/env is not set  ${NC} ";
    exit 1;
fi

if [ -z "$PROJECT_NAME" ]; then
    echo "${ERROR}(-) [ Error ] PROJECT_NAME variable/env is not set  ${NC} ";
    exit 1;
fi

if [ $NODE_ENV = 'development' ]; then 
    PROJECT_SUFIX='dev'
    export PROJECT_NAME=${PROJECT_NAME}_${PROJECT_SUFIX}
    
fi

# replace DOMAIN_NAME variable in the template with the passed ${DOMAIN_NAME}.
envsubst '${DOMAIN_NAME};${PROJECT_NAME}' < server-configuration/webserver/nginx.template.conf > server-configuration/webserver/nginx.conf

docker network create ${DOCKER_SHARED_NETWORK}
docker stop $(docker ps -aq);
echo "\n"
echo "${GREEN}(+) Building Docker Containers .... ${NC}\n";
docker-compose -f docker-compose.yml -p ${PROJECT_NAME} up --scale api=1 --build --force-recreate --detach;