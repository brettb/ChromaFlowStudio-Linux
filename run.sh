#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Change to the script's directory
cd "$SCRIPT_DIR" || exit 1

# Function to check if model exists
check_model() {
    local model_name="all-MiniLM-L6-v2"
    local model_dir="$HOME/.chromaflow/models/$model_name"
    
    # Check if model directory exists and has required files
    if [ -d "$model_dir" ] && [ -f "$model_dir/modules.json" ] && [ -f "$model_dir/config_sentence_transformers.json" ]; then
        return 0  # Model exists
    else
        return 1  # Model doesn't exist
    fi
}

# Check if model exists
if ! check_model; then
    echo "Embedding model not found."
    read -p "Do you want to download the default embedding model? (y/n) " -n 1 -r
    echo    # move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "Downloading embedding model..."
        if [ -f "download_embeddings.py" ]; then
            source "$SCRIPT_DIR/venv/bin/activate"
            python download_embeddings.py
            deactivate
            
            # Verify download was successful
            if ! check_model; then
                echo "Error: Failed to download the embedding model."
                exit 1
            fi
        else
            echo "Error: download_embeddings.py not found."
            exit 1
        fi
    else
        echo "Skipping model download. The application may not work correctly without the embedding model."
        read -p "Continue without the model? (y/n) " -n 1 -r
        echo
        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            echo "Exiting..."
            exit 0
        fi
    fi
fi

# Set environment variables
export CHROMA_SERVER_CORS_ALLOW_ORIGINS='["*"]'
export TRANSFORMERS_CACHE="$HOME/.huggingface/cache"

# Activate the virtual environment
source "$SCRIPT_DIR/venv/bin/activate"

# Run the Flask app in the background, listening on all interfaces
nohup python "$SCRIPT_DIR/app.py" --host 0.0.0.0 --port 5000 > "$SCRIPT_DIR/app.log" 2>&1 &

# Get the process ID
FLASK_PID=$!

# Save the process ID to a file
echo $FLASK_PID > "$SCRIPT_DIR/flask_app.pid"

echo "=========================================="
echo "Activating Python 3.10 Virtual Environment"
echo "Launching Chroma Flow Studio"
echo "=========================================="
echo ""
echo "###########################"
echo "# The application is now running on http://0.0.0.0:5000"
echo "# Logs are being written to: $SCRIPT_DIR/app.log"
echo "# To stop the server, run: pkill -f \"python app.py\""
echo "###########################"
echo ""

exit 0
