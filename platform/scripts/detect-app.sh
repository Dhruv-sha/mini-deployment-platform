#!/bin/bash

if [ -f "package.json" ]; then
    echo "node"

elif [ -f "requirements.txt" ] || [ -f "pyproject.toml" ]; then
    echo "python"

elif [ -f "pom.xml" ]; then
    echo "java"

elif [ -f "go.mod" ]; then
    echo "go"

else
    echo "unknown"
    exit 1
fi