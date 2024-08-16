# chatglm2
ChatGLMForConditionalGeneration(
  (transformer): ChatGLMModel(
    (embedding): Embedding(
      (word_embeddings): Embedding(65024, 4096)
    )
    (rotary_pos_emb): RotaryEmbedding()
    (encoder): GLMTransformer(
      (layers): ModuleList(
        (0-27): 28 x GLMBlock(
          (input_layernorm): RMSNorm()
          (self_attention): SelfAttention(
            (query_key_value): Linear(in_features=4096, out_features=4608, bias=True)
            (core_attention): CoreAttention(
              (attention_dropout): Dropout(p=0.0, inplace=False)
            )
            (dense): Linear(in_features=4096, out_features=4096, bias=False)
          )
          (post_attention_layernorm): RMSNorm()
          (mlp): MLP(
            (dense_h_to_4h): Linear(in_features=4096, out_features=27392, bias=False)
            (dense_4h_to_h): Linear(in_features=13696, out_features=4096, bias=False)
          )
        )
      )
      (final_layernorm): RMSNorm()
    )
    (output_layer): Linear(in_features=4096, out_features=65024, bias=False)
  )
)

ChatGLMTokenizer(name_or_path='/root/data/sae/LLMmodel/base_models/chatglm2-6b', vocab_size=64794, model_max_length=1000000000000000019884624838656, is_fast=False, padding_side='left', truncation_side='right', special_tokens={'eos_token': '</s>', 'unk_token': '<unk>', 'pad_token': '<unk>'}, clean_up_tokenization_spaces=False),  added_tokens_decoder={
	
}
# fingptv3.1
PeftModelForCausalLM(
  (base_model): LoraModel(
    (model): ChatGLMForConditionalGeneration(
      (transformer): ChatGLMModel(
        (embedding): Embedding(
          (word_embeddings): Embedding(65024, 4096)
        )
        (rotary_pos_emb): RotaryEmbedding()
        (encoder): GLMTransformer(
          (layers): ModuleList(
            (0-27): 28 x GLMBlock(
              (input_layernorm): RMSNorm()
              (self_attention): SelfAttention(
                (query_key_value): Linear(
                  in_features=4096, out_features=4608, bias=True
                  (lora_dropout): ModuleDict(
                    (default): Dropout(p=0.1, inplace=False)
                  )
                  (lora_A): ModuleDict(
                    (default): Linear(in_features=4096, out_features=8, bias=False)
                  )
                  (lora_B): ModuleDict(
                    (default): Linear(in_features=8, out_features=4608, bias=False)
                  )
                  (lora_embedding_A): ParameterDict()
                  (lora_embedding_B): ParameterDict()
                )
                (core_attention): CoreAttention(
                  (attention_dropout): Dropout(p=0.0, inplace=False)
                )
                (dense): Linear(in_features=4096, out_features=4096, bias=False)
              )
              (post_attention_layernorm): RMSNorm()
              (mlp): MLP(
                (dense_h_to_4h): Linear(in_features=4096, out_features=27392, bias=False)
                (dense_4h_to_h): Linear(in_features=13696, out_features=4096, bias=False)
              )
            )
          )
          (final_layernorm): RMSNorm()
        )
        (output_layer): Linear(in_features=4096, out_features=65024, bias=False)
      )
    )
  )
)