#!/bin/bash
# Deploy index.html to local Apache server
# Change the path if needed
DESTINATION="/var/www/html"
echo "Deploying index.html to $DESTINATION..."
sudo cp index.html $DESTINATION
echo "Deployment done!"
