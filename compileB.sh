for i in /home/drumil/data/B/*
do
echo $i
export CUDA_VISIBLE_DEVICES=2; python test.py --model-path ../librispeech_pretrained_v2.pth  --test-manifest $i --cuda --half | cat >> resultsB
done                                         
