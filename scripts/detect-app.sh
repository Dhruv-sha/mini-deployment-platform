#!/bin/bash

echo "Detecting application type..."
echo ""

if [ -f "package.json" ]; then
    echo "Application detected: Node.js"
    echo "APP_TYPE=node"

elif [ -f "requirements.txt" ] || [ -f "pyproject.toml" ]; then
    echo "Application detected: Python"
    echo "APP_TYPE=python"

elif [ -f "pom.xml" ]; then
    echo "Application detected: Java (Maven)"
    echo "APP_TYPE=java"

elif [ -f "go.mod" ]; then
    echo "Application detected: Go"
    echo "APP_TYPE=go"

else
    echo "ERROR: Unable to detect application type."
    exit 1
fi