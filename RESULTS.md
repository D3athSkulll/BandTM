# Results

Band Attention is compared with SimpleTM and three other forecasters (iTransformer, Autoformer, FEDformer).

**Setup:** lookback 96, multivariate → univariate, horizons 4 / 32 / 48 / 96 / 192 steps (1 / 8 / 12 / 24 / 48 h), one run per configuration. For MSE, MAE, RMSE, median absolute error, max error and SMAPE lower is better; for R² and explained variance (EVS) higher is better. **Bold** = best in the column (ties both bold).

## Summary

- **Load House 2 (SHEERM):** avg MSE 1.030 → 1.023 (-0.7%), avg MAE 0.464 → 0.461 (-0.5%) vs SimpleTM.
- **Load House 3 (SHEERM):** avg MSE 0.737 → 0.748 (+1.5%), avg MAE 0.392 → 0.395 (+0.7%) vs SimpleTM.
- **ECL:** avg MSE 0.228 → 0.224 (-1.6%), avg MAE 0.335 → 0.336 (+0.2%) vs SimpleTM.
- **Biggest gain is at 1 hour on Load House 2:** MAE 0.434 → 0.426 (-2.0%), median absolute error 0.241 → 0.224 (-6.9%).
- The gain is modest and not uniform: on Load House 3 plain SimpleTM is slightly better on average, and on ECL average MSE improves but MAE is level and the shortest horizon is worse.
- Each configuration was run once, so differences under 1% may be run-to-run noise. Band Attention is best seen as a very cheap option whose benefit depends on the dataset, not a general improvement.

## Load House 2 (SHEERM)

### MSE and MAE per horizon

| Model | 4 (1 h) MSE | 4 (1 h) MAE | 32 (8 h) MSE | 32 (8 h) MAE | 48 (12 h) MSE | 48 (12 h) MAE | 96 (24 h) MSE | 96 (24 h) MAE | 192 (48 h) MSE | 192 (48 h) MAE | Avg MSE | Avg MAE |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| iTransformer | 0.938 | 0.453 | 1.054 | 0.467 | 1.058 | 0.470 | 1.068 | **0.467** | 1.096 | **0.473** | 1.043 | 0.466 |
| Autoformer | 0.963 | 0.487 | 1.054 | 0.497 | 1.098 | 0.498 | 1.083 | 0.481 | **1.070** | 0.488 | 1.054 | 0.490 |
| FEDformer | 1.558 | 0.772 | 1.640 | 0.782 | 1.656 | 0.793 | 1.591 | 0.771 | 1.551 | 0.771 | 1.599 | 0.778 |
| SimpleTM | **0.890** | 0.434 | 1.041 | 0.467 | 1.056 | 0.468 | 1.075 | 0.471 | 1.090 | 0.478 | 1.030 | 0.464 |
| **SimpleTM + Band Attention** | **0.890** | **0.426** | **1.031** | **0.465** | **1.051** | **0.465** | **1.061** | 0.477 | 1.084 | 0.475 | **1.023** | **0.461** |

### All metrics, averaged over the five horizons

| Model | MSE | MAE | RMSE | R² | EVS | MedAE | MaxErr | SMAPE |
|---|---|---|---|---|---|---|---|---|
| iTransformer | 1.043 | 0.466 | 1.021 | 0.075 | 0.079 | 0.252 | 14.779 | 1.180 |
| Autoformer | 1.054 | 0.490 | 1.026 | 0.065 | 0.068 | 0.294 | **14.619** | 1.271 |
| FEDformer | 1.599 | 0.778 | 1.265 | -4.664 | -0.377 | 0.520 | 16.064 | 1.368 |
| SimpleTM | 1.030 | 0.464 | 1.014 | 0.088 | 0.091 | 0.256 | 14.665 | 1.201 |
| **SimpleTM + Band Attention** | **1.023** | **0.461** | **1.011** | **0.094** | **0.098** | **0.251** | 14.639 | **1.179** |

