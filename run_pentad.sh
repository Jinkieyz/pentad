#!/bin/bash
# run_pentad.sh - Generate PENTAD creatures
#
# Usage:
#   ./run_pentad.sh           # Generate 1 creature
#   ./run_pentad.sh 10        # Generate 10 creatures
#   ./run_pentad.sh 5 --screenshot  # Generate 5 with screenshots

COUNT=${1:-1}
EXTRA_ARGS="${@:2}"

cd "$(dirname "$0")"

# Try flatpak first, fall back to system blender
if command -v flatpak &> /dev/null && flatpak list | grep -q org.blender.Blender; then
    flatpak run --filesystem="$HOME" org.blender.Blender --background \
        --python generate_pentad.py -- --count "$COUNT" $EXTRA_ARGS
else
    blender --background --python generate_pentad.py -- --count "$COUNT" $EXTRA_ARGS
fi
