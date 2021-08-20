DBNAME='SIFT100M'
TOPK='10'

for RECALL in '40' '50' '60' '70' '80' 
    do
    echo '====================' $DBNAME 'Recall' $RECALL 'TopK' $TOPK 'Starts' '====================' >> gpu_recall
    echo ' ' >> gpu_recall

    python bench_gpu_1bn.py $DBNAME IVF1024,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME IVF2048,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME IVF4096,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME IVF8192,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME IVF16384,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME IVF32768,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME IVF65536,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME IVF131072,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME IVF262144,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall

    python bench_gpu_1bn.py $DBNAME OPQ16,IVF1024,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME OPQ16,IVF2048,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME OPQ16,IVF4096,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME OPQ16,IVF8192,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME OPQ16,IVF16384,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME OPQ16,IVF32768,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME OPQ16,IVF65536,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME OPQ16,IVF131072,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall
    python bench_gpu_1bn.py $DBNAME OPQ16,IVF262144,PQ16 -recall_goal $RECALL -topK $TOPK -ngpu 1 -startgpu 1 -qbs 512 >> gpu_recall


    echo '====================' $DBNAME 'Recall' $RECALL 'TopK' $TOPK 'Ends' '====================' >> gpu_recall
    echo ' ' >> gpu_recall
done