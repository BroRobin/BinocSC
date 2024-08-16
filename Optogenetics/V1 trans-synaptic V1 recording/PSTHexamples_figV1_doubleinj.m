%% Create example trace 210113_4

P.datapath = [path to files] '210113_4';
P.fs = 20000;
cd(P.datapath)

load('RLB_EC_LEDdata_13Jan21 009.mat')

% Make PSTH
count_left = 0; count_right = 0;
count_both = 0;

fig(1) = figure; hold on;
fig(2) = figure; hold on;
% fig(3) = figure; hold on;
for ii=1:length(D.trialID)
    if D.trialID(ii)==1
        count_left=count_left+1;
        if P.side==1
            figure(fig(1));
        elseif P.side==2
            figure(fig(2));
        end
        plot(Spk.spktimes_left{count_left},repmat(count_left,numel(Spk.spktimes_left{count_left}),1),'k.');hold on;
    elseif D.trialID(ii)==2
        count_right=count_right+1;
        if P.side==1
            figure(fig(2));
        elseif P.side==2
            figure(fig(1));
        end
        plot(Spk.spktimes_right{count_right},repmat(count_right,numel(Spk.spktimes_right{count_right}),1),'k.');hold on;
        %     elseif D.trialID(ii)==3
        %         count_both=count_both+1;
        %         figure(fig(3));
        %         plot(Spk.spktimes_both{count_both},repmat(count_both,numel(Spk.spktimes_both{count_both}),1),'k.');hold on;
        %
    elseif isnan(D.trialID(ii))==1 % If jitter between screens exceeds margin
        count_both=count_both+1;
        figure(fig(3));
    end
end

figure(fig(1));
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 20]); ylim([0 20]); set(gca,'fontSize',35,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.1 0.1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);

xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',35,'FontName','Arial')
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
set(gca,'fontSize',35,'FontName','Arial')
ylim([0 20]); yticks([0 10 20]); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = 'Spikes_LEDRLB_13Jan21 010_opto.fig';
saveas(gcf,figname,'fig');
figname = 'Spikes_LEDRLB_13Jan21 010_opto.pdf';
print('-dpdf','-painters','-loose',figname);


%% Example visual responses
P.datapath = [path to files] '210113_4';
P.fs = 20000;
cd(P.datapath)

load('RLB_EC_LEDdata_13Jan21 010.mat')

% Make PSTH
count_left = 0; count_right = 0;
count_both = 0;

fig(1) = figure; hold on;
fig(2) = figure; hold on;
% fig(3) = figure; hold on;
for ii=1:length(D.trialID)
    if D.trialID(ii)==1
        count_left=count_left+1;
        if P.side==1
            figure(fig(1));
        elseif P.side==2
            figure(fig(2));
        end
        plot(Spk.spktimes_left{count_left},repmat(count_left,numel(Spk.spktimes_left{count_left}),1),'k.');hold on;
    elseif D.trialID(ii)==2
        count_right=count_right+1;
        if P.side==1
            figure(fig(2));
        elseif P.side==2
            figure(fig(1));
        end
        plot(Spk.spktimes_right{count_right},repmat(count_right,numel(Spk.spktimes_right{count_right}),1),'k.');hold on;
        %     elseif D.trialID(ii)==3
        %         count_both=count_both+1;
        %         figure(fig(3));
        %         plot(Spk.spktimes_both{count_both},repmat(count_both,numel(Spk.spktimes_both{count_both}),1),'k.');hold on;
        %
    elseif isnan(D.trialID(ii))==1 % If jitter between screens exceeds margin
        count_both=count_both+1;
        figure(fig(3));
    end
end

figure(fig(1));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 50]); ylim([0 50]); set(gca,'fontSize',35,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
if P.side ==1;
    plot(Spk.kde_left_X,Spk.kde_left,'r','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
    % ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
elseif P.side ==2;
    plot(Spk.kde_right_X,Spk.kde_right,'r','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both])]);
    % ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
end
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',35,'FontName','Arial')
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
set(gca,'fontSize',35,'FontName','Arial')
ylim([0 70]); yticks([0 35 70]); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = 'Spikes_LEDRLB_13Jan21 010_ipsi.fig';
saveas(gcf,figname,'fig');
figname = 'Spikes_LEDRLB_13Jan21 010_ipsi.pdf';
print('-dpdf','-painters','-loose',figname);

% Contra
figure(fig(2));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 50]); ylim([0 50]); set(gca,'fontSize',35,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
if P.side ==2;
    plot(Spk.kde_left_X,Spk.kde_left,'b','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
    % ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
elseif P.side ==1;
    plot(Spk.kde_right_X,Spk.kde_right,'b','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both])]);
    % ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
end
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',35,'FontName','Arial')
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
set(gca,'fontSize',35,'FontName','Arial')
ylim([0 70]); yticks([0 35 70]); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = 'Spikes_LEDRLB_13Jan21 010_contra.fig';
saveas(gcf,figname,'fig');
figname = 'Spikes_LEDRLB_13Jan21 010_contra.pdf';
print('-dpdf','-painters','-loose',figname);





