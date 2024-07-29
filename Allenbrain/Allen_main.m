%% Main analysis script for Allen brain datasets

% Read image volume with NRRD reader
% Note that reader swaps the order of the first two axes
%
% AVGT = 3-D matrix of average_template
% PDENS = 3-D matrix of projection_density
% DMASK = 3-D matrix of data_mask
%
%% Download the datasets
% Downloaded: http://download.alleninstitute.org/informatics-archive/current-release/mouse_ccf/average_template/average_template_10.nrrd
% Downloaded: http://api.brain-map.org/grid_data/download_file/306958034??image=projection_density&resolution=10
% Downloaded: http://api.brain-map.org/grid_data/download_file/306957248??image=projection_density&resolution=10
% Downloaded: http://api.brain-map.org/grid_data/download_file/306930168??image=projection_density&resolution=10
% Downloaded: http://api.brain-map.org/grid_data/download_file/307135126??image=projection_density&resolution=10
% Downloaded: http://api.brain-map.org/grid_data/download_file/307135833??image=projection_density&resolution=10
% Downloaded: http://api.brain-map.org/grid_data/download_file/310035922??image=projection_density&resolution=10
% Downloaded: http://api.brain-map.org/grid_data/download_file/312658094??image=projection_density&resolution=10
% Downloaded: http://api.brain-map.org/grid_data/download_file/306561747??image=projection_density&resolution=10

%% Download example images (Jam2-Cre) from Allen Institute
DownloadImageSeries(pwd,312658094)

%Contra;
ROI = [571 741 75 320];
%ipsi;
ROI = [399 569 75 320];

%Load the data
cd('Y:\ANU project\Ipsilateral RGC axons\Allenbrain')
PDENS={};metaPDENS={};
[AVGT, metaAVGT] = nrrdread('average_template_10.nrrd');
[PDENS{1}, metaPDENS{4}] = nrrdread('P94_coronal_306561747_10um_projection_density.nrrd');
[PDENS{2}, metaPDENS{5}] = nrrdread('P101_coronal_306957248_10um_projection_density.nrrd');
[PDENS{3}, metaPDENS{6}] = nrrdread('P101_coronal_306958034_10um_projection_density.nrrd');
[PDENS{4}, metaPDENS{7}] = nrrdread('P102_coronal_306930168_10um_projection_density.nrrd');
[PDENS{5}, metaPDENS{8}] = nrrdread('13_wks_coronal_310035922_10um_projection_density.nrrd');

% Display one coronal section
% h_fig = figure(1);imagesc(squeeze(AVGT(:,1000,:)),'AlphaData', 1); colormap(gray(256)); axis equal;
%
%
% figure(2);imagesc(squeeze(PDENS(:,900,:)),'AlphaData', .5); colormap(jet(256)); axis equal;

%% Realign all datasets to the Allen reference images

PDENS_aligned={};
ROI_mask = [399 741 75 320];
idx=[];
stepsize=10;
global dpt
% counter2 = 0;
% bincounter= 854:5:1000;
for kk=1:5
    counter = 0;
    for ii = 850:stepsize:1000
        counter = counter+1;
        %         selectROI;
        sprintf('Cell %f, slice %f',kk,ii)
        h(1)=figure;
        ax1 = axes;
        im = imagesc(ax1,squeeze(AVGT(ROI_mask(3):ROI_mask(4),ii,ROI_mask(1):ROI_mask(2))));
        im.AlphaData = 0.5; % change this value to change the background image transparency
        axis off;
        hold all;

        %plot second data
        ax2 = axes;
        idx = squeeze(PDENS{kk}(ROI_mask(3):ROI_mask(4),ii,ROI_mask(1):ROI_mask(2)));
        idx(idx==0)=NaN;
        imAlpha=ones(size(idx));
        imAlpha(isnan(idx))=0;
        im1 = imagesc(ax2,idx,'AlphaData',imAlpha);
        set(gca,'color',0*[0 1 0]);
        axis off;

        %link axes
        linkaxes([ax1,ax2])
        %%Hide the top axes
        ax2.Visible = 'off';
        ax2.XTick = [];
        ax2.YTick = [];
        %add differenct colormap to different data if you wish
        colormap(ax1,gray(256))
        colormap(ax2,hot(256))
        xlim([-100 442])
        ylim([-100 345])
        set(gcf, 'Position', get(0,'Screensize'));
        draggable(im1,'n')
        pause;
        for gg=1:stepsize
            idx = squeeze(PDENS{kk}(ROI_mask(3)-round(dpt(2)):ROI_mask(4)-round(dpt(2)),ii+(gg-1),ROI_mask(1)-ceil(dpt(1)):ROI_mask(2)-ceil(dpt(1))));
            PDENS_aligned{kk}(:,ii+(gg-1),:)=idx;
        end
        close(h(1))

        %         counter
        %     grayscale_contra(:,(counter*5)-4:(counter*5),:) = blackMaskedImage;
    end
