CUDA_VISIBLE_DEVICES=4,5,6,7 python -m torch.distributed.launch --nproc_per_node=4 \
--master_port=12234 \
--use_env run_train.py \
--diff_steps 2000 \
--lr 0.0001 \
--learning_steps 50000 \
--save_interval 10000 \
--seed 102 \
--noise_schedule sqrt \
--hidden_dim 128 \
--bsz 2048 \
--microbatch 64 \
--dataset qqp \
--data_dir /data2/pjli/workspace/gitcodes/DiffuSeq/datasets/Paraphrase \
--vocab bert \
--seq_len 128 \
--schedule_sampler lossaware \
--notes qqp 
