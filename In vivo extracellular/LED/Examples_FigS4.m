%% Create examples (supplementary figure 4)

%% Example 200228_1 - Type 1
P.datapath = ''; % Path to data files
P.fs = 20000;
cd(P.datapath)
savename='200228_1';
ylimvalues = [0 30];
ylimticks = [0 15 30];

load('RLB_EC_LEDdata_28Feb20 001.mat')

% Make PSTH
count_left = 0; count_right = 0;
count_both = 0;

fig(1) = figure; hold on;
fig(2) = figure; hold on;
fig(3) = figure; hold on;
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
    elseif D.trialID(ii)==3
        count_both=count_both+1;
        figure(fig(3));
        plot(Spk.spktimes_both{count_both},repmat(count_both,numel(Spk.spktimes_both{count_both}),1),'k.');hold on;

    elseif isnan(D.trialID(ii))==1 % If jitter between screens exceeds margin
        count_both=count_both+1;
        figure(fig(3));
    end
end

figure(fig(1));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
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
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_ipsi.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_ipsi.pdf',savename);
print('-dpdf','-painters','-loose',figname);

% Contra
figure(fig(2));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
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
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_contra.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_contra.pdf',savename);
print('-dpdf','-painters','-loose',figname);

% Both
figure(fig(3));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
plot(Spk.kde_both_X,Spk.kde_both,'g','LineWidth',2);ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',35,'FontName','Arial')
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
set(gca,'fontSize',35,'FontName','Arial')
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_both.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_both.pdf',savename);
print('-dpdf','-painters','-loose',figname);


%% Type 2 - 200226_11

P.datapath = ''; % Path to data files
P.fs = 20000;
cd(P.datapath)
savename='200226_11';
ylimvalues = [0 6];
ylimticks = [0 3 6];

load('RLB_EC_LEDdata_26Feb20 021.mat')

% Make PSTH
count_left = 0; count_right = 0;
count_both = 0;

fig(1) = figure; hold on;
fig(2) = figure; hold on;
fig(3) = figure; hold on;
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
    elseif D.trialID(ii)==3
        count_both=count_both+1;
        figure(fig(3));
        plot(Spk.spktimes_both{count_both},repmat(count_both,numel(Spk.spktimes_both{count_both}),1),'k.');hold on;

    elseif isnan(D.trialID(ii))==1 % If jitter between screens exceeds margin
        count_both=count_both+1;
        figure(fig(3));
    end
end

figure(fig(1));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
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
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_ipsi.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_ipsi.pdf',savename);
print('-dpdf','-painters','-loose',figname);

% Contra
figure(fig(2));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
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
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_contra.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_contra.pdf',savename);
print('-dpdf','-painters','-loose',figname);

% Both
figure(fig(3));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
plot(Spk.kde_both_X,Spk.kde_both,'g','LineWidth',2);ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',35,'FontName','Arial')
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
set(gca,'fontSize',35,'FontName','Arial')
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_both.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_both.pdf',savename);
print('-dpdf','-painters','-loose',figname);

%% Type 3 - 200227_11

P.datapath = ''; % Path to data files
P.fs = 20000;
cd(P.datapath)
savename='200227_11';
ylimvalues = [0 75];
ylimticks = [0 25 50 75];

load('RLB_EC_LEDdata_27Feb20 013.mat')

% Make PSTH
count_left = 0; count_right = 0;
count_both = 0;

fig(1) = figure; hold on;
fig(2) = figure; hold on;
fig(3) = figure; hold on;
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
    elseif D.trialID(ii)==3
        count_both=count_both+1;
        figure(fig(3));
        plot(Spk.spktimes_both{count_both},repmat(count_both,numel(Spk.spktimes_both{count_both}),1),'k.');hold on;

    elseif isnan(D.trialID(ii))==1 % If jitter between screens exceeds margin
        count_both=count_both+1;
        figure(fig(3));
    end
end

figure(fig(1));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
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
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_ipsi.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_ipsi.pdf',savename);
print('-dpdf','-painters','-loose',figname);

% Contra
figure(fig(2));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
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
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_contra.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_contra.pdf',savename);
print('-dpdf','-painters','-loose',figname);

% Both
figure(fig(3));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
plot(Spk.kde_both_X,Spk.kde_both,'g','LineWidth',2);ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',35,'FontName','Arial')
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
set(gca,'fontSize',35,'FontName','Arial')
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_both.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_both.pdf',savename);
print('-dpdf','-painters','-loose',figname);

%% Type 4 - 200227_1

P.datapath = ''; % Path to data files
P.fs = 20000;
cd(P.datapath)
savename='200227_1';
ylimvalues = [0 6];
ylimticks = [0 3 6];

load('RLB_EC_LEDdata_27Feb20 001.mat')

% Make PSTH
count_left = 0; count_right = 0;
count_both = 0;

fig(1) = figure; hold on;
fig(2) = figure; hold on;
fig(3) = figure; hold on;
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
    elseif D.trialID(ii)==3
        count_both=count_both+1;
        figure(fig(3));
        plot(Spk.spktimes_both{count_both},repmat(count_both,numel(Spk.spktimes_both{count_both}),1),'k.');hold on;

    elseif isnan(D.trialID(ii))==1 % If jitter between screens exceeds margin
        count_both=count_both+1;
        figure(fig(3));
    end
end

figure(fig(1));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
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
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_ipsi.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_ipsi.pdf',savename);
print('-dpdf','-painters','-loose',figname);

% Contra
figure(fig(2));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
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
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_contra.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_contra.pdf',savename);
print('-dpdf','-painters','-loose',figname);

% Both
figure(fig(3));
yyaxis left
ylabel('Trials','fontSize',35,'fontName','Arial','Color','k');
yticks([0 75]); ylim([0 75]); set(gca,'fontSize',35,'FontName','Arial')
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
plot(Spk.kde_both_X,Spk.kde_both,'g','LineWidth',2);ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',35,'FontName','Arial')
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
set(gca,'fontSize',35,'FontName','Arial')
ylim(ylimvalues); yticks(ylimticks); set(gca,'fontSize',35,'FontName','Arial','YColor','k')
%Graph general
box on
% set(h,'LineWidth',1)


figname = sprintf('LEDRLB_%s_both.fig',savename);
saveas(gcf,figname,'fig');
figname = sprintf('LEDRLB_%s_both.pdf',savename);
print('-dpdf','-painters','-loose',figname);