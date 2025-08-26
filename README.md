Player vs Player Gaming Network - PRO
=====
![](http://i.imgur.com/LfI3hXo.png)

PvPGN is a free and open source cross-platform server software that supports Battle.net and and Westwood Online game clients. PvPGN-PRO is a fork of the official PvPGN project, whose development stopped in 2011, and aims to provide continued maintenance and additional features for PvPGN.

[![License (GPL version 2)](https://img.shields.io/badge/license-GNU%20GPL%20version%202-blue.svg?style=flat-square)](http://opensource.org/licenses/GPL-2.0)
![Language (C++)](https://img.shields.io/badge/powered_by-C++-brightgreen.svg?style=flat-square)
[![Language (Lua)](https://img.shields.io/badge/powered_by-Lua-red.svg?style=flat-square)](https://lua.org)
[![Github Releases (by Release)](https://img.shields.io/github/downloads/pvpgn/pvpgn-server/1.99.7.2.1/total.svg?maxAge=2592000)]()

[![Compiler (Microsoft Visual C++)](https://img.shields.io/badge/compiled_with-Microsoft%20Visual%20C++-yellow.svg?style=flat-square)](https://msdn.microsoft.com/en-us/vstudio/hh386302.aspx)
[![Compiler (LLVM/Clang)](https://img.shields.io/badge/compiled_with-LLVM/Clang-lightgrey.svg?style=flat-square)](http://clang.llvm.org/)
[![Compiler (GCC)](https://img.shields.io/badge/compiled_with-GCC-yellowgreen.svg?style=flat-square)](https://gcc.gnu.org/)

[![Build Status](https://travis-ci.org/pvpgn/pvpgn-server.svg?branch=master)](https://travis-ci.org/pvpgn/pvpgn-server)
[![Build status](https://ci.appveyor.com/api/projects/status/dqoj9lkvhfwthmn6)](https://ci.appveyor.com/project/HarpyWar/pvpgn)

[Deleaker](http://www.deleaker.com/) helps us find memory leaks.

## Tracking
By default, tracking is enabled and is only used for the purpose of sending informational data (e.g. server description, homepage, uptime, amount of users) to tracking servers. To disable tracking, set ````track = 0```` in ````conf/bnetd.conf````.

## Supported Clients
- **WarCraft 2: Battle.net Edition**: 2.02a, 2.02b
- **WarCraft 3: Reign of Chaos**\*: 1.13a, 1.13b, 1.14a, 1.14b, 1.15a, 1.16a, 1.17a, 1.18a, 1.19a, 1.19b, 1.20a, 1.20b, 1.20c, 1.20d, 1.20e, 1.21a, 1.21b, 1.22a, 1.23a, 1.24a, 1.24b, 1.24c, 1.24d, 1.24e, 1.25b, 1.26a, 1.27a, 1.27b, 1.28, 1.28.1, 1.28.2, 1.28.4, 1.28.5
- **WarCraft 3: The Frozen Throne**\*: 1.13a, 1.13b, 1.14a, 1.14b, 1.15a, 1.16a, 1.17a, 1.18a, 1.19a, 1.19b, 1.20a, 1.20b, 1.20c, 1.20d, 1.20e, 1.21a, 1.21b, 1.22a, 1.23a, 1.24a, 1.24b, 1.24c, 1.24d, 1.24e, 1.25b, 1.26a, 1.27a, 1.27b, 1.28, 1.28.1, 1.28.2, 1.28.4, 1.28.5
- **StarCraft**: 1.08, 1.08b, 1.09, 1.09b, 1.10, 1.11, 1.11b, 1.12, 1.12b, 1.13, 1.13b, 1.13c, 1.13d, 1.13e, 1.13f, 1.14, 1.15, 1.15.1, 1.15.2, 1.15.3, 1.16, 1.16.1, 1.17.0, 1.18.0
- **StarCraft: Brood War**: 1.08, 1.08b, 1.09, 1.09b, 1.10, 1.11, 1.11b, 1.12, 1.12b, 1.13, 1.13b, 1.13c, 1.13d, 1.13e, 1.13f, 1.14, 1.15, 1.15.1, 1.15.2, 1.15.3, 1.16, 1.16.1, 1.17.0, 1.18.0
- **Diablo**: 1.09, 1.09b
- **Diablo 2**: 1.10, 1.11, 1.11b, 1.12a, 1.13c, 1.14a, 1.14b, 1.14c, 1.14d
- **Diablo 2: Lord of Destruction**: 1.10, 1.11, 1.11b, 1.12a, 1.13c, 1.14a, 1.14b, 1.14c, 1.14d
- **Westwood Chat Client**: 4.221
- **Command & Conquer**: Win95 1.04a (using Westwood Chat)
- **Command & Conquer: Red Alert**: Win95 2.00 (using Westwood Chat), Win95 3.03
- **Command & Conquer: Red Alert 2**: 1.006
- **Command & Conquer: Tiberian Sun**: 2.03 ST-10
- **Command & Conquer: Tiberian Sun Firestorm**: 2.03 ST-10
- **Command & Conquer: Yuri's Revenge**: 1.001
- **Command & Conquer: Renegade**: 1.037
- **Nox**: 1.02b
- **Nox Quest**: 1.02b
- **Dune 2000**: 1.06
- **Emperor: Battle for Dune**: 1.09

\* WarCraft 3 clients are unable to connect to PvPGN servers without a client-side modification, through tools such as [W3L](https://github.com/w3lh/w3l), to disable server signature verification.
\* StarCraft clients beginning with patch 1.18 will not be supported by PvPGN-PRO due to protocol changes. A 1.18.0 versioncheck entry is included for compatibility with bot software.

## Support
[Create an issue](https://github.com/pvpgn/pvpgn-server/issues) if you have any questions, suggestions, or anything else to say about PvPGN-PRO. Please note that D2GS is not part of the PvPGN project and is therefore unsupported here.
Set `loglevels = fatal,error,warn,info,debug,trace` in `bnetd.conf` before obtaining logs and posting them.

## Development
Submit pull requests to contribute to this project. Utilize C++11 features and adhere to the [C++ Core Guidelines](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md) whenever possible.

## Building

### Docker (Recommended)

The easiest way to run PvPGN is using Docker. This method provides a consistent environment and requires no manual dependency installation.

#### Quick Start

1. **Clone and build the Docker image:**
   ```bash
   git clone https://github.com/pvpgn/pvpgn-server.git
   cd pvpgn-server
   docker build -t pvpgn .
   ```

2. **Run the server:**
   ```bash
   # Basic setup - runs bnetd only
   docker compose up pvpgn-bnetd
   
   # Full setup including Diablo 2 servers
   docker compose --profile diablo2 up
   ```

3. **Your PvPGN server is now running!**
   - Battle.net service: `localhost:6112`
   - WarCraft 3 route: `localhost:6200`
   - Diablo 2 realm: `localhost:6113` (if using diablo2 profile)

#### Docker Configuration

**Default Setup:**
- Configuration files are in `./config/pvpgn/` (mounted read-only)
- User accounts and data persist in Docker volumes
- Logs are stored in a separate Docker volume

**Available Services:**
- `pvpgn-bnetd`: Main Battle.net daemon (always included)
- `pvpgn-d2cs`: Diablo 2 Character Server (diablo2 profile)
- `pvpgn-d2dbs`: Diablo 2 Database Server (diablo2 profile)

**Volumes:**
- `pvpgn-data`: User accounts, character saves, and game data
- `pvpgn-logs`: Server logs
- `./config/pvpgn`: Configuration files (host directory)

**Ports:**
- `6112`: Battle.net game port (StarCraft, WarCraft, Diablo)
- `6113`: Diablo 2 realm port
- `6200`: WarCraft 3 route port

**Customizing Configuration:**
1. Copy default config: `docker cp $(docker create pvpgn):/usr/local/pvpgn/etc/pvpgn ./config/`
2. Edit files in `./config/pvpgn/` as needed
3. Restart containers: `docker compose restart`

**Common Configuration Changes:**
- Edit `bnetd.conf` to customize server name, MOTD, etc.
- Edit `address_translation.conf` if running behind NAT
- Edit `versioncheck.json` to control client version requirements

**Advanced Usage:**

```bash
# Build with MySQL support
docker build --build-arg WITH_MYSQL=ON -t pvpgn-mysql .

# Run with custom config location
docker run -v /path/to/config:/usr/local/pvpgn/etc/pvpgn:ro pvpgn

# Run in debug mode
docker run pvpgn /usr/local/pvpgn/sbin/bnetd -D

# View logs
docker compose logs -f pvpgn-bnetd
```

For more detailed Docker configuration, see [Docker Documentation](#docker-documentation) below.

### Manual Building

See [docs/ports.md](https://github.com/pvpgn/pvpgn-server/blob/master/docs/ports.md) for operating systems and compilers that have been confirmed to work with PvPGN. Any operating system that supports WinAPI or POSIX, and any C++11 compliant compiler should be able to build PvPGN. The CMake files have been hardcoded to reject compilers older than Visual Studio 2015 and GCC 5.1.

#### Windows
Use [Magic Builder](https://github.com/pvpgn/pvpgn-magic-builder).

Alternatively, use cmake to generate the .sln project and build it from Visual Studio.
```
cmake -g "Visual Studio 14 2015" -H./ -B./build
```
This will generate .sln in `build` directory.

#### Linux in general
Do not blindly run these commands. The main problem with older distributions is installing CMake 3.2.x and GCC 5, so external repositories are used in the examples.

```
apt-get install git install cmake make build-essential zlib1g-dev
apt-get install liblua5.1-0-dev #Lua support
apt-get install mysql-server mysql-client libmysqlclient-dev #MySQL support
cd /home
git clone https://github.com/pvpgn/pvpgn-server.git
cmake -D CMAKE_INSTALL_PREFIX=/usr/local/pvpgn -D WITH_MYSQL=true -D WITH_LUA=true ../
make
make install
```

#### Ubuntu 16.04, 18.04
```
sudo apt-get -y install build-essential git cmake zlib1g-dev
git clone https://github.com/pvpgn/pvpgn-server.git
cd pvpgn-server && cmake -G "Unix Makefiles" -H./ -B./build
cd build && make
```

#### Ubuntu 14.04
```
sudo apt-get -y install build-essential zlib1g-dev git
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get -y update
sudo apt-get -y install gcc-5 g++-5
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 60 --slave /usr/bin/g++ g++ /usr/bin/g++-5
sudo add-apt-repository -y ppa:george-edison55/cmake-3.x
sudo apt-get update
sudo apt-get -y install cmake
git clone https://github.com/pvpgn/pvpgn-server.git
cd pvpgn-server && cmake -G "Unix Makefiles" -H./ -B./build
cd build && make
```

#### Debian 8 with clang compiler
```
sudo apt-get -y install build-essential zlib1g-dev clang libc++-dev git
wget https://cmake.org/files/v3.7/cmake-3.7.1-Linux-x86_64.tar.gz
tar xvfz cmake-3.7.1-Linux-x86_64.tar.gz
git clone https://github.com/pvpgn/pvpgn-server.git
cd pvpgn-server && CC=/usr/bin/clang CXX=/usr/bin/clang++ ../cmake-3.7.1-Linux-x86_64/bin/cmake -G "Unix Makefiles" -H./ -B./build
cd build && make
```

#### CentOS 7
```
sudo yum -y install epel-release centos-release-scl
sudo yum -y install git zlib-devel cmake3 devtoolset-4-gcc*
sudo ln -s /usr/bin/cmake3 /usr/bin/cmake
git clone https://github.com/pvpgn/pvpgn-server.git
cd pvpgn-server
CC=/opt/rh/devtoolset-4/root/usr/bin/gcc CXX=/opt/rh/devtoolset-4/root/usr/bin/g++ cmake -G "Unix Makefiles" -H./ -B./build
cd build && make
```

#### Fedora 25
```
sudo dnf -y install gcc-c++ gcc make zlib-devel cmake git
git clone https://github.com/pvpgn/pvpgn-server.git
cd pvpgn-server
cmake -G "Unix Makefiles" -H./ -B./build
cd build && make
```

#### FreeBSD 11
```
sudo pkg install -y git cmake
git clone https://github.com/pvpgn/pvpgn-server.git
cd pvpgn-server
cmake -G "Unix Makefiles" -H./ -B./build
cd build && make
```

Full instructions: [Русский](http://harpywar.com/?a=articles&b=2&c=1&d=74) | [English](http://harpywar.com/?a=articles&b=2&c=1&d=74&lang=en)

## Hosting on LAN or VPS with private IP address
Some VPS providers do not assign your server a direct public IP. If that is the case or you host at home behind NAT you need to setup the route translation in `address_translation.conf`. The public address is pushed as the route server address to game clients when seeking games. Failure to push the correct address to game clients results in players not being able to match and join games (long game search and error).

If your network interface is directly bound to public IP, PvPGN can figure it out on it's own and this step is not necessary.

## License

    This program is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License
    as published by the Free Software Foundation; either version 2
    of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

## Docker Documentation

### Overview

This repository includes Docker support for easy deployment of PvPGN servers. The Docker setup uses a multi-stage build to create optimized runtime containers with minimal overhead.

### Architecture

- **Multi-stage build**: Separate build and runtime environments for minimal image size
- **Service separation**: Each PvPGN daemon runs in its own container
- **Volume persistence**: User data and logs persist across container restarts
- **Network isolation**: Services communicate through a private Docker network

### Services

#### pvpgn-bnetd (Main Service)
The core Battle.net daemon that handles game connections for most supported games.

**Ports:**
- 6112: Main Battle.net port
- 6200: WarCraft 3 route port

**Supported Games:**
- StarCraft / Brood War
- WarCraft 2 Battle.net Edition
- WarCraft 3 Reign of Chaos / The Frozen Throne
- Diablo (basic support)
- Command & Conquer series (Westwood Online)

#### pvpgn-d2cs (Diablo 2 Character Server)
Handles Diablo 2 character management and realm connections.

**Port:** 6113
**Games:** Diablo 2, Diablo 2: Lord of Destruction

#### pvpgn-d2dbs (Diablo 2 Database Server)
Manages Diablo 2 character database storage.

**No exposed ports** (internal communication only)

### Quick Start Examples

```bash
# Just Battle.net games (StarCraft, WarCraft, etc.)
docker compose up pvpgn-bnetd

# Full Diablo 2 support
docker compose --profile diablo2 up

# Run in background
docker compose up -d

# View logs
docker compose logs -f

# Stop services
docker compose down
```

> **Note:** These examples use `docker compose` (modern syntax). If you have the older standalone docker-compose installed, use `docker-compose` instead.

### Configuration Management

The Docker setup mounts configuration files from the host directory `./config/pvpgn/` into containers as read-only. This allows you to modify server settings without rebuilding the Docker image.

**Initial setup:**
```bash
# Configuration files are included in the repository
# Edit any files in ./config/pvpgn/ as needed
nano ./config/pvpgn/bnetd.conf
```

**Key configuration files:**
- `bnetd.conf`: Main server configuration
- `d2cs.conf`: Diablo 2 character server settings
- `d2dbs.conf`: Diablo 2 database server settings
- `address_translation.conf`: NAT/firewall configuration
- `versioncheck.json`: Client version requirements

**Applying changes:**
```bash
# Restart services to apply config changes
docker compose restart
```

### Data Persistence

User accounts, character saves, and logs are stored in Docker volumes that persist across container restarts:

- `pvpgn-data`: User accounts, character data, game files
- `pvpgn-logs`: Server log files

**Managing data:**
```bash
# Backup user data
docker run --rm -v pvpgn-data:/data -v $(pwd):/backup alpine \
  tar czf /backup/pvpgn-backup.tar.gz -C /data .

# Restore user data
docker run --rm -v pvpgn-data:/data -v $(pwd):/backup alpine \
  tar xzf /backup/pvpgn-backup.tar.gz -C /data

# View data location
docker volume inspect pvpgn-data
```

### Networking

The default configuration binds to all interfaces (`0.0.0.0`) which works correctly in Docker. For external access, ensure the following ports are accessible:

**Required ports:**
- 6112 (TCP): Battle.net games
- 6200 (TCP): WarCraft 3 routing

**Optional ports:**
- 6113 (TCP): Diablo 2 realm (if using d2cs)

**For NAT/Firewall environments:**
Edit `./config/pvpgn/address_translation.conf` to configure IP address translation.

### Customization

#### Build Arguments

```bash
# Build with MySQL support
docker build --build-arg WITH_MYSQL=ON --build-arg WITH_LUA=ON -t pvpgn-custom .

# Build with SQLite support
docker build --build-arg WITH_SQLITE3=ON -t pvpgn-sqlite .
```

#### Custom Docker Compose

```yaml
version: '3.8'
services:
  pvpgn:
    build: .
    ports:
      - "6112:6112"
    volumes:
      - ./my-config:/usr/local/pvpgn/etc/pvpgn:ro
      - pvpgn-data:/usr/local/pvpgn/var
    environment:
      - TZ=America/New_York
```

### Troubleshooting

**Common issues:**

1. **Port conflicts:**
   ```bash
   # Check if ports are in use
   netstat -tulpn | grep 6112
   
   # Use different ports
   docker compose run -p 16112:6112 pvpgn-bnetd
   ```

2. **Configuration errors:**
   ```bash
   # Check container logs
   docker compose logs pvpgn-bnetd
   
   # Run in debug mode
   docker run --rm pvpgn /usr/local/pvpgn/sbin/bnetd -D
   ```

3. **Permission issues:**
   ```bash
   # Fix config permissions
   sudo chown -R $USER:$USER ./config/
   ```

4. **NAT/Firewall problems:**
   - Edit `address_translation.conf` to map internal container IPs to external addresses
   - Ensure firewall allows traffic on required ports

### Performance Tuning

For production deployments:

```yaml
version: '3.8'
services:
  pvpgn-bnetd:
    build: .
    restart: unless-stopped
    deploy:
      resources:
        limits:
          memory: 512M
          cpus: '1.0'
    ulimits:
      nofile:
        soft: 65536
        hard: 65536
```

### Security Considerations

- Configuration files are mounted read-only to prevent container compromise
- Services run as non-root user `pvpgn`
- Use Docker secrets for sensitive configuration in production
- Regularly update the base Ubuntu image for security patches

### Development

For development and testing:

```bash
# Build development image
docker build -t pvpgn-dev .

# Run with source code mounted
docker run -v $(pwd):/src pvpgn-dev

# Interactive debugging
docker run -it --entrypoint /bin/bash pvpgn-dev
```