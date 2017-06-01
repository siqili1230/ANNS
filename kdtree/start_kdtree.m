run('E:\Document\others\CAD\vlfeat-0.9.20\toolbox/vl_setup')

NumNeighbors=1000;
k=NumNeighbors;
%MaxComparisons=100000;
dataset='gist';
pq_test_load_vectors;
t0=cputime;
kdtree = vl_kdtreebuild(vbase);
time_encode=cputime-t0;
t0=cputime;
[ids_pqc, distance] = vl_kdtreequery(kdtree, vbase, vquery, 'NumNeighbors',NumNeighbors, 'MaxComparisons', MaxComparisons) ;
time_search=cputime-t0;
ids_pqc=ids_pqc';
fp=fopen('kdtree.txt','a+');
pq_test_compute_stats;
fprintf (fp,'KDTree parament:  NumNeighbors= %d  MaxComparisons=%d \n',NumNeighbors,MaxComparisons);
fprintf (fp,'KDTree encode = %.3f s\n', time_encode);
fprintf (fp,'KDTree search = %.3f s  for %d query vectors in a database of %d vectors\n', ...
	 time_search, nquery, nbase);
fclose(fp);