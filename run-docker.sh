PYTORCH_IMAGE=nvcr.io/nvidia/pytorch:24.06-py3
CHECKPOINT_PATH="/workspace/checkpoint" #<Specify path>
TENSORBOARD_LOGS_PATH="/home/mpi/megatron/tensorboard_logs" #<Specify path>
VOCAB_FILE="/workspace/data/gpt2-vocab.json" #<Specify path to file>/gpt2-vocab.json
MERGE_FILE="/workspace/data/gpt2-merges.txt" #<Specify path to file>/gpt2-merges.txt
DATA_PATH="/workspace/data/my-gpt" #<Specify path and file prefix>_text_document

docker run \
  --gpus=all \
  --ipc=host \
  --workdir /workspace/megatron-lm \
  -v /home/mpi/megatron/data:/workspace/data \
  -v /home/mpi/megatron/shared-data:/workspace/shared-data \
  -v /home/mpi/megatron/Megatron-LM:/workspace/megatron-lm \
  -v /home/mpi/megatron/checkpoint:/workspace/checkpoint \
  --ulimit memlock=-1 --ulimit stack=67108864 \
  nvcr.io/nvidia/pytorch:24.06-py3 \
  bash examples/gpt3/train_gpt3_175b_distributed.sh $CHECKPOINT_PATH $TENSORBOARD_LOGS_PATH $VOCAB_FILE $MERGE_FILE $DATA_PATH
