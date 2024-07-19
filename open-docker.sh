docker run \
  --gpus=all \
  --ipc=host \
  --workdir /workspace/megatron-lm \
  -v /home/mpi/megatron/data:/workspace/data \
  -v /home/mpi/megatron/shared-data:/workspace/shared-data \
  -v /home/mpi/megatron/Megatron-LM:/workspace/megatron-lm \
  -v /home/mpi/megatron/checkpoint:/workspace/checkpoint \
  --ulimit memlock=-1 --ulimit stack=67108864 \
  -it nvcr.io/nvidia/pytorch:24.06-py3 \
  bash
