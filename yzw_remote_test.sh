python -m torch.distributed.launch --nproc_per_node=2 \
--master_port=12345 \
main_task_retrieval_multi.py --do_eval \
--num_thread_reader=4 \
--data_path /home/zhengwei/github/datasets/Charades-Event/ \
--features_path /home/zhengwei/github/datasets/Charades_v1/ \
--output_dir /home/zhengwei/github/MeVTR/outputs/testbase0129/  \
--max_words 77 --max_frames 64 --batch_size_val 16 \
--datatype charades --feature_framerate 1 --coef_lr 1e-3 \
--slice_framepos 2 \
--loose_type --linear_patch 2d --sim_header meanP \
--pretrained_clip_name ViT-B/32 \
--post_process cluster --post_cluster_centroids 16 \
--init_model /home/zhengwei/github/MeVTR/checkpoints/pytorch_model.bin.4