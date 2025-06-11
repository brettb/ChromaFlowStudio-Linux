#!/bin/bash

# Set Python path (default to system Python 3.10)
PYTHON_PATH="python3.10"

# Check if Python 3.10 is installed
if ! command -v $PYTHON_PATH &> /dev/null; then
    echo "Python 3.10 not found. Please install Python 3.10 or update the PYTHON_PATH in this script."
    echo "You can install it with: sudo apt-get install python3.10 python3.10-venv"
    exit 1
fi

echo "============================================================"
echo Creating virtual environment using:
echo '$($PYTHON_PATH --version)'
echo "============================================================"

# Create virtual environment
$PYTHON_PATH -m venv venv

# Check if virtual environment was created successfully
if [ $? -ne 0 ]; then
    echo "Failed to create virtual environment."
    echo "Make sure you have the required system packages installed:"
    echo sudo apt-get install python3.10-venv
    exit 1
fi

echo "Virtual environment created successfully in the 'venv' directory."
echo ""
echo "To activate the virtual environment, run:"
echo source venv/bin/activate
echo ""
echo "Unzip the main zip file to the root directory, this will replace the existing .bat files and requirements.txt"
echo unzip 'ChromaFlowStudio 1.0.0.3000.zip'./run.sh
echo ""
echo "Installing requirements..."
pip install -r requirements.txt

# Create necessary directories for ChromaDB
echo ""
echo "Setting up ChromaDB directories..."
mkdir -p ~/.chromaflow/data/TestDB ~/.chromaflow/models
chmod -R 755 ~/.chromaflow
echo "ChromaDB directories created at ~/.chromaflow/"

exit 0
