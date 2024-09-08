#!/bin/bash  
for((i=0;i<=9;i++));  
do   
    # echo $i
    TXT_PATH='/content/drive/MyDrive/GMM_DW/results/test_'"$i"'.txt'
    CKPT_PATH='/content/drive/MyDrive/GMM_DW/model_output/'"$i"'/checkpoint_4.pth'
    python /content/GMM_DW/batch_eval.py --cfg-path /content/GMM_DW/eval_configs/minigpt4_eval_all_tasks_imgr.yaml \
    --gpu-id 0 --task-id $i --txt-path $TXT_PATH \
    --ckpt-path $CKPT_PATH
done  
python /content/GMM_DW/get_score_all.py
