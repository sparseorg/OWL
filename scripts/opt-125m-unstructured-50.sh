#!/bin/bash
SCRIPT_DIR=$(dirname "$0")
ROOT_DIR=$(realpath "$SCRIPT_DIR/..")
export PYTHONPATH="$ROOT_DIR:$PYTHONPATH"
export PYTHONPATH="$ROOT_DIR/lib:$PYTHONPATH"
export CUDA_VISIBLE_DEVICES=0

python main.py    \
    --model_name_or_path /root/OWL/modelzoo/opt-125m    \
    --Lamda 0.08 \
    --Hyper_m 5 \
    --model /root/OWL/modelzoo/opt-125m     \
    --prune_method sparsegpt_owl     \
    --sparsity_ratio 0.7 \
    --sparsity_type unstructured \
    --save save_test/