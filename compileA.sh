for i in /home/drumil/data/A/*
do
echo $i
export CUDA_VISIBLE_DEVICES=3; python test.py --model-path ../librispeech_pretrained_v2.pth  --test-manifest $i --cuda --half | cat >> resultsA
done                                         
