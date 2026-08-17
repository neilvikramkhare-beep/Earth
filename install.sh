#!/usr/bin/env bash
# Installer for Earth Language on Unix-based systems (Linux, macOS)

echo "===================================="
echo "       Earth Language Setup"
echo "===================================="

# Get the directory where this script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Make the wrapper scripts executable
echo "Making scripts executable..."
chmod +x "$DIR/earth"
chmod +x "$DIR/earth-build"
chmod +x "$DIR/earth-ide"

# Determine target bin directory
if [ -d "$HOME/.local/bin" ]; then
    BIN_DIR="$HOME/.local/bin"
    mkdir -p "$BIN_DIR"
else
    BIN_DIR="/usr/local/bin"
    echo "Installing to $BIN_DIR may require sudo privileges."
fi

echo "Installing to $BIN_DIR..."

# Create symbolic links in the bin directory
ln -sf "$DIR/earth" "$BIN_DIR/earth"
ln -sf "$DIR/earth-build" "$BIN_DIR/earth-build"
ln -sf "$DIR/earth-ide" "$BIN_DIR/earth-ide"

echo "Installation Complete! You can now use the 'earth', 'earth-build', and 'earth-ide' commands globally."
echo "Please make sure $BIN_DIR is in your PATH."
