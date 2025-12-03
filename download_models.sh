#!/bin/bash

# Create the models directory if it doesn't exist
mkdir -p models

# Download models from your S3 bucket
echo "Downloading vision language model..."
aws s3 cp s3://finetuning-demo-models/vit-gpt2-image-captioning/ models/vit-gpt2-image-captioning/ --recursive

echo "Models downloaded successfully!"
