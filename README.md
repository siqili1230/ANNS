# ANNS
some experiments about ANNS algorithms( random kd-tree , IVFPQ and LSH)
### All the algorithm is based on MATLAB. Download them and put the sift and gist in the same file. And then you can repeat my experiments.
## random kd-tree
1. Open 'kdtree/' with MATLAB, you can change paraments by editing 'start_kdtree.m'.
2. you can set 'MaxComparisons' and 'dataset' as you want, and run 'start_kdtree.m' to start the experiment.
3. After the program ends, you can check 'kdtree.txt' to gain your results. 
## IVFPQ
1. Open 'pqcode/' with MATLAB, you can change paraments by editing 'start_ivfpq.m'.
2. you can set 'k,coarsek(x),nsq(m),ker(k*),w' and use 'sift' or 'gist' as you want, and run 'start_pq.m' to start the experiment.
3. After the program ends, you can check 'infpq.txt' to gain your results. 
## LSH
1. Open 'lshcode/' with MATLAB, you can change paraments by editing 'start_lsh.m'.
2. you can set 'l,k,w,nn_k' and use 'sift' or 'gist' as you want, and run 'start_lsh.m' to start the experiment.
3. After the program ends, you can check 'e2lsh.txt' to gain your results. 
