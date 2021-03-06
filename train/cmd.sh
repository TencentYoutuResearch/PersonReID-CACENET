PORT=9996
export PYTHONPATH=/raid/home/fufuyu/torch-reid/
# nproc_per_node 使用每台机多少块GPU， nnodes使用几台机
# BaseTrainer.py for supervised reid
python3 -m torch.distributed.launch --nproc_per_node=2 --nnodes=1 --master_port=${PORT} --node_rank=0 BaseTrainer.py #
# PartNetTrainer.py for occluded reid
#python3 -m torch.distributed.launch --nproc_per_node=2 --nnodes=1 --master_port=${PORT} --node_rank=0 PartNetTrainer.py

