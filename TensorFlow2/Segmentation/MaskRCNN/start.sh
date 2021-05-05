# Create shared folders with container
mkdir -p data
mkdir -p weights

docker run --gpus all -it --rm --shm-size=2g --ulimit memlock=-1 --ulimit stack=67108864 -v $(pwd)/data:/data -v $(pwd)/weights:/weights nvidia_mrcnn_tf2