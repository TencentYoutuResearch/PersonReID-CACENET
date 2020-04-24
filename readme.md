# ReID torch 版本
## 功能
- 单/多GPU训练
- 训练加测试
- fp16训练

## fp16性能
以baseline为例， 显卡试16GB的Titan V

| 模型  |mAP/rank-1|耗时| 注
|---|---|---|---|
|baseline_2gpu|87.74 / 94.92|1 H 1 M 2 s|2gpu b128
|baseline|87.01/95.07|1 H 23 M 58 s|1gpu b128
|baseline_fp16|86.94/94.69|0 H 57 M 54 s|1gpu b128
|baseline_fp16_b|87.27/94.39|1 H 3 M 23 s|1gpu b64
|baseline_fp16_2gpu|87.53/94.98|0 H 49 M 20 s|2gpu b128


## 示例

| 模型  |mAP/rank-1|
|---|---|
|baseline|87.74 / 94.92|

