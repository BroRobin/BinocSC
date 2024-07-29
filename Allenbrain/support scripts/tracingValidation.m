%% tracing validation script

% Create triangle

triangle = zeros(246,171);


for ii=10:150
triangle(ii,(85-ii/2):(85+ii/2)) =1;
end
% figure; imagesc(squeeze(triangle))
% figure; imagesc(squeeze(mask_contra(:,1,:)))

triangle_set={};
for ii=1:5
    for jj=1:5
triangle_set{ii}(:,jj,:) = triangle;
    end
end

figure; imagesc(squeeze(triangle_set{1}(:,1,:)))

%% Average

triangle_set_merge = triangle_set{1}+triangle_set{2}+triangle_set{3}+triangle_set{4}+triangle_set{5};
triangle_set_merge = triangle_set_merge/5;

%% Trace

mask_contra=[];
ROI_mask = [1 171 1 246];
idx=[];
counter = 0;
stepsize=1;
% counter2 = 0;
% bincounter= 854:5:1000;
for ii = 1:stepsize:5
    counter = counter+1;
    selectROI;
    for jj=1:stepsize
        idx(:,jj,:) = binaryImage;
    end
    mask_contra(:,(counter*stepsize)-(stepsize-1):(counter*stepsize),:) = idx;
    counter
    %     grayscale_contra(:,(counter*5)-4:(counter*5),:) = blackMaskedImage;
end




%% Apply mask and generate figure
ROI_mask = [1 171 1 246];

    PDENS_avg_ROI=[];
    idx_ROI_contra=[];
    % coords=3.22:0.0099:4.72;% scale for binned per 50 um
    coords = 3.22:(4.72-3.22)/150:4.72;
    coords = coords*-1;
    hist_data_sum=[];
    hist_data_max=[];
    hist_data_avg=[];
%     hist_data_bin50=[];
    idx=[];
    idx_ROI =[];
    counter = 0;
    counter2 = 0;
    bincounter= 854:5:1000;
    for ii = 1:5
        counter = counter+1;
        idx_ROI = squeeze(triangle_set_merge(ROI_mask(3):ROI_mask(4),ii,ROI_mask(1):ROI_mask(2)));
        idx_ROI(~mask_contra(:,counter,:))=NaN;
%          idx_ROI(~MFinal(:,:,counter))=NaN;

    idx_ROI_contra(1:246,1:171,counter) = NaN(246,171); % preallocate the variable
    for xx=1:size(idx_ROI,2) % loop through all columns of the projection image ROI
        idx_ROI_contra(1:size(idx_ROI(find(isnan(idx_ROI(:,xx))==0,1):end,xx),1),xx,counter) = idx_ROI(find(isnan(idx_ROI(:,xx))==0,1):end,xx);
    end    
     idx=idx_ROI_contra(:,:,counter);
     idx(idx==0)=NaN;
%      figure; imagesc(idx);
% hist_data_avg(counter,:)=nanmean(idx(idx>0),2);

    hist_data_sum(counter,:)=nansum(idx_ROI_contra(:,:,counter),2);
