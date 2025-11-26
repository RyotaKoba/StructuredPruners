lm_eval \
--model custom_checkpoint \
--model_args pretrained=meta-llama/Meta-Llama-3-8B,device_map=auto,dtype=float16,checkpoint=./prune_log/llama3_prune/pytorch_model.bin \
--tasks arc_easy,winogrande,hellaswag,arc_challenge,mmlu \
--batch_size 64 