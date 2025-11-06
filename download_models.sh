#!/bin/bash

# Script to download VLM model from S3 bucket
# This script downloads the pre-trained VLM model for image captioning

echo "================================================"
echo "VLM Demo - Model Download Script"
echo "================================================"
echo ""

# Create models directory if it doesn't exist
echo "Creating models directory..."
mkdir -p models

# Change to models directory
cd models

# Define your S3 bucket URL here
# Replace with your actual S3 bucket URL
S3_BUCKET_URL="https://your-bucket-name.s3.amazonaws.com/models"

# Note: The transformers library will automatically download the model
# from HuggingFace when first run, so this script is primarily for
# downloading custom models from S3 if you have them

echo ""
echo "Model configuration:"
echo "  - Using HuggingFace model: nlpconnect/vit-gpt2-image-captioning"
echo "  - Model will be downloaded automatically on first run"
echo "  - Cache location: ~/.cache/huggingface/"
echo ""

# If you have a custom model in S3, uncomment and modify the following:
# echo "Downloading VLM model from S3..."
# aws s3 cp ${S3_BUCKET_URL}/vit-gpt2-image-captioning.bin . --no-sign-request || \
# wget ${S3_BUCKET_URL}/vit-gpt2-image-captioning.bin || \
# curl -O ${S3_BUCKET_URL}/vit-gpt2-image-captioning.bin

# Check if download was successful
# if [ -f "vit-gpt2-image-captioning.bin" ]; then
#     echo "✓ Model downloaded successfully"
# else
#     echo "✗ Model download failed"
#     exit 1
# fi

echo "✓ Model setup complete!"
echo ""
echo "The VLM model will be automatically downloaded from HuggingFace"
echo "when you first run the application."
echo ""
echo "================================================"