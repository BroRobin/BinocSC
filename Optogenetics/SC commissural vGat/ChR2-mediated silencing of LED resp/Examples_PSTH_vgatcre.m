%% Generate examples for figures

%% Example 210310_4
P.datapath = [path to files];
P.fs = 20000;
cd(P.datapath)

load('RLB_EC_opto_VGATcre_SC_10Mar21 008.mat')

%% Contralateral normal and opto PSTH
% Make PSTH
count_right = 0; count_right_opto = 0;

fig(1) = figure; hold on;

for ii=1:length(D.trialID)
    if D.trialID(ii)==2
        count_right=count_right+1;
        subplot(2,1,1)
        plot(Spk.spktimes_right{count_right},repmat(count_right,numel(Spk.spktimes_right{count_right}),1),'k.');hold on;
    elseif D.trialID(ii)==4
        count_right_opto=count_right_opto+1;
        subplot(2,1,2)
        plot(Spk.spktimes_rightOpto{count_right_opto},repmat(count_right_opto,numel(Spk.spktimes_rightOpto{count_right_opto}),1),'k.');hold on;
    end
end

figure(fig(1));

% Contra normal
subplot(2,1,1)
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 50]); ylim([0 50]); set(gca,'fontSize',25,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
plot(Spk.kde_right_X,Spk.kde_right,'k','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_rightOpto])]);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',25,'FontName','Arial','Color','k');
%     xlabel('Time (s)','fontSize',25,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',25,'fontName','Arial','Color','k');
set(gca,'fontSize',25,'FontName','Arial','Color','k');
ylim([0 150]); yticks([0 50 100 150]); set(gca,'fontSize',25,'FontName','Arial','YColor','k')
box on, set(gca,'Color','w')

% Contra opto
subplot(2,1,2)
%  ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 50]); ylim([0 50]); set(gca,'fontSize',25,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
plot(Spk.kde_rightOpto_X,Spk.kde_rightOpto,'b','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_rightOpto])]);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',25,'FontName','Arial')
xlabel('Time (s)','fontSize',25,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',25,'fontName','Arial','Color','k');
set(gca,'fontSize',25,'FontName','Arial')
ylim([0 150]); yticks([0 50 100 150]); set(gca,'fontSize',25,'FontName','Arial','YColor','k')
box on, set(gca,'Color','w')


figname = 'VGAT_PSTH_contra_210310_4.fig';
saveas(gcf,figname,'fig');
figname = 'VGAT_PSTH_contra_210310_4.pdf';
print('-dpdf','-painters','-loose',figname);

%% Ipsilateral normal and opto PSTH
% Make PSTH
count_left = 0; count_left_opto = 0;

fig(1) = figure; hold on;

for ii=1:length(D.trialID)
    if D.trialID(ii)==1
        count_left=count_left+1;
        subplot(2,1,1)
        plot(Spk.spktimes_left{count_left},repmat(count_left,numel(Spk.spktimes_left{count_left}),1),'k.');hold on;
    elseif D.trialID(ii)==5
        count_left_opto=count_left_opto+1;
        subplot(2,1,2)
        plot(Spk.spktimes_leftOpto{count_left_opto},repmat(count_left_opto,numel(Spk.spktimes_leftOpto{count_left_opto}),1),'k.');hold on;
    end
end

figure(fig(1));

% Ipsi normal
subplot(2,1,1)
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 50]); ylim([0 50]); set(gca,'fontSize',25,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
plot(Spk.kde_left_X,Spk.kde_left,'k','LineWidth',2); ylim([0 max([Spk.kde_left Spk.kde_leftOpto])]);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',25,'FontName','Arial','Color','k');
%     xlabel('Time (s)','fontSize',25,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',25,'fontName','Arial','Color','k');
set(gca,'fontSize',25,'FontName','Arial','Color','k');
ylim([0 20]); yticks([0 10 20]); set(gca,'fontSize',25,'FontName','Arial','YColor','k')
box on, set(gca,'Color','w')

% Ipsi opto
subplot(2,1,2)
%  ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 50]); ylim([0 50]); set(gca,'fontSize',25,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
plot(Spk.kde_leftOpto_X,Spk.kde_leftOpto,'b','LineWidth',2); ylim([0 max([Spk.kde_left Spk.kde_leftOpto])]);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',25,'FontName','Arial')
xlabel('Time (s)','fontSize',25,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',25,'fontName','Arial','Color','k');
set(gca,'fontSize',25,'FontName','Arial')
ylim([0 20]); yticks([0 10 20]); set(gca,'fontSize',25,'FontName','Arial','YColor','k')
box on, set(gca,'Color','w')


figname = 'VGAT_PSTH_ipsi_210310_4.fig';
saveas(gcf,figname,'fig');
figname = 'VGAT_PSTH_ipsi_210310_4.pdf';
print('-dpdf','-painters','-loose',figname);