### SimpleTM vs Band Attention, every metric per horizon

| Horizon | Model | MSE | MAE | RMSE | R² | EVS | MedAE | MaxErr | SMAPE |
|---|---|---|---|---|---|---|---|---|---|
| 4 (1 h) | SimpleTM | 0.890 | 0.434 | 0.943 | 0.214 | 0.216 | 0.241 | 14.569 | 1.112 |
| 4 (1 h) | SimpleTM + Band Attention | 0.890 | 0.426 | 0.943 | 0.213 | 0.220 | 0.224 | 14.634 | 1.063 |
| 32 (8 h) | SimpleTM | 1.041 | 0.467 | 1.020 | 0.076 | 0.078 | 0.258 | 14.700 | 1.210 |
| 32 (8 h) | SimpleTM + Band Attention | 1.031 | 0.465 | 1.016 | 0.084 | 0.087 | 0.254 | 14.675 | 1.192 |
| 48 (12 h) | SimpleTM | 1.056 | 0.468 | 1.028 | 0.062 | 0.066 | 0.258 | 14.675 | 1.211 |
| 48 (12 h) | SimpleTM + Band Attention | 1.051 | 0.465 | 1.025 | 0.066 | 0.071 | 0.253 | 14.671 | 1.197 |
| 96 (24 h) | SimpleTM | 1.075 | 0.471 | 1.037 | 0.051 | 0.055 | 0.258 | 14.698 | 1.221 |
| 96 (24 h) | SimpleTM + Band Attention | 1.061 | 0.477 | 1.030 | 0.063 | 0.065 | 0.261 | 14.640 | 1.217 |
| 192 (48 h) | SimpleTM | 1.090 | 0.478 | 1.044 | 0.038 | 0.041 | 0.265 | 14.684 | 1.253 |
| 192 (48 h) | SimpleTM + Band Attention | 1.084 | 0.475 | 1.041 | 0.043 | 0.047 | 0.261 | 14.576 | 1.224 |

## Load House 3 (SHEERM)

### MSE and MAE per horizon

| Model | 4 (1 h) MSE | 4 (1 h) MAE | 32 (8 h) MSE | 32 (8 h) MAE | 48 (12 h) MSE | 48 (12 h) MAE | 96 (24 h) MSE | 96 (24 h) MAE | 192 (48 h) MSE | 192 (48 h) MAE | Avg MSE | Avg MAE |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| iTransformer | 0.825 | 0.407 | 0.793 | 0.398 | 0.803 | 0.399 | 0.801 | 0.404 | 0.785 | 0.395 | 0.801 | 0.401 |
| Autoformer | 0.700 | 0.415 | 0.761 | 0.412 | **0.756** | 0.413 | 0.760 | 0.418 | **0.757** | 0.421 | 0.747 | 0.416 |
| FEDformer | 1.147 | 0.704 | 1.216 | 0.689 | 1.210 | 0.683 | 1.213 | 0.679 | 1.261 | 0.694 | 1.210 | 0.690 |
| SimpleTM | **0.656** | **0.384** | **0.757** | 0.401 | 0.757 | **0.391** | **0.758** | 0.390 | **0.757** | 0.393 | **0.737** | **0.392** |
| **SimpleTM + Band Attention** | 0.682 | 0.407 | 0.761 | **0.393** | 0.771 | 0.395 | 0.766 | **0.389** | 0.760 | **0.389** | 0.748 | 0.395 |

### All metrics, averaged over the five horizons

