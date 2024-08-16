%% Create example trace
%% Example 210427_4
P.datapath = [path to files] 210427_4';
P.fs = 20000;
cd(P.datapath)

load('RL_vgatDoubleInj_V1control_27Apr21 015.mat')

%% Contralateral normal and opto PSTH - 470nm
% Make PSTH
count_left = 0; count_left_opto470 = 0;

fig(1) = figure; hold on;

for ii=1:length(D.trialID)
    if D.trialID(ii)==1
        count_left=count_left+1;
        subplot(2,1,1)
        plot(Spk.spktimes_left{count_left},repmat(count_left,numel(Spk.spktimes_left{count_left}),1),'k.');hold on;
    elseif D.trialID(ii)==5
        count_left_opto470=count_left_opto470+1;
        subplot(2,1,2)
        plot(Spk.spktimes_left_opto470{count_left_opto470},repmat(count_left_opto470,numel(Spk.spktimes_left_opto470{count_left_opto470}),1),'k.');hold on;
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
plot(Spk.kde_left_X,Spk.kde_left,'k','LineWidth',2);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]);
% set(gca,'fontSize',25,'FontName','Arial','Color','k');
%     xlabel('Time (s)','fontSize',25,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',25,'fontName','Arial','Color','k');
set(gca,'fontSize',25,'FontName','Arial','Color','k');
ylim([0 200]); yticks([0 50 100 150 200]); set(gca,'fontSize',25,'FontName','Arial','YColor','k')
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
plot(Spk.kde_leftOpto_X,Spk.kde_leftOpto,'b','LineWidth',2);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',25,'FontName','Arial')
xlabel('Time (s)','fontSize',25,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',25,'fontName','Arial','Color','k');
set(gca,'fontSize',25,'FontName','Arial')
ylim([0 200]); yticks([0 50 100 150 200]); set(gca,'fontSize',25,'FontName','Arial','YColor','k')
box on, set(gca,'Color','w')


% figname = 'VGat_PSTH_contra_210518_1_470nm.fig';
% saveas(gcf,figname,'fig');
% figname = 'VGat_PSTH_contra_210518_1_470nm.pdf';
% print('-dpdf','-painters','-loose',figname);

KDE_baseline470 = Spk.kde_left;
KDE_470nm = Spk.kde_leftOpto;


%% 590nm

load('RL_EC_opto_vGat_sameside_590nmV1_18May21 002.mat')

%% Contralateral normal and opto PSTH
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

% Contra normal
subplot(2,1,1)
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 50]); ylim([0 50]); set(gca,'fontSize',25,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
plot(Spk.kde_left_X,Spk.kde_left,'k','LineWidth',2);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]);
% set(gca,'fontSize',25,'FontName','Arial','Color','k');
%     xlabel('Time (s)','fontSize',25,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',25,'fontName','Arial','Color','k');
set(gca,'fontSize',25,'FontName','Arial','Color','k');
ylim([0 200]); yticks([0 50 100 150 200]); set(gca,'fontSize',25,'FontName','Arial','YColor','k')
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
plot(Spk.kde_leftOpto_X,Spk.kde_leftOpto,'Color',[ 0.9100 0.4100 0.1700],'LineWidth',2);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',25,'FontName','Arial')
xlabel('Time (s)','fontSize',25,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',25,'fontName','Arial','Color','k');
set(gca,'fontSize',25,'FontName','Arial')
ylim([0 200]); yticks([0 50 100 150 200]); set(gca,'fontSize',25,'FontName','Arial','YColor','k')
box on, set(gca,'Color','w')


% figname = 'VGat_PSTH_contra_210518_1_590nm.fig';
% saveas(gcf,figname,'fig');
% figname = 'VGat_PSTH_contra_210518_1_590nm.pdf';
% print('-dpdf','-painters','-loose',figname);
KDE_590nm = Spk.kde_leftOpto;
KDE_baseline590 = Spk.kde_left;
KDE_baseline = mean([KDE_baseline590; KDE_baseline470]);

%% Composite

figure; hold on;

subplot(2,1,1); hold on;
plot(Spk.kde_left_X,KDE_baseline,'k','LineWidth',2);
plot(Spk.kde_left_X,KDE_470nm,'b','LineWidth',2);
plot(Spk.kde_left_X,KDE_590nm,'Color',[ 0.9100 0.4100 0.1700],'LineWidth',2);

xlim([-0.5 1]); xticks([-0.5 0 0.5 1]);
% set(gca,'fontSize',25,'FontName','Arial','Color','k');
%     xlabel('Time (s)','fontSize',25,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',25,'fontName','Arial','Color','k');
set(gca,'fontSize',25,'FontName','Arial','Color','k');
ylim([0 200]); yticks([0 50 100 150 200]); set(gca,'fontSize',25,'FontName','Arial','YColor','k')
box on, set(gca,'Color','w')



line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);


figname = 'VGat_PSTH_contra_210518_1_composite.fig';
saveas(gcf,figname,'fig');
figname = 'VGat_PSTH_contra_210518_1_composite.pdf';
print('-dpdf','-painters','-loose',figname);






