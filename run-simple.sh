PYTORCH_IMAGE=nvcr.io/nvidia/pytorch:24.06-py3
CHECKPOINT_PATH="/workspace/checkpoint" #<Specify path>
TENSORBOARD_LOGS_PATH="/home/mpi/megatron/tensorboard_logs" #<Specify path>
VOCAB_FILE="/workspace/data/gpt2-vocab.json" #<Specify path to file>/gpt2-vocab.json
MERGE_FILE="/workspace/data/gpt2-merges.txt" #<Specify path to file>/gpt2-merges.txt
DATA_PATH="/workspace/shared-data/gpt2-codeparrot_content_document" #<Specify path and file prefix>_text_document

examples/gpt3/train_gpt3_175b_distributed.sh $CHECKPOINT_PATH $TENSORBOARD_LOGS_PATH $VOCAB_FILE $MERGE_FILE $DATA_PATH