| Model | MSE | MAE | RMSE | R² | EVS | MedAE | MaxErr | SMAPE |
|---|---|---|---|---|---|---|---|---|
| iTransformer | 0.801 | 0.401 | 0.895 | -0.052 | -0.042 | **0.240** | 15.134 | **1.117** |
| Autoformer | 0.747 | 0.416 | 0.864 | 0.019 | 0.020 | 0.266 | 14.259 | 1.221 |
| FEDformer | 1.210 | 0.690 | 1.100 | -5.338 | -0.577 | 0.470 | 14.964 | 1.364 |
| SimpleTM | **0.737** | **0.392** | **0.858** | **0.035** | **0.037** | 0.248 | **13.878** | 1.144 |
| **SimpleTM + Band Attention** | 0.748 | 0.395 | 0.865 | 0.020 | 0.023 | 0.247 | 14.369 | 1.143 |

### SimpleTM vs Band Attention, every metric per horizon

| Horizon | Model | MSE | MAE | RMSE | R² | EVS | MedAE | MaxErr | SMAPE |
|---|---|---|---|---|---|---|---|---|---|
| 4 (1 h) | SimpleTM | 0.656 | 0.384 | 0.810 | 0.138 | 0.141 | 0.245 | 13.577 | 1.107 |
| 4 (1 h) | SimpleTM + Band Attention | 0.682 | 0.407 | 0.826 | 0.104 | 0.106 | 0.259 | 13.568 | 1.124 |
| 32 (8 h) | SimpleTM | 0.757 | 0.401 | 0.870 | 0.007 | 0.009 | 0.251 | 13.953 | 1.146 |
| 32 (8 h) | SimpleTM + Band Attention | 0.761 | 0.393 | 0.872 | 0.003 | 0.007 | 0.244 | 13.988 | 1.141 |
| 48 (12 h) | SimpleTM | 0.757 | 0.391 | 0.870 | 0.008 | 0.012 | 0.244 | 14.000 | 1.137 |
| 48 (12 h) | SimpleTM + Band Attention | 0.771 | 0.395 | 0.878 | -0.011 | -0.007 | 0.243 | 14.015 | 1.134 |
| 96 (24 h) | SimpleTM | 0.758 | 0.390 | 0.871 | 0.009 | 0.011 | 0.246 | 13.954 | 1.143 |
| 96 (24 h) | SimpleTM + Band Attention | 0.766 | 0.389 | 0.875 | -0.002 | 0.000 | 0.243 | 16.197 | 1.155 |
| 192 (48 h) | SimpleTM | 0.757 | 0.393 | 0.870 | 0.012 | 0.013 | 0.253 | 13.907 | 1.186 |
| 192 (48 h) | SimpleTM + Band Attention | 0.760 | 0.389 | 0.872 | 0.008 | 0.010 | 0.248 | 14.077 | 1.160 |

## ECL

### MSE and MAE per horizon

| Model | 4 (1 h) MSE | 4 (1 h) MAE | 32 (8 h) MSE | 32 (8 h) MAE | 48 (12 h) MSE | 48 (12 h) MAE | 96 (24 h) MSE | 96 (24 h) MAE | 192 (48 h) MSE | 192 (48 h) MAE | Avg MSE | Avg MAE |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| iTransformer | 0.150 | 0.290 | 0.230 | 0.356 | 0.276 | 0.384 | 0.292 | 0.394 | **0.311** | **0.403** | 0.252 | 0.365 |
| Autoformer | 0.762 | 0.688 | 0.675 | 0.647 | 0.700 | 0.659 | 0.949 | 0.773 | 0.652 | 0.616 | 0.748 | 0.677 |
| FEDformer | 0.494 | 0.538 | 0.569 | 0.581 | 1.007 | 0.787 | 0.762 | 0.682 | 1.014 | 0.813 | 0.769 | 0.680 |
| SimpleTM | **0.087** | **0.212** | 0.195 | 0.321 | 0.243 | 0.355 | 0.281 | 0.381 | 0.331 | 0.407 | 0.228 | **0.335** |
| **SimpleTM + Band Attention** | 0.113 | 0.246 | **0.180** | **0.308** | **0.217** | **0.337** | **0.275** | **0.379** | 0.335 | 0.407 | **0.224** | 0.336 |

### All metrics, averaged over the five horizons

