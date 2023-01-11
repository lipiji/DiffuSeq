python -m torch.distributed.launch --nproc_per_node=4 --master_port=12233 --use_env run_train.py \
--diff_steps 2000 \
--lr 0.0001 \
--learning_steps 150000 \
--save_interval 20000 \
--seed 102 \
--noise_schedule sqrt \
--hidden_dim 128 \
--bsz 2048 \
--microbatch 64 \
--dataset dialogue \
--data_dir /data2/pjli/workspace/gitcodes/DiffuSeq/datasets/Open-domainDialogue \
--vocab bert \
--seq_len 128 \
--schedule_sampler lossaware \
--notes dialogue 
