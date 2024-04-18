#!/bin/bash

# Define the server username, password, and hostname
SERVER_USERNAME="your_username"
SERVER_PASSWORD="your_password"
SERVER_HOSTNAME="your_server_hostname"

# Define the source and destination paths
SOURCE_PATH="$GITHUB_WORKSPACE/*"  # Path to your GitHub repository files
DESTINATION_PATH="/path/to/deployment/directory"  # Destination directory on the server

# Use scp with username and password to copy files to the server
scppass -p "$SERVER_PASSWORD" -o StrictHostKeyChecking=no -r "$SOURCE_PATH" "$SERVER_USERNAME@$SERVER_HOSTNAME:$DESTINATION_PATH"
