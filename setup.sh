#!/bin/bash

# PvPGN Docker Setup Script
# This script helps set up PvPGN with Docker

set -e

echo "PvPGN Docker Setup"
echo "=================="

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first:"
    echo "   https://docs.docker.com/get-docker/"
    exit 1
fi

# Check if Docker Compose is available
if command -v docker-compose &> /dev/null; then
    DOCKER_COMPOSE="docker-compose"
elif docker compose version &> /dev/null; then
    DOCKER_COMPOSE="docker compose"
else
    echo "❌ Docker Compose is not available. Please install Docker Compose:"
    echo "   https://docs.docker.com/compose/install/"
    exit 1
fi

echo "✅ Docker and Docker Compose are available"

# Check if config directory exists
if [ ! -d "./config/pvpgn" ]; then
    echo "❌ Configuration directory not found."
    echo "   Make sure you're in the PvPGN directory and config files are present."
    exit 1
fi

echo "✅ Configuration directory found"

# Build the Docker image
echo ""
echo "🔨 Building PvPGN Docker image..."
docker build -t pvpgn .

echo ""
echo "✅ PvPGN Docker image built successfully!"

# Prompt user for setup type
echo ""
echo "Choose your setup:"
echo "1) Basic (Battle.net games only - StarCraft, WarCraft, etc.)"
echo "2) Full (Include Diablo 2 support)"
echo ""
read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        echo ""
        echo "🚀 Starting Basic PvPGN setup..."
        $DOCKER_COMPOSE up -d pvpgn-bnetd
        services="pvpgn-bnetd"
        ports="6112 (Battle.net), 6200 (WarCraft 3 route)"
        ;;
    2)
        echo ""
        echo "🚀 Starting Full PvPGN setup with Diablo 2 support..."
        $DOCKER_COMPOSE --profile diablo2 up -d
        services="pvpgn-bnetd, pvpgn-d2cs, pvpgn-d2dbs"
        ports="6112 (Battle.net), 6113 (Diablo 2), 6200 (WarCraft 3 route)"
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

echo ""
echo "🎉 PvPGN is now running!"
echo ""
echo "Services: $services"
echo "Ports: $ports"
echo ""
echo "Useful commands:"
echo "  View logs:    $DOCKER_COMPOSE logs -f"
echo "  Stop server:  $DOCKER_COMPOSE down"
echo "  Restart:      $DOCKER_COMPOSE restart"
echo ""
echo "Server endpoints:"
echo "  Battle.net:   localhost:6112"
if [ "$choice" = "2" ]; then
    echo "  Diablo 2:     localhost:6113"
fi
echo "  WarCraft 3:   localhost:6200"
echo ""
echo "Configuration files are in ./config/pvpgn/"
echo "Edit them and run '$DOCKER_COMPOSE restart' to apply changes."