end

PDENS_merge = PDENS_aligned{1}+PDENS_aligned{2}+PDENS_aligned{3}+PDENS_aligned{4}+PDENS_aligned{5};
PDENS_avg = PDENS_merge/5;

figure; imagesc(squeeze(PDENS_avg(:,875,:))); colormap(jet(256)); axis equal;

%% AP-ML ipsi - heatplot

ROI = [1 170 1 246];

PDENS_avg_ROI=[];
% coords=3.22:0.0099:4.72;% scale for binned per 50 um
coords = 3.22:(4.72-3.22)/150:4.72;
coords = coords*-1;
hist_data=[];
idx=[];
counter = 0;
for ii = 850:1000
    counter = counter+1;
    PDENS_avg_ROI = squeeze(PDENS_avg(ROI(3):ROI(4),ii,ROI(1):ROI(2)));
    % figure; imagesc(PDENS_avg_ROI); colormap(hot(256))
    hist_data(counter,:)=nanmean(PDENS_avg_ROI,1);
    % hist_data_binML(counter,:)=hist(hist_data(counter,:),36);
    idx = [idx;hist_data(counter,:)];
    idx=[];
end
% figure; surf(flipud(hist_data_bin50),'FaceAlpha',1);
% figure; imagesc(hist_data_bin50);
figure; imagesc(imgaussfilt(hist_data',0.5)); colormap('hot')
ax3=gca;
% yticks=linspace(3.24,4.70,7);
% yticks=yticks*-1;
% ylim([0 30])
ax3.XTick=[0:30:150];
ax3.XTickLabel={'-3.22' '-3.51' '-3.81' '-4.11' '-4.41' '-4.71'}
xlabel('Distance from Bregma (mm)')
ax3.YTick=[0:25:150];
ax3.YTickLabel={'1.5' '1.25' '1' '0.75' '0.5' '0.25'}
ylabel('Distance from midline (mm)')
colorbar

% Save the figure
cd('') %Define output path
figname = sprintf('Allen_ipsi_heatplot_ML_AP_v2.fig');
saveas(gcf,figname,'fig');
figname = sprintf('Allen_ipsi_heatplot_ML_AP_v2.pdf');
print('-dpdf','-painters','-loose',figname);

%% AP-ML contra - heatplot

ROI = [172 343 1 246];

PDENS_avg_ROI=[];
% coords=3.22:0.0099:4.72;% scale for binned per 50 um
coords = 3.22:(4.72-3.22)/150:4.72;
coords = coords*-1;
hist_data=[];
idx=[];
counter = 0;
for ii = 850:1000
    counter = counter+1;
    PDENS_avg_ROI = squeeze(PDENS_avg(ROI(3):ROI(4),ii,ROI(1):ROI(2)));
    % figure; imagesc(PDENS_avg_ROI); colormap(hot(256))
    hist_data(counter,:)=nanmean(PDENS_avg_ROI,1);
    % hist_data_binML(counter,:)=hist(hist_data(counter,:),36);
    idx = [idx;hist_data(counter,:)];
    idx=[];
end
% figure; surf(flipud(hist_data_bin50),'FaceAlpha',1);
% figure; imagesc(hist_data_bin50);
figure; imagesc(imgaussfilt(rot90(hist_data),0.5)); colormap('hot')
ax3=gca;
% yticks=linspace(3.24,4.70,7);
% yticks=yticks*-1;
% ylim([0 30])
ax3.XTick=[0:30:150];
ax3.XTickLabel={'-3.22' '-3.51' '-3.81' '-4.11' '-4.41' '-4.71'}
xlabel('Distance from Bregma (mm)')
ax3.YTick=[0:25:150];
ax3.YTickLabel={'1.5' '1.25' '1' '0.75' '0.5' '0.25'}
ylabel('Distance from midline (mm)')
colorbar

% Save the figure
cd('') %Define output path
figname = sprintf('Allen_contra_heatplot_ML_AP_v2.fig');
saveas(gcf,figname,'fig');
figname = sprintf('Allen_contra_heatplot_ML_AP_v2.pdf');
print('-dpdf','-painters','-loose',figname);


% %% Determine the ROI masks
% mask_contra={};
% ROI_mask = [571 741 75 320];
% idx=[];
% stepsize=5;
% % counter2 = 0;
% % bincounter= 854:5:1000;
% for kk=1:5
%     counter = 0;
%     for ii = 950:stepsize:1000
%         counter = counter+1;
%         selectROI;
%         for jj=1:stepsize
%             idx(:,jj,:) = binaryImage;
%         end
%         mask_contra{kk}(:,(counter*stepsize)-(stepsize-1):(counter*stepsize),:) = idx;
%         sprintf('Cell %1f, slice %1f',kk,ii)
% %         counter
%         %     grayscale_contra(:,(counter*5)-4:(counter*5),:) = blackMaskedImage;
%     end
% end
%
% mask_ipsi=[];
% ROI_mask = [399 575 75 320];
% idx=[];
% stepsize=5;
% % counter2 = 0;
% % bincounter= 854:5:1000;
% for kk=1:5
%     counter = 0;
%     for ii = 850:stepsize:1000
%         counter = counter+1;
%         selectROI;
%         for jj=1:stepsize
%             idx(:,jj,:) = binaryImage;
%         end
%         mask_ipsi{kk}(:,(counter*stepsize)-(stepsize-1):(counter*stepsize),:) = idx;
%         sprintf('Cell %1f, slice %1f',kk,ii)
%         %         counter
%         %     grayscale_contra(:,(counter*5)-4:(counter*5),:) = blackMaskedImage;
%     end
% end



%% AP-DV ipsi - corrected for dorsal surface

ROI_mask = [1 171 1 246];

PDENS_avg_ROI=[];
idx_ROI_ipsi=[];
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
for ii = 850:1000
    counter = counter+1;
    idx_ROI = squeeze(PDENS_avg(ROI_mask(3):ROI_mask(4),ii,ROI_mask(1):ROI_mask(2)));
    idx_ROI(~mask_ipsi(:,counter,:))=NaN;

    idx_ROI_ipsi(1:246,1:171,counter) = NaN(246,171); % preallocate the variable
    for xx=1:size(idx_ROI,2) % loop through all columns of the projection image ROI
        idx_ROI_ipsi(1:size(idx_ROI(find(isnan(idx_ROI(:,xx))==0,1):end,xx),1),xx,counter) = idx_ROI(find(isnan(idx_ROI(:,xx))==0,1):end,xx);
    end
    idx=idx_ROI_ipsi(:,:,counter);
    idx(idx==0)=NaN;
    %      figure; imagesc(idx);
    % hist_data_avg(counter,:)=nanmean(idx(idx>0),2);

    hist_data_sum(counter,:)=nansum(idx,2);
    %     hist_data_max(counter,:)=nanmax(idx_ROI_contra(:,:,counter));
    hist_data_avg(counter,:)=nanmean(idx,2);
    idx=[];
end

figure; imagesc(imgaussfilt(hist_data_avg',0.5));colormap('hot')
ax3=gca;
% yticks=linspace(3.24,4.70,7);
% yticks=yticks*-1;
% ylim([0 30])
ax3.XTick=[0:30:150];
ax3.XTickLabel={'-3.22' '-3.51' '-3.81' '-4.11' '-4.41' '-4.71'}
xlabel('Distance from Bregma (mm)')
ylim([1 100])
ax3.YTick=[0:25:100];
ax3.YTickLabel={'0.25' '0.5' '0.75' '1'}
ylabel('Distance from dorsal SC border (mm)')
colorbar

% Save the figure
cd('') %Define output path
figname = sprintf('Allen_ipsi_heatplot_DV_AP.fig');
saveas(gcf,figname,'fig');
figname = sprintf('Allen_ipsi_heatplot_DV_AP.pdf');
print('-dpdf','-painters','-loose',figname);

%%  AP-DV contra - heatplot corrected for dorsal surface

ROI_mask = [172 342 1 246];

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
for ii = 850:1000
    counter = counter+1;
    idx_ROI = squeeze(PDENS_avg(ROI_mask(3):ROI_mask(4),ii,ROI_mask(1):ROI_mask(2)));
    idx_ROI(~mask_contra(:,counter,:))=NaN;
    % figure; imshow(idx_ROI);

    %          idx_ROI(~MFinal(:,:,counter))=NaN;

    idx_ROI_contra(1:246,1:171,counter) = NaN(246,171); % preallocate the variable
    for xx=1:size(idx_ROI,2) % loop through all columns of the projection image ROI
        idx_ROI_contra(1:size(idx_ROI(find(isnan(idx_ROI(:,xx))==0,1):end,xx),1),xx,counter) = idx_ROI(find(isnan(idx_ROI(:,xx))==0,1):end,xx);
    end
    idx=idx_ROI_contra(:,:,counter);
    idx(idx==0)=NaN;
    %      figure; imagesc(idx);
    % hist_data_avg(counter,:)=nanmean(idx(idx>0),2);

    hist_data_sum(counter,:)=nansum(idx,2);
    %     hist_data_max(counter,:)=nanmax(idx_ROI_contra(:,:,counter));
    hist_data_avg(counter,:)=nanmean(idx,2);
    idx=[];
end


figure; imagesc(imgaussfilt(hist_data_avg',0.5));colormap('hot')
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

% Save the figure
cd('') %Define output path
figname = sprintf('Allen_contra_DV_heatplot.fig');
saveas(gcf,figname,'fig');
figname = sprintf('Allen_contra_DV_heatplot.pdf');
print('-dpdf','-painters','-loose',figname);


%% Make intensity plot DV direction ipsi based on individual cells
ROI_mask = [1 171 1 246];
hist_data_plot_ipsi_norm=[];
PDENS_avg_ROI=[];
% coords=3.22:0.0099:4.72;% scale for binned per 50 um
coords = 3.22:(4.72-3.22)/150:4.72;
coords = coords*-1;
hist_data=[];
counter = 0;
idx_ROI_ipsi=[];
figure; hold on;
for jj=1:5
    for ii = 850:1000
        counter = counter+1;
        PDENS_avg_ROI = squeeze(PDENS_aligned{jj}(ROI_mask(3):ROI_mask(4),ii,ROI_mask(1):ROI_mask(2)));
        PDENS_avg_ROI(~mask_ipsi(:,counter,:))=NaN;
        idx_ROI_ipsi(1:246,1:171,counter) = NaN(246,171); % preallocate the variable
        for xx=1:size(PDENS_avg_ROI,2) % loop through all columns of the projection image ROI
            idx_ROI_ipsi(1:size(PDENS_avg_ROI(find(isnan(PDENS_avg_ROI(:,xx))==0,1):end,xx),1),xx) = PDENS_avg_ROI(find(isnan(PDENS_avg_ROI(:,xx))==0,1):end,xx);
        end
        idx=idx_ROI_ipsi(:,:);
        idx(idx==0)=NaN;
        %      figure; imagesc(idx);
        % hist_data_avg(counter,:)=nanmean(idx(idx>0),2);

        %     hist_data_sum(counter,:)=nansum(idx(:,:,counter),2);
        %     hist_data_max(counter,:)=nanmax(idx_ROI_contra(:,:,counter));
        hist_data(counter,:)=nanmean(idx,2);
        idx=[];
        %              hist_data(counter,:)=nanmean(idx_ROI_ipsi(:,:,counter),2);
    end


    xaxis=linspace(0,2.46,246);
    hist_data_plot_ipsi=nanmean(hist_data,1);
    hist_data_plot_ipsi_norm(jj,:)=hist_data_plot_ipsi;
    %     /nanmax(hist_data_plot_ipsi);
    plot(xaxis,hist_data_plot_ipsi_norm(jj,:),'r');
    PDENS_avg_ROI=[];
    hist_data=[];
    counter = 0;
end

% calculate mean and SEM
hist_data_plot_ipsi_norm_avg = nanmean(hist_data_plot_ipsi_norm,1);
hist_data_plot_ipsi_norm_sem = nanstd(hist_data_plot_ipsi_norm,1)/sqrt(5);

%% Make intensity plot DV direction contra based on individual cells
ROI_mask = [172 342 1 246];
hist_data_plot_contra_norm=[];
PDENS_avg_ROI=[];
% coords=3.22:0.0099:4.72;% scale for binned per 50 um
coords = 3.22:(4.72-3.22)/150:4.72;
coords = coords*-1;
hist_data=[];
counter = 0;
idx_ROI_contra=[];
% figure; hold on;
for jj=1:5
    for ii = 850:1000
        counter = counter+1;
        PDENS_avg_ROI = squeeze(PDENS_aligned{jj}(ROI_mask(3):ROI_mask(4),ii,ROI_mask(1):ROI_mask(2)));
        PDENS_avg_ROI(~mask_contra(:,counter,:))=NaN;
        idx_ROI_contra(1:246,1:171,counter) = NaN(246,171); % preallocate the variable
        for xx=1:size(PDENS_avg_ROI,2) % loop through all columns of the projection image ROI
            idx_ROI_contra(1:size(PDENS_avg_ROI(find(isnan(PDENS_avg_ROI(:,xx))==0,1):end,xx),1),xx) = PDENS_avg_ROI(find(isnan(PDENS_avg_ROI(:,xx))==0,1):end,xx);
        end
        idx=idx_ROI_contra(:,:);
        idx(idx==0)=NaN;
        %      figure; imagesc(idx);
        % hist_data_avg(counter,:)=nanmean(idx(idx>0),2);

        %     hist_data_sum(counter,:)=nansum(idx(:,:,counter),2);
        %     hist_data_max(counter,:)=nanmax(idx_ROI_contra(:,:,counter));
        hist_data(counter,:)=nanmean(idx,2);
        idx=[];
        %              hist_data(counter,:)=nanmean(idx_ROI_contra(:,:,counter),2);
    end


    xaxis=linspace(0,2.46,246);
    hist_data_plot_contra=nanmean(hist_data,1);
    hist_data_plot_contra_norm(jj,:)=hist_data_plot_contra;
    %     /nanmax(hist_data_plot_contra);
    plot(xaxis,hist_data_plot_contra_norm(jj,:),'b');hold on;
    PDENS_avg_ROI=[];
    hist_data=[];
    counter = 0;
end

% calculate mean and SEM
hist_data_plot_contra_norm_avg = nanmean(hist_data_plot_contra_norm,1);
hist_data_plot_contra_norm_sem = nanstd(hist_data_plot_contra_norm,1)/sqrt(5);


%% Composite figure DV;
figure; hold on;

plot(xaxis,hist_data_plot_contra_norm_avg','b');
plot(xaxis,hist_data_plot_contra_norm_avg'+hist_data_plot_contra_norm_sem','b');
plot(xaxis,hist_data_plot_contra_norm_avg'-hist_data_plot_contra_norm_sem','b');

% plot(xaxis,fliplr(hist_data_plot_ipsi_norm_avg),'r');
% plot(xaxis,fliplr(hist_data_plot_ipsi_norm_avg)+fliplr(hist_data_plot_ipsi_norm_sem),'r');
% plot(xaxis,fliplr(hist_data_plot_ipsi_norm_avg)-fliplr(hist_data_plot_ipsi_norm_sem),'r');
plot(xaxis,hist_data_plot_ipsi_norm_avg,'r');
plot(xaxis,hist_data_plot_ipsi_norm_avg+hist_data_plot_ipsi_norm_sem,'r');
plot(xaxis,hist_data_plot_ipsi_norm_avg-hist_data_plot_ipsi_norm_sem,'r');

% set(gca, 'YDir','reverse')
xlim([0 1])
xticks(0:0.25:1);
% xtickLabel({'0' '0.5' '1' '1.5'})
xlabel('Distance from dorsal SC border (mm)')

yticks([0 0.25 0.5 0.75 1]);
ylim([0 1])
ylabel('Fluorescence (arb. units)')

% Save the figure
cd('') %Define output path
figname = sprintf('Allen_composite_DV_avg.fig');
saveas(gcf,figname,'fig');
figname = sprintf('Allen_composite_DV_avg.pdf');
print('-dpdf','-painters','-loose',figname);


%% Make intensity plot ML direction ipsi based on individual cells

ROI = [1 171 1 246];
hist_data_plot_ipsi_norm=[];
PDENS_avg_ROI=[];
% coords=3.22:0.0099:4.72;% scale for binned per 50 um
coords = 3.22:(4.72-3.22)/150:4.72;
coords = coords*-1;
hist_data=[];
idx=[];
figure; hold on;
for jj=1:5
    counter = 0;
    for ii = 850:1000
        counter = counter+1;
        PDENS_avg_ROI = squeeze(PDENS_aligned{jj}(ROI(3):ROI(4),ii,ROI(1):ROI(2)));
        PDENS_avg_ROI(~mask_ipsi(:,counter,:))=NaN;
        PDENS_avg_ROI(PDENS_avg_ROI==0)=NaN;
        % figure; imagesc(PDENS_avg_ROI); colormap(hot(256))
        hist_data(counter,:)=nanmean(PDENS_avg_ROI,1);
        % hist_data_binML(counter,:)=hist(hist_data(counter,:),36);
        idx = [idx;hist_data(counter,:)];

    end
    xaxis=linspace(0,1.71,171);
    hist_data_plot_ipsi=nanmean(hist_data,1);
    hist_data_plot_ipsi_norm(jj,:)=hist_data_plot_ipsi;
    %     /nanmax(hist_data_plot_ipsi);
    plot(xaxis,fliplr(hist_data_plot_ipsi_norm(jj,:)),'r');
end


% calculate mean and SEM
hist_data_plot_ipsi_norm_avg = mean(hist_data_plot_ipsi_norm,1);
hist_data_plot_ipsi_norm_sem = std(hist_data_plot_ipsi_norm,1)/sqrt(5);

%% Make intensity plot ML direction contra based on individual cells
ROI = [172 342 1 246];

hist_data_plot_contra_norm=[];
PDENS_avg_ROI=[];
% coords=3.22:0.0099:4.72;% scale for binned per 50 um
coords = 3.22:(4.72-3.22)/150:4.72;
coords = coords*-1;
hist_data=[];
idx=[];

% figure; hold on;
for jj=1:5
    counter = 0;
    for ii = 850:1000
        counter = counter+1;
        PDENS_avg_ROI = squeeze(PDENS_aligned{jj}(ROI(3):ROI(4),ii,ROI(1):ROI(2)));
        PDENS_avg_ROI(~mask_contra(:,counter,:))=NaN;
        PDENS_avg_ROI(PDENS_avg_ROI==0)=NaN;
        % figure; imagesc(PDENS_avg_ROI); colormap(hot(256))
        hist_data(counter,:)=nanmean(PDENS_avg_ROI,1);
        % hist_data_binML(counter,:)=hist(hist_data(counter,:),36);
        idx = [idx;hist_data(counter,:)];

    end
    xaxis=linspace(0,1.71,171);
    hist_data_plot_contra=nanmean(hist_data,1);
    hist_data_plot_contra_norm(jj,:)=hist_data_plot_contra;
    %     /nanmax(hist_data_plot_contra);
    plot(xaxis,(hist_data_plot_contra_norm(jj,:)),'b');
end


% calculate mean and SEM
hist_data_plot_contra_norm_avg = mean(hist_data_plot_contra_norm,1);
hist_data_plot_contra_norm_sem = std(hist_data_plot_contra_norm,1)/sqrt(5);

%% Composite figure ML graph
figure; hold on;

plot(xaxis,hist_data_plot_contra_norm_avg,'b');
plot(xaxis,hist_data_plot_contra_norm_avg+hist_data_plot_contra_norm_sem,'b');
plot(xaxis,hist_data_plot_contra_norm_avg-hist_data_plot_contra_norm_sem,'b');

plot(xaxis,fliplr(hist_data_plot_ipsi_norm_avg),'r');
plot(xaxis,fliplr(hist_data_plot_ipsi_norm_avg)+fliplr(hist_data_plot_ipsi_norm_sem),'r');
plot(xaxis,fliplr(hist_data_plot_ipsi_norm_avg)-fliplr(hist_data_plot_ipsi_norm_sem),'r');


xlim([0 1.7])
xticks(0:0.5:2);
%     xtickLabel{'0' '0.5' '1' '1.5'}
xlabel('Distance from midline (mm)')

yticks([0 0.25 0.5 0.75 1]);
ylim([0 1])
ylabel('Fluorescence (arb. units)')

% Save the figure
cd('') %Define output path
figname = sprintf('Allen_composite_ML_avg.fig');
saveas(gcf,figname,'fig');
figname = sprintf('Allen_composite_ML_avg.pdf');
print('-dpdf','-painters','-loose',figname);


%% Make intensity plot AP direction ipsi based on individual cells

ROI = [1 171 1 246];
hist_data_plot_ipsi=[];
hist_data_plot_ipsi_norm=[];
PDENS_avg_ROI=[];
% coords=3.22:0.0099:4.72;% scale for binned per 50 um
coords = 3.22:(4.72-3.22)/150:4.72;
coords = coords*-1;
hist_data=[];
idx=[];

figure; hold on;
for jj=1:5
    counter = 0;
    for ii = 850:1000
        counter = counter+1;
        PDENS_avg_ROI = squeeze(PDENS_aligned{jj}(ROI(3):ROI(4),ii,ROI(1):ROI(2)));
        PDENS_avg_ROI(~mask_ipsi(:,counter,:))=NaN;
        PDENS_avg_ROI(PDENS_avg_ROI==0)=NaN;
        % figure; imagesc(PDENS_avg_ROI); colormap(hot(256))
        hist_data(counter,:)=nanmean(nanmean(PDENS_avg_ROI,1));
        % hist_data_binML(counter,:)=hist(hist_data(counter,:),36);
        idx = [idx;hist_data(counter,:)];

    end
    xaxis=linspace(0,1.51,151);
    hist_data_plot_ipsi=hist_data;
    hist_data_plot_ipsi_norm(jj,:)=hist_data_plot_ipsi;
    %     /nanmax(hist_data_plot_ipsi);
    plot(xaxis,hist_data_plot_ipsi_norm(jj,:),'r');
end


% calculate mean and SEM
hist_data_plot_ipsi_norm_avg = mean(hist_data_plot_ipsi_norm,1);
hist_data_plot_ipsi_norm_sem = std(hist_data_plot_ipsi_norm,1)/sqrt(5);

%% Make intensity plot ML direction contra based on individual cells
ROI = [172 342 1 246];

hist_data_plot_contra=[];
hist_data_plot_contra_norm=[];
PDENS_avg_ROI=[];
% coords=3.22:0.0099:4.72;% scale for binned per 50 um
coords = 3.22:(4.72-3.22)/150:4.72;
coords = coords*-1;
hist_data=[];
idx=[];

% figure; hold on;
for jj=1:5
    counter = 0;
    for ii = 850:1000
        counter = counter+1;
        PDENS_avg_ROI = squeeze(PDENS_aligned{jj}(ROI(3):ROI(4),ii,ROI(1):ROI(2)));
        PDENS_avg_ROI(~mask_contra(:,counter,:))=NaN;
        PDENS_avg_ROI(PDENS_avg_ROI==0)=NaN;
        % figure; imagesc(PDENS_avg_ROI); colormap(hot(256))
        hist_data(counter,:)=nanmean(nanmean(PDENS_avg_ROI,1));
        % hist_data_binML(counter,:)=hist(hist_data(counter,:),36);
        idx = [idx;hist_data(counter,:)];

    end
    xaxis=linspace(0,1.51,151);
    hist_data_plot_contra=hist_data;
    hist_data_plot_contra_norm(jj,:)=hist_data_plot_contra;
    %     /nanmax(hist_data_plot_contra);
    plot(xaxis,hist_data_plot_contra_norm(jj,:),'b');
end


% calculate mean and SEM
hist_data_plot_contra_norm_avg = mean(hist_data_plot_contra_norm,1);
hist_data_plot_contra_norm_sem = std(hist_data_plot_contra_norm,1)/sqrt(5);

%% Composite figure;
figure; hold on;
xaxis=coords;
plot(xaxis,hist_data_plot_contra_norm_avg,'b');
plot(xaxis,hist_data_plot_contra_norm_avg+hist_data_plot_contra_norm_sem,'b');
plot(xaxis,hist_data_plot_contra_norm_avg-hist_data_plot_contra_norm_sem,'b');

plot(xaxis,hist_data_plot_ipsi_norm_avg,'r');
plot(xaxis,hist_data_plot_ipsi_norm_avg+hist_data_plot_ipsi_norm_sem,'r');
plot(xaxis,hist_data_plot_ipsi_norm_avg-hist_data_plot_ipsi_norm_sem,'r');
set(gca,'xdir','reverse')

xlim([-4.71 -3.22 ])
xticks(-4.71:0.3:-3.22);
xlabel('Distance from Bregma (mm)')

ylim([0 1])
yticks([0 0.25 0.5 0.75 1]);
ylabel('Norm. fluorescence (arb. units)')

% Save the figure
cd('') %Define output path
figname = sprintf('Allen_composite_AP_avg.fig');
saveas(gcf,figname,'fig');
figname = sprintf('Allen_composite_AP_avg.pdf');
print('-dpdf','-painters','-loose',figname);

%% Check alignment of Allen brain atlas
slice=850;
% ROI_mask = [172 342 1 246];
% Contra
figure; subplot(2,4,1); imshow(squeeze(PDENS_aligned{1}(1:246,slice,172:342))); colormap(hot)
subplot(2,4,2);  imshow(squeeze(PDENS_aligned{2}(1:246,slice,172:342))); colormap(hot);
subplot(2,4,3);  imshow(squeeze(PDENS_aligned{3}(1:246,slice,172:342))); colormap(hot);
subplot(2,4,4);  imshow(squeeze(PDENS_aligned{4}(1:246,slice,172:342))); colormap(hot);
subplot(2,4,5);  imshow(squeeze(PDENS_aligned{5}(1:246,slice,172:342))); colormap(hot);


% % Ipsi
% figure; subplot(2,4,1); imshow(squeeze(PDENS_aligned{1}(75:320,slice,399:569))); colormap(hot)
% subplot(2,4,2);  imshow(squeeze(PDENS_aligned{2}(75:320,slice,399:569))); colormap(hot)
% subplot(2,4,3);  imshow(squeeze(PDENS_aligned{3}(75:320,slice,399:569))); colormap(hot)
% subplot(2,4,4);  imshow(squeeze(PDENS_aligned{4}(75:320,slice,399:569))); colormap(hot)
% subplot(2,4,5);  imshow(squeeze(PDENS_aligned{5}(75:320,slice,399:569))); colormap(hot)



%% Alignment of mask
% Contra
slice=850;
figure; subplot(2,4,1); idx = squeeze(PDENS_aligned{1}(1:246,slice,172:342)); idx(~logical(squeeze(mask_contra(:,(slice-850)+1,:))))=10; imshow(idx); colormap(hot);
subplot(2,4,2);  idx = squeeze(PDENS_aligned{2}(1:246,slice,172:342)); idx(~logical(squeeze(mask_contra(:,(slice-850)+1,:))))=10; imshow(idx); colormap(hot);
subplot(2,4,3);  idx = squeeze(PDENS_aligned{3}(1:246,slice,172:342)); idx(~logical(squeeze(mask_contra(:,(slice-850)+1,:))))=10; imshow(idx); colormap(hot);
subplot(2,4,4);  idx = squeeze(PDENS_aligned{4}(1:246,slice,172:342)); idx(~logical(squeeze(mask_contra(:,(slice-850)+1,:))))=10; imshow(idx); colormap(hot);
subplot(2,4,5);  idx = squeeze(PDENS_aligned{5}(1:246,slice,172:342)); idx(~logical(squeeze(mask_contra(:,(slice-850)+1,:))))=10; imshow(idx); colormap(hot);