python main.py \
--model meta-llama/Meta-Llama-3-8B \
--prune_method "wanda" \
--sparsity_ratio 0.5 \
--sparsity_type 2:4 \
--save ./pruned_model/Llama3-8B_Wanda-St_0.5p_2:4 \
--save_model ./pruned_model/Llama3-8B_Wanda-St_0.5p_2:4
