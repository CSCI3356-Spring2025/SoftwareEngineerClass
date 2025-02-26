#!/bin/bash

# Set the repository path (change this if needed)
REPO_PATH=$(pwd)

# Loop to continuously update the visualization
while true; do
    echo "Fetching new commits..."
    git -C "$REPO_PATH" pull --rebase >/dev/null 2>&1

    echo "Running Gource..."
    gource -1280x720 -f -seconds-per-day 0.5 -auto-skip-seconds 0.1

    echo "Restarting in 5 seconds..."
    sleep 5 # Adjust this for faster or slower refresh rates
done
