#!/bin/bash

cd ../src

# ChatGLM-2
#for i in {0,5}; do
python -u hf_causal_model.py \
    --data_dir ../data \
    --model_name_or_path /root/data/sae/LLMmodel/base_models/chatglm2-6b \
    --save_dir ../results/fingpt-6B \
    --num_few_shot 0 \
    --lora_weights /root/data/sae/LLMmodel/fingpt-mt_chatglm2-6b_lora
#done
