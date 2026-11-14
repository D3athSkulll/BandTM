
#!/bin/bash

export CUDA_VISIBLE_DEVICES=0
model_name=SimpleTM

python -u run.py \
  --is_training 1 \
  --lradj 'TST' \
  --patience 3 \
  --root_path ./dataset/load/ \
  --data_path "Load House 2.csv" \
  --model_id Load_House_2 \
  --model "$model_name" \
  --data custom \
  --features MS \
  --seq_len 96 \
  --pred_len 96 \
  --e_layers 1 \
  --d_model 64 \
  --d_ff 128 \
  --learning_rate 0.001 \
  --batch_size 256 \
  --fix_seed 2025 \
  --use_norm 1 \
  --wv "db8" \
  --m 3 \
  --enc_in 4 \
  --dec_in 4 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --alpha 0.0 \
  --l1_weight 0 \
  --target 'Consumption (kW)'

python -u run.py \
  --is_training 1 \
  --lradj 'TST' \
  --patience 3 \
  --root_path ./dataset/load/ \
  --data_path "Load House 2.csv" \
  --model_id Load_House_2 \
  --model "$model_name" \
  --data custom \
  --features MS \
  --seq_len 96 \
  --pred_len 192 \
  --e_layers 1 \
  --d_model 64 \
  --d_ff 128 \
  --learning_rate 0.001 \
  --batch_size 256 \
  --fix_seed 2025 \
  --use_norm 1 \
  --wv "db8" \
  --m 3 \
  --enc_in 4 \
  --dec_in 4 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --alpha 0.0 \
  --l1_weight 0 \
  --target 'Consumption (kW)'

python -u run.py \
  --is_training 1 \
  --lradj 'TST' \
  --patience 3 \
  --root_path ./dataset/load/ \
  --data_path "Load House 2.csv" \
  --model_id Load_House_2 \
  --model "$model_name" \
  --data custom \
  --features MS \
  --seq_len 96 \
  --pred_len 336 \
  --e_layers 1 \
  --d_model 64 \
  --d_ff 128 \
  --learning_rate 0.001 \
  --batch_size 256 \
  --fix_seed 2025 \
  --use_norm 1 \
  --wv "db8" \
  --m 3 \
  --enc_in 4 \
  --dec_in 4 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --alpha 0.0 \
  --l1_weight 0 \
  --target 'Consumption (kW)'

python -u run.py \
  --is_training 1 \
  --lradj 'TST' \
  --patience 3 \
  --root_path ./dataset/load/ \
  --data_path "Load House 2.csv" \
  --model_id Load_House_2 \
  --model "$model_name" \
  --data custom \
  --features MS \
  --seq_len 96 \
  --pred_len 720 \
  --e_layers 1 \
  --d_model 64 \
  --d_ff 128 \
  --learning_rate 0.001 \
  --batch_size 256 \
  --fix_seed 2025 \
  --use_norm 1 \
  --wv "db8" \
  --m 3 \
  --enc_in 4 \
  --dec_in 4 \
  --c_out 1 \
  --des 'Exp' \
  --itr 1 \
  --alpha 0.0 \
  --l1_weight 0 \
  --target 'Consumption (kW)'
