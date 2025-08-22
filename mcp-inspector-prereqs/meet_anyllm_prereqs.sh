#!/bin/bash

# Define the directory and file paths
ANYLLM_DIR="$HOME/.anyllm"
ENV_FILE="$ANYLLM_DIR/.env"

# Create the directory if it doesn't exist
if [ ! -d "$ANYLLM_DIR" ]; then
    echo "Creating directory: $ANYLLM_DIR"
    mkdir -p "$ANYLLM_DIR"
fi

# Create the .env file if it doesn't exist
if [ ! -f "$ENV_FILE" ]; then
    echo "Creating .env file at: $ENV_FILE"
    touch "$ENV_FILE"
    echo "# Add your environment variables here" >> "$ENV_FILE"
fi

echo "Setup complete."