function centroids = computeCentroids(X, idx, K)

[m n] = size(X);
centroids = zeros(K, n);

for i=1:K
    centroids(i,:)=mean(X(find(idx==i),:));%将均值作为新的聚类中心的位置
end

end