%This file is to implement a simple K means algorithm so that you can have
%a deeper understanding of K means
clear ; close all; clc

load('dataset.mat');
plot(X(:,1),X(:,2),'*');%plot the original data for visualization
figure; hold on;

max_iters = 10;
K = 3;%the number of cluster centroids
len = size(X,1);

%randomly initialize the centroids using the data from the dataset
rand_num = 1+floor((len-1)*rand(K,1));
initial_centroids = X(rand_num,:);
centroids = initial_centroids;
for i=1:max_iters
    idx = findClosestCentroids(X,centroids);
    centroids = computeCentroids(X, idx, K);  
end

% Create palette
palette = hsv(K + 1);
colors = palette(idx, :);
% Plot the data
scatter(X(:,1), X(:,2), 15, colors);
% Plot the centroids as black x's
plot(centroids(:,1), centroids(:,2), 'x', ...
     'MarkerEdgeColor','k', ...
     'MarkerSize', 10, 'LineWidth', 3);
 
 
 
 
 
 
 
 