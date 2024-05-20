rm build -rf
mkdir build
pip install accelerate bs4 easydict flwr llama_index_core llama_index_embeddings_huggingface llama_index_llms_huggingface
easydict timm scikit-image --user --break-system-packages
sh torch_scatter.sh 
#sh torch_vision.sh 
sh pylcs.sh 

