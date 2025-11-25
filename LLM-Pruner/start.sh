# python3 llama3.py --pruning_ratio 0.5 \
#                  --device cuda --eval_device cuda \
#                  --base_model meta-llama/Meta-Llama-3-8B \
#                  --block_wise --block_mlp_layer_start 4 --block_mlp_layer_end 30 \
#                  --block_attention_layer_start 4 --block_attention_layer_end 30 \
#                  --save_ckpt_log_name llama3_prune \
#                  --pruner_type taylor --taylor param_first \
#                  --max_seq_len 2048 \
#                  --test_after_train --test_before_train --save_model 


export PYTHONPATH='.'
python3 lm-evaluation-harness/main.py \
  --model hf-causal-experimental \
  --model_args checkpoint=./prune_log/llama3_prune/pytorch_model.bin,config_pretrained=meta-llama/Meta-Llama-3-8B,trust_remote_code=True \
  --tasks arc_easy,winogrande,hellaswag,arc_challenge,piqa \
  --no_cache 

