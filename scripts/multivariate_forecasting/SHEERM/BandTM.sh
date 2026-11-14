import pandas as pd

# Load your data
df = pd.read_csv('./dataset/load/Load House 2.csv')

# Combine 'Date' and 'Hour' into a single 'date' column
df['date'] = pd.to_datetime(df['Date'] + ' ' + df['Hour'])

# Drop the original separate columns
df = df.drop(columns=['Date', 'Hour'])

# Ensure 'date' is the first column (optional but good practice)
cols = ['date'] + [col for col in df.columns if col != 'date']
df = df[cols]

# Save the corrected CSV
df.to_csv('./dataset/load/Load House 2.csv', index=False)

print("CSV updated successfully with 'date' column.")


#!/bin/bash

export CUDA_VISIBLE_DEVICES=0
model_name=SimpleTM

python -u run.py \
  --is_training 1 \
  --lradj 'TST' \
  --patience 3 \
  --root_path ./dataset/load/ \
  --data_path "Load House 2.csv" \
  --model_id Load_House_2_BandAttn \
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
  --target 'Consumption (kW)' \
  --save_learning_curve 1 \
  --use_band_attention \
  --band_attention_hidden_dim 4 \
  --band_attention_activation softmax

python -u run.py \
  --is_training 1 \
  --lradj 'TST' \
  --patience 3 \
  --root_path ./dataset/load/ \
  --data_path "Load House 2.csv" \
  --model_id Load_House_2_BandAttn \
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
  --target 'Consumption (kW)' \
  --save_learning_curve 1 \
  --use_band_attention \
  --band_attention_hidden_dim 4 \
  --band_attention_activation softmax

python -u run.py \
  --is_training 1 \
  --lradj 'TST' \
  --patience 3 \
  --root_path ./dataset/load/ \
  --data_path "Load House 2.csv" \
  --model_id Load_House_2_BandAttn \
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
  --target 'Consumption (kW)' \
  --save_learning_curve 1 \
  --use_band_attention \
  --band_attention_hidden_dim 4 \
  --band_attention_activation softmax

python -u run.py \
  --is_training 1 \
  --lradj 'TST' \
  --patience 3 \
  --root_path ./dataset/load/ \
  --data_path "Load House 2.csv" \
  --model_id Load_House_2_BandAttn \
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
  --target 'Consumption (kW)' \
  --save_learning_curve 1 \
  --use_band_attention \
  --band_attention_hidden_dim 4 \
  --band_attention_activation softmax

