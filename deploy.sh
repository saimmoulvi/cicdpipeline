#!/bin/bash

# Define variables
REPO_URL="https://github.com/saimmoulvi/cicdpipeline.git"
DEPLOY_DIR="/var/www/html"
TMP_DIR="/tmp/simple_html_project"

# Clone the latest code to a temporary directory
if [ -d "$TMP_DIR" ]; then
    rm -rf "$TMP_DIR"
fi

git clone $REPO_URL $TMP_DIR

# Copy the new code to the Nginx root directory
sudo cp -r $TMP_DIR/* $DEPLOY_DIR

# Restart Nginx
sudo systemctl restart nginx

echo "Deployment completed and Nginx restarted."