| Model | MSE | MAE | RMSE | R² | EVS | MedAE | MaxErr | SMAPE |
|---|---|---|---|---|---|---|---|---|
| iTransformer | 0.252 | 0.365 | 0.498 | 0.8 | 0.765 | 0.279 | **5.778** | 0.687 |
| Autoformer | 0.748 | 0.677 | 0.863 | 0.3 | 0.290 | 0.565 | 6.065 | 1.125 |
| FEDformer | 0.769 | 0.680 | 0.868 | -233.0 | 0.294 | 0.567 | 7.586 | 1.116 |
| SimpleTM | 0.228 | **0.335** | 0.467 | 0.8 | 0.790 | **0.250** | 5.822 | **0.641** |
| **SimpleTM + Band Attention** | **0.224** | 0.336 | **0.466** | **0.8** | **0.796** | 0.253 | 5.798 | 0.644 |

### SimpleTM vs Band Attention, every metric per horizon

| Horizon | Model | MSE | MAE | RMSE | R² | EVS | MedAE | MaxErr | SMAPE |
|---|---|---|---|---|---|---|---|---|---|
| 4 (1 h) | SimpleTM | 0.087 | 0.212 | 0.296 | 0.917 | 0.918 | 0.162 | 5.571 | 0.472 |
| 4 (1 h) | SimpleTM + Band Attention | 0.113 | 0.246 | 0.336 | 0.893 | 0.894 | 0.192 | 5.455 | 0.532 |
| 32 (8 h) | SimpleTM | 0.195 | 0.321 | 0.442 | 0.815 | 0.818 | 0.242 | 5.698 | 0.627 |
| 32 (8 h) | SimpleTM + Band Attention | 0.180 | 0.308 | 0.424 | 0.829 | 0.834 | 0.233 | 5.650 | 0.609 |
| 48 (12 h) | SimpleTM | 0.243 | 0.355 | 0.493 | 0.769 | 0.777 | 0.265 | 5.787 | 0.670 |
| 48 (12 h) | SimpleTM + Band Attention | 0.217 | 0.337 | 0.465 | 0.794 | 0.801 | 0.255 | 5.754 | 0.647 |
| 96 (24 h) | SimpleTM | 0.281 | 0.381 | 0.531 | 0.732 | 0.737 | 0.285 | 5.878 | 0.707 |
| 96 (24 h) | SimpleTM + Band Attention | 0.275 | 0.379 | 0.524 | 0.739 | 0.742 | 0.288 | 6.076 | 0.699 |
| 192 (48 h) | SimpleTM | 0.331 | 0.407 | 0.575 | 0.689 | 0.700 | 0.297 | 6.174 | 0.731 |
| 192 (48 h) | SimpleTM + Band Attention | 0.335 | 0.407 | 0.579 | 0.685 | 0.708 | 0.295 | 6.055 | 0.732 |

## Cost

Band Attention adds **40 parameters per layer** and its extra compute is roughly 0.00076% of the attention cost (≈512 vs ≈67 million operations for the ECL configuration).

## Configuration used

| Setting | Load House 2/3 | ECL |
|---|---|---|
| Lookback / horizons | 96 / 4, 32, 48, 96, 192 | same |
| Channels (in / out) | 4 / 1 | 321 / 1 |
| Layers | 1 | 1 |
| d_model / d_ff | 64 / 128 | 256 / 1024 |
| Wavelet / levels | db1 / 3 | db1 / 3 |
| Band Attention h / activation | 4 / softmax | 4 / softmax |
| Learning rate | 0.001 | 0.006 |
| Schedule / batch size | one-cycle / 256 | one-cycle / 256 |

## Caveats

- One run per configuration; small differences may be noise.
- On ECL, R² is hugely negative for FEDformer (about −150 to −300), so ECL R² averages are shown to one decimal.
- No ablations yet (softmax vs sigmoid, bottleneck width, wavelet choice), and the learned band weights have not been inspected.