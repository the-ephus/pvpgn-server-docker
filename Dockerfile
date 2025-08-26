# Multi-stage build for PvPGN Server
FROM ubuntu:22.04 AS builder

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /pvpgn-source

# Copy source code
COPY . .

# Build PvPGN
RUN mkdir -p build && \
    cd build && \
    cmake \
        -DCMAKE_INSTALL_PREFIX=/usr/local/pvpgn \
        -DCMAKE_BUILD_TYPE=Release \
        -DWITH_MYSQL=OFF \
        -DWITH_LUA=OFF \
        .. && \
    make -j$(nproc) && \
    make install

# Runtime stage
FROM ubuntu:22.04

# Install runtime dependencies
RUN apt-get update && apt-get install -y \
    zlib1g \
    && rm -rf /var/lib/apt/lists/*

# Create pvpgn user
RUN useradd -r -s /bin/false -d /usr/local/pvpgn pvpgn

# Copy built binaries and config from builder stage
COPY --from=builder /usr/local/pvpgn /usr/local/pvpgn

# Create required directories
RUN mkdir -p \
    /usr/local/pvpgn/var/files \
    /usr/local/pvpgn/var/reports \
    /usr/local/pvpgn/var/chanlogs \
    /usr/local/pvpgn/var/userlogs \
    /usr/local/pvpgn/var/charinfo \
    /usr/local/pvpgn/var/charsave \
    /usr/local/pvpgn/var/bak \
    /usr/local/pvpgn/var/ladders \
    /usr/local/pvpgn/var/status \
    /usr/local/pvpgn/var/useraccounts \
    /usr/local/pvpgn/var/clans \
    /usr/local/pvpgn/logs && \
    chown -R pvpgn:pvpgn /usr/local/pvpgn/var /usr/local/pvpgn/logs

# Set working directory
WORKDIR /usr/local/pvpgn

# Expose standard PvPGN ports
# 6112 - Battle.net game port
# 6113 - Diablo 2 realm port (d2cs)
# 6200 - WarCraft 3 route port
EXPOSE 6112 6113 6200

# Create volume mount points for persistent data
VOLUME ["/usr/local/pvpgn/var", "/usr/local/pvpgn/etc", "/usr/local/pvpgn/logs"]

# Default command runs bnetd
CMD ["/usr/local/pvpgn/sbin/bnetd", "-f"]