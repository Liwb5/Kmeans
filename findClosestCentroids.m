function idx = findClosestCentroids(X,centroids)

idx = zeros(size(X,1), 1);

for i=1:length(X)
    distance = pdist2(centroids,X(i,:));%�������K�����ĵ㵽ѵ����X(i,:)�ľ��루���Եõ�K�����룩
    [C,idx(i)]= min(distance);%��ѡ����С������Ǹ�
end

end