cd /tianyi-vol/Self-teaching-for-machine-translation/T5
pip install transformers
pip install datasets
pip install sacrebleu==1.5.1
pip install torch_optimizer
pip install wandb
mkdir log
mkdir model
mkdir tensorboard
rm -f ./log/*.txt
rm -f ./tensorboard/*
python main.py --valid_num_points 2000 --train_num_points 50000 \
                --batch_size 360 --rep_num 2000 --test_num 100000\
                --train_w_num_points 90 --train_v_synthetic_num_points 90\
                --train_v_num_points 90 --train_A_num_points 90\
                --valid_begin 1 --train_A 1  --model_name_student t5-small --model_name_teacher t5-small\
                --w_lr 5e-4 --v_lr 5e-4 --A_lr 1 --unrolled_w_lr 5e-4 --unrolled_v_lr 5e-4 \
                --exp_name server,50k,withA

