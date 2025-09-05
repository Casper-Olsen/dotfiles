#!/bin/bash

# Container name
CONTAINER_NAME="sql1"

# Read SA password from secure file
PASSWORD_FILE="$HOME/.mssql_sa_password"

if [ ! -f "$PASSWORD_FILE" ]; then
    echo "ERROR: Password file not found at $PASSWORD_FILE"
    echo "Create it with: echo 'MyPassword' > ~/.mssql_sa_password && chmod 600 ~/.mssql_sa_password"
    exit 1
fi

SA_PASSWORD=$(cat "$PASSWORD_FILE")

# Remove any existing container with the same name
if [ "$(docker ps -a -q -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping and removing existing container $CONTAINER_NAME..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

# Run SQL Server Docker container
echo "Starting new SQL Server container..."
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=$SA_PASSWORD" \
    -p 1433:1433 --name $CONTAINER_NAME --hostname $CONTAINER_NAME \
    -d mcr.microsoft.com/mssql/server:2019-latest

# Wait a few seconds for SQL Server to start
echo "Waiting 10 seconds for SQL Server to start..."
sleep 10

# Set environment variable for test project
export TestCommonConnectionString="Server=localhost,1433;Database=master;User Id=sa;Password=$SA_PASSWORD;TrustServerCertificate=True;"

echo "Container running and TestCommonConnectionString set!"