%     hist_data_max(counter,:)=nanmax(idx_ROI_contra(:,:,counter));
        hist_data_avg(counter,:)=nanmean(idx,2);
        idx=[];
    end

    figure; imagesc(hist_data_avg');
    ax3=gca;
    % yticks=linspace(3.24,4.70,7);
    % yticks=yticks*-1;
    % ylim([0 30])
    ax3.XTick=[0:30:150];
    ax3.XTickLabel={'-3.22' '-3.51' '-3.81' '-4.11' '-4.41' '-4.71'}
    xlabel('Distance from Bregma (mm)')
    ylim([1 150])
    ax3.YTick=[0:50:150];
    ax3.YTickLabel={'0.5' '1' '1.5'}
    ylabel('Distance from dorsal SC border (mm)')
    colorbar

    figure; imagesc(squeeze(idx_ROI_contra(:,:,1)))

    %% Triangle with random numbers


% Create triangle

triangle = zeros(246,171);


for ii=10:150
    if ii>10 && ii<75
triangle(ii,(85-ii/2):(85+ii/2)) = randi(30+ii*2,[1 size([(85-ii/2):(85+ii/2)],2)]);
    elseif ii>75
triangle(ii,(85-ii/2):(85+ii/2)) = randi(ceil(30-ii/10),[1 size([(85-ii/2):(85+ii/2)],2)]);
    end
end
% figure; imagesc(squeeze(triangle))
% figure; imagesc(squeeze(mask_contra(:,1,:)))

triangle_set={};
for ii=1:5
    for jj=1:5
triangle_set{ii}(:,jj,:) = triangle;
    end
end

figure; imagesc(squeeze(triangle_set{1}(:,1,:)))

%% Average

triangle_set_merge = triangle_set{1}+triangle_set{2}+triangle_set{3}+triangle_set{4}+triangle_set{5};
triangle_set_merge = triangle_set_merge/5;

%% Trace

% mask_contra=[];
% ROI_mask = [1 171 1 246];
% idx=[];
% counter = 0;
% stepsize=1;
% % counter2 = 0;
% % bincounter= 854:5:1000;
% for ii = 1:stepsize:5
%     counter = counter+1;
%     selectROI;
%     for jj=1:stepsize
%         idx(:,jj,:) = binaryImage;
%     end
%     mask_contra(:,(counter*stepsize)-(stepsize-1):(counter*stepsize),:) = idx;
%     counter
%     %     grayscale_contra(:,(counter*5)-4:(counter*5),:) = blackMaskedImage;
% end




%% Apply mask and generate figure
ROI_mask = [1 171 1 246];

    PDENS_avg_ROI=[];
    idx_ROI_contra=[];
    % coords=3.22:0.0099:4.72;% scale for binned per 50 um
    coords = 3.22:(4.72-3.22)/150:4.72;
    coords = coords*-1;
    hist_data_sum=[];
    hist_data_max=[];
    hist_data_avg=[];
%     hist_data_bin50=[];
    idx=[];
    idx_ROI =[];
    counter = 0;
    counter2 = 0;
    bincounter= 854:5:1000;
    for ii = 1:5
        counter = counter+1;
        idx_ROI = squeeze(triangle_set_merge(ROI_mask(3):ROI_mask(4),ii,ROI_mask(1):ROI_mask(2)));
        idx_ROI(~mask_contra(:,counter,:))=NaN;
%          idx_ROI(~MFinal(:,:,counter))=NaN;

    idx_ROI_contra(1:246,1:171,counter) = NaN(246,171); % preallocate the variable
    for xx=1:size(idx_ROI,2) % loop through all columns of the projection image ROI
        idx_ROI_contra(1:size(idx_ROI(find(isnan(idx_ROI(:,xx))==0,1):end,xx),1),xx,counter) = idx_ROI(find(isnan(idx_ROI(:,xx))==0,1):end,xx);
    end    
     idx=idx_ROI_contra(:,:,counter);
     idx(idx==0)=NaN;
     figure; imagesc(idx);
% hist_data_avg(counter,:)=nanmean(idx(idx>0),2);

    hist_data_sum(counter,:)=nansum(idx_ROI_contra(:,:,counter),2);
%     hist_data_max(counter,:)=nanmax(idx_ROI_contra(:,:,counter));
        hist_data_avg(counter,:)=nanmean(idx,2);
        idx=[];
    end

    figure; imagesc(hist_data_avg');
    ax3=gca;
    % yticks=linspace(3.24,4.70,7);
    % yticks=yticks*-1;
    % ylim([0 30])
    ax3.XTick=[0:30:150];
    ax3.XTickLabel={'-3.22' '-3.51' '-3.81' '-4.11' '-4.41' '-4.71'}
    xlabel('Distance from Bregma (mm)')
    ylim([1 150])
    ax3.YTick=[0:50:150];
    ax3.YTickLabel={'0.5' '1' '1.5'}
    ylabel('Distance from dorsal SC border (mm)')
    colorbar

    figure; imagesc(squeeze(idx_ROI_contra(:,:,1)))

     %% square with random numbers


% Create triangle

square = zeros(246,171);


for ii=10:150
    if ii>10 && ii<75
square(ii,(85-75/2):(85+75/2)) = randi(30+ii*2,[1 size([(85-75/2):(85+75/2)],2)]);
    elseif ii>75
square(ii,(85-75/2):(85+75/2)) = randi(ceil(30-ii/10),[1 size([(85-75/2):(85+75/2)],2)]);
    end
end
% figure; imagesc(squeeze(triangle))
% figure; imagesc(squeeze(mask_contra(:,1,:)))

square_set={};
for ii=1:5
    for jj=1:5
square_set{ii}(:,jj,:) = square;
    end
end

figure; imagesc(squeeze(square_set{1}(:,1,:)))

%% Average

square_set_merge = square_set{1}+square_set{2}+square_set{3}+square_set{4}+square_set{5};
square_set_merge = square_set_merge/5;

%% Trace

mask_contra=[];
ROI_mask = [1 171 1 246];
idx=[];
counter = 0;
stepsize=1;
% counter2 = 0;
% bincounter= 854:5:1000;
for ii = 1:stepsize:5
    counter = counter+1;
    selectROI;
    for jj=1:stepsize
        idx(:,jj,:) = binaryImage;
    end
    mask_contra(:,(counter*stepsize)-(stepsize-1):(counter*stepsize),:) = idx;
    counter
    %     grayscale_contra(:,(counter*5)-4:(counter*5),:) = blackMaskedImage;
end




%% Apply mask and generate figure
ROI_mask = [1 171 1 246];

    PDENS_avg_ROI=[];
    idx_ROI_contra=[];
    % coords=3.22:0.0099:4.72;% scale for binned per 50 um
    coords = 3.22:(4.72-3.22)/150:4.72;
    coords = coords*-1;
    hist_data_sum=[];
    hist_data_max=[];
    hist_data_avg=[];
%     hist_data_bin50=[];
    idx=[];
    idx_ROI =[];
    counter = 0;
    counter2 = 0;
    bincounter= 854:5:1000;
    for ii = 1:5
        counter = counter+1;
        idx_ROI = squeeze(square_set_merge(ROI_mask(3):ROI_mask(4),ii,ROI_mask(1):ROI_mask(2)));
        idx_ROI(~mask_contra(:,counter,:))=NaN;
%          idx_ROI(~MFinal(:,:,counter))=NaN;

    idx_ROI_contra(1:246,1:171,counter) = NaN(246,171); % preallocate the variable
    for xx=1:size(idx_ROI,2) % loop through all columns of the projection image ROI
        idx_ROI_contra(1:size(idx_ROI(find(isnan(idx_ROI(:,xx))==0,1):end,xx),1),xx,counter) = idx_ROI(find(isnan(idx_ROI(:,xx))==0,1):end,xx);
    end    
     idx=idx_ROI_contra(:,:,counter);
     idx(idx==0)=NaN;
     figure; imagesc(idx);
% hist_data_avg(counter,:)=nanmean(idx(idx>0),2);

    hist_data_sum(counter,:)=nansum(idx_ROI_contra(:,:,counter),2);
%     hist_data_max(counter,:)=nanmax(idx_ROI_contra(:,:,counter));
        hist_data_avg(counter,:)=nanmean(idx,2);
        idx=[];
    end

    figure; imagesc(hist_data_avg');
    ax3=gca;
    % yticks=linspace(3.24,4.70,7);
    % yticks=yticks*-1;
    % ylim([0 30])
    ax3.XTick=[0:30:150];
    ax3.XTickLabel={'-3.22' '-3.51' '-3.81' '-4.11' '-4.41' '-4.71'}
    xlabel('Distance from Bregma (mm)')
    ylim([1 150])
    ax3.YTick=[0:50:150];
    ax3.YTickLabel={'0.5' '1' '1.5'}
    ylabel('Distance from dorsal SC border (mm)')
    colorbar

    figure; imagesc(squeeze(idx_ROI_contra(:,:,1)))

  
