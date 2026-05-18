#!/bin/bash
DEST="/var/www/html"
echo "Deploying index.html..."
sudo cp index.html $DEST
echo "Deployment complete!"
