function [] = MAIN(data,type,l,k,d,nn_k,w)
%MAIN 此处显示有关此函数的摘要
%   此处显示详细说明
dataset=data;
pq_test_load_vectors;

t0 = cputime;
T = lsh(type,l,k,d,w,vbase);
time_encode = cputime - t0;
%save data_T T
%load data_T
%nn_k=10000;
ids_pqc=[];
t0=cputime;
fprintf ('search');
for i =1:size(vquery,2)
    fprintf('%d \n',i);
    [iNN,cand]=lshlookup(vquery(:,i),vbase,T,nn_k);
    %size(iNN)
    %iNN
    if size(iNN,2)<k
        iNN=[iNN repmat([0],1,(k-size(iNN)))]
    end
    if size(iNN,2)>k
      iNN=iNN(:,1:(k));
    end
    ids_pqc=[ids_pqc;iNN];
end
time_search=cputime-t0;
%size(ids_pqc)
%lshlookup(vquery,vtrain,T);
%fprintf ('IVFADC encode = %.3f s\n', tpqencode);
fp = fopen('e2lsh.txt','a+');
fprintf (fp,'e2lsh l=%d k=%d nn_k=%d w=%d : \n',l,k,nn_k,w);
pq_test_compute_stats
fprintf (fp,'e2lsh encode = %.3f s\n', time_encode);
fprintf (fp,'e2lsh search %d queries = %.3f s\n\n', nquery,time_search);
fclose(fp);
end

