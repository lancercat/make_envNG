rm build -rf
mkdir build
pip install easydict --user --break-system-packages
sh torch_scatter.sh 
#sh torch_vision.sh 
sh pylcs.sh 

