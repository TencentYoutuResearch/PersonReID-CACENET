python train_mgnv2.py --gpu 0,1,2,3 --code se_resnet101_ibn_a_32_tf_sample_kesci --epochs 80 --batch-size 128 --load_img_to_cash 0 --least_image_per_class 2 --use_tf_sample 1  --net MGNv2 --height 384 --width 128 --optim SGD --weight-decay 1e-3 --lr 0.025 --workers 16 --data KESCI --margin 0.5
