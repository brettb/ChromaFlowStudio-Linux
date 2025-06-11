#!/usr/bin/env python3
import os
from sentence_transformers import SentenceTransformer

def download_embeddings():
    model_name = "all-MiniLM-L6-v2"
    model_path = os.path.expanduser(f"~/.chromaflow/models/{model_name}")
    
    print(f"Downloading {model_name} model...")
    
    # Download the model (this will automatically cache it in the specified path)
    model = SentenceTransformer(model_name, cache_folder=os.path.dirname(model_path))
    
    print(f"\nModel downloaded to: {model_path}")
    print("\nModel information:")
    print(f"- Max Sequence Length: {model.max_seq_length}")
    print(f"- Embedding Dimension: {model.get_sentence_embedding_dimension()}")
    print("\nEmbedding model is ready to use!")

if __name__ == "__main__":
    download_embeddings()
