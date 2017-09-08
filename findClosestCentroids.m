function idx = findClosestCentroids(X,centroids)

idx = zeros(size(X,1), 1);

for i=1:length(X)
    distance = pdist2(centroids,X(i,:));%计算出了K个中心点到训练点X(i,:)的距离（所以得到K个距离）
    [C,idx(i)]= min(distance);%并选择最小距离的那个
end

end