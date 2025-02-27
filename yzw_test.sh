python -m torch.distributed.launch --nproc_per_node=1 \
--master_port=12345 \
main_task_retrieval_multi.py --do_eval \
--num_thread_reader=4 \
--data_path /home/zhengwei/Desktop/Zhengwei/Projects/datasets/Charades \
--features_path /home/zhengwei/Desktop/Zhengwei/Projects/datasets/Charades/Charades_v1_cp/ \
--output_dir /home/zhengwei/Desktop/Zhengwei/Projects/MEV2T/outputs/testbase0129/  \
--max_words 77 --max_frames 64 --batch_size_val 16 \
--datatype charades --feature_framerate 1 --coef_lr 1e-3 \
--slice_framepos 2 \
--loose_type --linear_patch 2d --sim_header meanP \
--pretrained_clip_name ViT-B/32 \
--post_process cluster --post_cluster_centroids 16 \
--init_model /home/zhengwei/Desktop/Zhengwei/Projects/MEV2T/checkpoints/pytorch_model.bin.4 \
--batch_size 32


# /home/zhengwei/Desktop/Zhengwei/Projects/datasets/Charades/Charades_v1/ 
# /home/zhengwei/Desktop/Zhengwei/Projects/datasets/Charades/Charades_v1_cp/ 