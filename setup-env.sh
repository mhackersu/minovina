#!/bin/bash

# Exit on error
set -e

# Copy .env.example to .env
if [ -f ".env.example" ]; then
    cp .env.example .env
    echo ".env created from .env.example"
else
    echo "Warning: .env.example not found!"
fi

# Copy .env.local.example to .env.local
if [ -f ".env.local.example" ]; then
    cp .env.local.example .env.local
    echo ".env.local created from .env.local.example"
else
    echo "Warning: .env.local.example not found!"
fi