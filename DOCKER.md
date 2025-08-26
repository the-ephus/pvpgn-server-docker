# Quick Start Guide for PvPGN Docker

This guide will get you running PvPGN in Docker in just a few minutes.

## Prerequisites

- Docker installed ([Get Docker](https://docs.docker.com/get-docker/))
- Docker Compose available (comes with Docker Desktop)

## Quick Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/pvpgn/pvpgn-server.git
   cd pvpgn-server
   ```

2. **Run the automated setup:**
   ```bash
   ./setup.sh
   ```
   
   Or manually:
   ```bash
   # Build the image
   docker build -t pvpgn .
   
   # Start the server
   docker compose up -d pvpgn-bnetd
   ```

3. **Your server is ready!**
   - **Battle.net:** `localhost:6112`
   - **WarCraft 3:** `localhost:6200`

## Client Configuration

### StarCraft / Brood War
- Add server: `localhost:6112`
- Create an account in-game

### WarCraft 3
- Use W3L or similar tool to bypass signature verification
- Connect to: `localhost:6112`

### Diablo 2 (requires full setup)
```bash
docker compose --profile diablo2 up -d
```
- Connect to: `localhost:6113`

## Configuration

Edit files in `./config/pvpgn/` and restart:
```bash
docker compose restart
```

## Common Commands

```bash
# View logs
docker compose logs -f

# Stop server
docker compose down

# Backup data
docker run --rm -v pvpgn-data:/data -v $(pwd):/backup alpine \
  tar czf /backup/pvpgn-backup.tar.gz -C /data .
```

For detailed documentation, see the main [README.md](README.md).