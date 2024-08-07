%% Run K-means clustering and PCA analysis on in vivo whole-cell data
% manually load the data from 13 parameters into variable 'X'

cd('path') % Define output path

% Select neurons that are <1600um
include=[0
0
0
0
0
1
0
0
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
0
0
1
1
1
1
1
0
1
1
1
1
1
0
1
1
1
0
0
1
1
1
];

X = X(logical(include),:);


% fill the missing values with means of that column (mean-filling)
for ii=1:size(X,2)
    nanmean(X(:,ii))
    X(isnan(X(:,ii)),ii) = nanmean(X(:,ii));
%     pause
end


% Calculate the Z score for each column
X_PCA = zscore(X);

rng default % Initialize random number generator

%% Run k-means clustering with varying cluster sizes
idx = kmeans(X_PCA,3,'Replicates',10000);
idx = kmeans(X_PCA,4,'Replicates',10000);
idx = kmeans(X_PCA,5,'Replicates',10000);
silhouette(X_PCA,idx)

% Define the labels
labels_dend_numbers=[];
labels_dend_numbers(find(idx==1))=1;
labels_dend_numbers(find(idx==2))=2;
labels_dend_numbers(find(idx==3))=3;
labels_dend_numbers(find(idx==4))=4;


%% Perform PCA analysis
[coeff,score,latent]=pca(X_PCA);
variance_explained = latent/sum(latent)*100;

% Create figure showing PC1-3
figure; hold on; scatter3(score(:,1),score(:,2),score(:,3),1000,'b.')
% title('PCA')
ylabel('PC2'); xlabel('PC1'); zlabel('PC3')


%% Use classification to color the dots in the PCA plot + save movie
figure; hold on; 
%3D
scatter3(score(labels_dend_numbers==1,1),score(labels_dend_numbers==1,2),score(labels_dend_numbers==1,3),1000,'g.')
scatter3(score(labels_dend_numbers==2,1),score(labels_dend_numbers==2,2),score(labels_dend_numbers==2,3),1000,'b.')
scatter3(score(labels_dend_numbers==3,1),score(labels_dend_numbers==3,2),score(labels_dend_numbers==3,3),1000,'m.') 
scatter3(score(labels_dend_numbers==4,1),score(labels_dend_numbers==4,2),score(labels_dend_numbers==4,3),1000,'k.') 

legend('Cluster 1','Cluster 2','Cluster 3','Cluster 4')
ylabel('PC2'); xlabel('PC1'); zlabel('PC3')

grid on
% daspect([1,1,.3]);axis tight;
cd('path')
OptionZ.FrameRate=15;OptionZ.Duration=10;OptionZ.Periodic=true;
CaptureFigVid([-20,10;-110,10;-190,80;-290,10;-380,10], 'PCA_3Dplot_dendrogramClassification',OptionZ)

cd('path')
figname = sprintf('PCAspace_kmeans.fig')
saveas(gcf,figname,'fig')
figname = sprintf('PCAspace_kmeans.pdf')
print('-dpdf','-painters','-loose',figname)