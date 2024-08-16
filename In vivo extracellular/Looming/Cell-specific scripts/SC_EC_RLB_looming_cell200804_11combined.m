%% SC_EC_RLB_looming
% Analyse Vm and spike responses to looming stimuli to Right Left and Both eyes
% by R. Broersen; 03-07-2019
close all;
clear all;


%% 200804_11
P.datapath = [path to files] '/200804';
P.fileNums = [131];
P.sweepExclude = [];
P.fileNamePrefix = '04Aug20 ';
P.cellID = '200804_11';
P.pksThreshold = -0.05; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 100;
P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.

%% Parameters definition
spkpause=0; % 1 for pausing for checking spikes
P.stimOrder = [2 1 3]; %Right, left, both
P.trialDur = 0.75; % trial length in sec
P.medianFiltWindow = 0.01; % 2.5 ms window median filter
P.filtCutLow = 100; %low cut frequency in Hz
P.filtOrder = 1; %Order of the filter
P.cutoff  =   500;  % gaussian filter cutoff
P.TTLThreshold = 0.025;
ROC_window=0.5;
cd(P.datapath)
P.outputpath = [path to output folder] P.cellID];
try
    cd(P.outputpath)
catch
    mkdir([path to output folder] P.cellID]);
end
cd(P.datapath)
P.fs=20000;
P.maxFrameDiff = 0.015; % Maximum allowed difference between start stimuli for binocular stimulation

%% Load the data
cd(P.datapath)
% set correct filename
if P.fileNums<10
    P.fileName = [P.fileNamePrefix '00' num2str(P.fileNums)];
elseif P.fileNums>=10 && P.fileNums<100
    P.fileName = [P.fileNamePrefix '0' num2str(P.fileNums)];
elseif P.fileNums>100
    P.fileName = [P.fileNamePrefix num2str(P.fileNums)];
end

% Import the data
file1 = load('04Aug20_013.mat');
file2 = load('04Aug20_015.mat');

D.stimData = [file1.data; file2.data];
D.metaData = file1.meta;
D.timestamps = file1.time;


P.numStim = size(D.stimData,1);
D.metaData.fs = 1/D.metaData.SampInt;



%% Create vector of all data, filter
D.fullDataVector = [];
for jj=1:4:P.numStim
    D.fullDataVector = [D.fullDataVector D.stimData{jj}*10^3];%convert to mV
end

% Perform gaussian filter on trace
stdsmooth=sqrt(2*log(2))./(P.cutoff.*2.*pi);
index = gfilt(D.fullDataVector',D.metaData.fs,stdsmooth);
index = diff(index);
% figure; plot(D.fullDataVector(1:50000))
% hold on; plot(index(1:50000))

% Detect the spike peaks in the traces
% [b,a]=cheby2(P.filtOrder,0.5,[P.filtCutLow]/(D.metaData.fs/2),'high');
% Filter the trace
% D.fullDataVector_filt = filter(b,a,index);

% Detect and plot the peaks
idx = [];
idx_pks = [];
D.pks = {}; D.locs = {};
fig(1) = figure;
idx = index;
if P.spikeDetMode==1
    idx_pks = index; idx_pks(idx_pks<P.pksThreshold)=NaN;
    [D.pks, D.locs] = findpeaks(idx_pks);
    if numel(D.pks)>0
        figure(fig(1)); hold on; plot(idx), plot(idx_pks,'g'); plot(D.locs,D.pks,'r*');hold off
        if spkpause==1
            disp('Paused for Spk check'); pause;
        end
    end
elseif P.spikeDetMode==2
    idx_pks = index; idx_pks(idx_pks>P.pksThreshold)=NaN;
    idx_pks=idx_pks*-1;
    [D.pks, D.locs] = findpeaks(idx_pks);
    if numel(D.pks)>0
        figure(fig(1)); hold on; plot(idx), plot(idx_pks*-1,'g'); plot(D.locs,D.pks*-1,'r*');hold off
        if spkpause==1
            disp('Paused for Spk check'); pause;
        end
    end
end


%% Process TTL trial data
D.leftScreenData = [];
D.rightScreenData = [];
D.PTBoutputData = [];
for jj=2:4:P.numStim
    D.leftScreenData = [D.leftScreenData D.stimData{jj}];
end
D.leftScreenData= gfilt(D.leftScreenData',D.metaData.fs,9.3695e-05);

for jj=3:4:P.numStim
    D.rightScreenData = [D.rightScreenData D.stimData{jj}];
end
D.rightScreenData= gfilt(D.rightScreenData',D.metaData.fs,9.3695e-05);
%
% for jj=4:4:P.numStim
%     D.PTBoutputData = [D.PTBoutputData D.stimData{jj}];
% end
% D.PTBoutputData= gfilt(D.PTBoutputData',D.metaData.fs,9.3695e-05);

% Calculate baseline parameters. Detect where the TTL signal increases
% >3*SD of baseline
P.leftScreenProps.mean = mean(D.leftScreenData(1:2*10^4));
P.leftScreenProps.SD = std(D.leftScreenData(1:2*10^4));
P.leftScreenProps.threshold = (3*P.leftScreenProps.SD)+P.leftScreenProps.mean;

idx=[];
P.leftScreenProps.locs=[];
try
    for ii=1:(size(P.stimOrder,2)*P.numReps)
        if isempty(idx)==1
            idx = D.leftScreenData;
        else
            idx(1:(P.leftScreenProps.locs(ii-1)+(2*D.metaData.fs))) = 0;
        end
        [P.leftScreenProps.locs(ii)] = find(idx>P.leftScreenProps.threshold,1,'first');
    end
end

P.rightScreenProps.mean = mean(D.rightScreenData(1:2*10^4));
P.rightScreenProps.SD = std(D.rightScreenData(1:2*10^4));
P.rightScreenProps.threshold = (5*P.rightScreenProps.SD)+P.rightScreenProps.mean;

idx=[];
P.rightScreenProps.locs=[];
try
    for ii=1:(size(P.stimOrder,2)*P.numReps)
        if isempty(idx)==1
            idx = D.rightScreenData;
        else
            idx(1:(P.rightScreenProps.locs(ii-1)+(2*D.metaData.fs))) = 0;
        end
        [P.rightScreenProps.locs(ii)] = find(idx>P.rightScreenProps.threshold,1,'first');
        try
            if P.sensorCorrection==1
                P.rightScreenProps.locs(ii) = P.rightScreenProps.locs(ii)-round(0.0149*D.metaData.fs);
            end
        end
    end

end
if numel(P.leftScreenProps.locs)~=numel(P.rightScreenProps.locs)
    disp('Error in number of TTL events detected, right and left screen are not equal number')
end

P.rightScreenProps.locs(101)=[];
P.leftScreenProps.locs(101)=[];

%% Gather the trialdata
D.trialID = repmat(P.stimOrder,1,P.numReps);
D.trial_timestamps = []; %500ms baseline - trial length - 500 ms after
D.trialdata_left=[];
D.trialdata_right=[];
D.trialdata_both=[];
count_left=0;
count_right=0;
idx=[];
idxPadded=[];
P.screenJitter = [];

% Calculate the trial_timestamps
try
    for ii = 1:length(D.trialID)
        if D.trialID(ii)==2
            count_right=count_right+1;
            D.trial_timestamps = [D.trial_timestamps P.rightScreenProps.locs(count_right)-(0.5*D.metaData.fs)];
        elseif D.trialID(ii)==1
            count_left=count_left+1;
            D.trial_timestamps = [D.trial_timestamps P.leftScreenProps.locs(count_left)-(0.5*D.metaData.fs)];
        elseif D.trialID(ii)==3
            count_right=count_right+1;
            count_left=count_left+1;
            P.screenJitter = [P.screenJitter P.leftScreenProps.locs(count_left)-P.rightScreenProps.locs(count_right)];
            if P.screenJitter(end)>(P.fs*P.maxFrameDiff)||P.screenJitter(end)<((P.fs*P.maxFrameDiff)*-1)
                sprintf('Trial %.f: Difference start stimuli both screens exceeds threshold',ii)
                abs(P.leftScreenProps.locs(count_left)-P.rightScreenProps.locs(count_right))
                D.trialID(ii)=NaN;
                D.trial_timestamps=[D.trial_timestamps NaN];
            else
                %             D.trial_timestamps = [D.trial_timestamps min([P.leftScreenProps.locs(count_left) P.rightScreenProps.locs(count_right)])-(0.5*D.metaData.fs)];
                if P.side==1
                    D.trial_timestamps = [D.trial_timestamps P.rightScreenProps.locs(count_right)-(0.5*D.metaData.fs)];
                elseif P.side==2
                    D.trial_timestamps = [D.trial_timestamps P.leftScreenProps.locs(count_left)-(0.5*D.metaData.fs)];
                end
            end
        end
    end
catch
    sprintf('Spikes in %s trials could be detected',ii-1);
end

%Exclude trials if necessary
if numel(P.sweepExclude)>0
    D.trialID((P.sweepExclude*length(P.stimOrder))+1:end) = [];
    D.trial_timestamps((P.sweepExclude*length(P.stimOrder))+1:end) = [];
end

D.plotXaxis = D.timestamps(0.5*D.metaData.fs:end-1)-1;

D.plotXaxis = D.timestamps(0.5*D.metaData.fs:45000-1)-1;


%% Spike analysis
%Gather the spikedata per trial

Spk.spktimes_left={};
Spk.spktimes_right={};
Spk.spktimes_both={};
idx=[];
count_left = 0; count_right = 0;
count_both = 0;
for ii = 1:length(D.trialID)

    if D.trialID(ii)==1
        count_left=count_left+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1*D.metaData.fs)];
        Spk.spktimes_left{count_left}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==2
        count_right=count_right+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1*D.metaData.fs)];
        Spk.spktimes_right{count_right}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==3
        count_both=count_both+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1*D.metaData.fs)];
        Spk.spktimes_both{count_both}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif isnan(D.trialID(ii))==1 % If jitter between screens exceeds margin
        count_both=count_both+1;
        Spk.spktimes_both{count_both}=NaN;
    end
end

% Make PSTH
count_left = 0; count_right = 0;
count_both = 0;

fig(5) = figure; hold on;
for ii=1:length(D.trialID)
    if D.trialID(ii)==1
        count_left=count_left+1;
        if P.side==1
            subplot(4,1,1);
        elseif P.side==2
            subplot(4,1,2);
        end
        plot(Spk.spktimes_left{count_left},repmat(count_left,numel(Spk.spktimes_left{count_left}),1),'k.');hold on;
    elseif D.trialID(ii)==2
        count_right=count_right+1;
        if P.side==1
            subplot(4,1,2);
        elseif P.side==2
            subplot(4,1,1);
        end
        plot(Spk.spktimes_right{count_right},repmat(count_right,numel(Spk.spktimes_right{count_right}),1),'k.');hold on;
    elseif D.trialID(ii)==3
        count_both=count_both+1;
        subplot(4,1,3);
        plot(Spk.spktimes_both{count_both},repmat(count_both,numel(Spk.spktimes_both{count_both}),1),'k.');hold on;

    elseif isnan(D.trialID(ii))==1 % If jitter between screens exceeds margin
        count_both=count_both+1;
        subplot(4,1,3);
    end
end

% Adjust the Yaxis of PSTH to fit #trials
if P.side==1
    subplot(4,1,1);
    ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
    subplot(4,1,2);
    ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
    subplot(4,1,3);
    ylim([0 size(Spk.spktimes_both,2)]);set(gca,'FontSize',14)

elseif P.side==2
    subplot(4,1,1);
    ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
    subplot(4,1,2);
    ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
    subplot(4,1,3);
    ylim([0 size(Spk.spktimes_both,2)]);set(gca,'FontSize',14)
end

%% Calculate KDE
Spk.spktimes_both_noNaN=Spk.spktimes_both;
for ii = 1:size(Spk.spktimes_both,2)
    try
        if isnan(Spk.spktimes_both{ii}(1))
            Spk.spktimes_both_noNaN = [Spk.spktimes_both_noNaN(1:(ii-1)) Spk.spktimes_both_noNaN((ii+1):end)]; % remove NaNs
        end
    end
end

[Spk.kde_left,Spk.kde_left_X]= gauss_kde(Spk.spktimes_left,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right,Spk.kde_right_X]= gauss_kde(Spk.spktimes_right,[-0.5 max(D.plotXaxis)]);
[Spk.kde_both,Spk.kde_both_X]= gauss_kde(Spk.spktimes_both_noNaN,[-0.5 max(D.plotXaxis)]);

[Spk.kde_left_5ms,Spk.kde_left_X_5ms]= gauss_kde_5ms(Spk.spktimes_left,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right_5ms,Spk.kde_right_X_5ms]= gauss_kde_5ms(Spk.spktimes_right,[-0.5 max(D.plotXaxis)]);
[Spk.kde_both_5ms,Spk.kde_both_X_5ms]= gauss_kde_5ms(Spk.spktimes_both_noNaN,[-0.5 max(D.plotXaxis)]);

%% Plot/adjust subplots
% ipsilateral
subplot(4,1,1);
title('Ipsilateral screen','FontSize',20);
% ylim([0 P.numReps]);set(gca,'FontSize',14)
ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.25 0.25],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.75 0.75],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
if P.side ==1;
    plot(Spk.kde_left_X,Spk.kde_left,'r','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
elseif P.side ==2;
    plot(Spk.kde_right_X,Spk.kde_right,'r','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
end
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1.0 1.25])

% contralateral
subplot(4,1,2);
title('Contralateral screen','FontSize',20);
% ylim([0 50]);set(gca,'FontSize',14)
ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.25 0.25],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.75 0.75],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right
% plot(Spk.kde_right_X,(max(get(gca, 'Ylim'))/max(Spk.kde_right))*Spk.kde_right,'b','LineWidth',2);
if P.side ==2;
    plot(Spk.kde_left_X,Spk.kde_left,'b','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
elseif P.side ==1;
    plot(Spk.kde_right_X,Spk.kde_right,'b','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
end
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1.0 1.25])

%both
subplot(4,1,3); title('Both screens','FontSize',20);
% ylim([0 50]);set(gca,'FontSize',14)
ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.25 0.25],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.75 0.75],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
yyaxis right;
% plot(Spk.kde_both_X,(max(get(gca, 'Ylim'))/max(Spk.kde_both))*Spk.kde_both,'k','LineWidth',2);
plot(Spk.kde_both_X,Spk.kde_both,'k','LineWidth',2);ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]); ylabel('FF (Hz)')
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1.0 1.25])

subplot(4,1,4);
if P.side==1
    H(4)=plot(Spk.kde_left_X,Spk.kde_left,'r'); hold on;
    H(5)=plot(Spk.kde_right_X,Spk.kde_right,'b');
elseif P.side==2
    H(4)=plot(Spk.kde_left_X,Spk.kde_left,'b'); hold on;
    H(5)=plot(Spk.kde_right_X,Spk.kde_right,'r');
end
H(6)=plot(Spk.kde_both_X,Spk.kde_both,'k');
set(gca,'FontSize',14)
ylabel('FF (Hz)','fontSize',16); xlabel('Time (sec)','fontSize',16)
ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.25 0.25],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.75 0.75],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1.0 1.25])

%% Calculate response characteristics
% Calculate the sum of KDE responses
Spk.kde_sum = Spk.kde_left+Spk.kde_right;
Spk.kde_sum_5ms = Spk.kde_left_5ms+Spk.kde_right_5ms;

%Peakamp stats ON responses during the stimulus (start till 0.5s)
Spkstats=[];
if P.side ==1
    [Spkstats.peakamp_contra_ON Spkstats.peakamp_X_contra_ON]=max(Spk.kde_right(Spk.kde_right_X>0&Spk.kde_right_X<0.5));
    [Spkstats.peakamp_ipsi_ON Spkstats.peakamp_X_ipsi_ON]=max(Spk.kde_left(Spk.kde_left_X>0&Spk.kde_left_X<0.5));
elseif P.side ==2
    [Spkstats.peakamp_ipsi_ON Spkstats.peakamp_X_ipsi_ON]=max(Spk.kde_right(Spk.kde_right_X>0&Spk.kde_right_X<0.5));
    [Spkstats.peakamp_contra_ON Spkstats.peakamp_X_contra_ON]=max(Spk.kde_left(Spk.kde_left_X>0&Spk.kde_left_X<0.5));
end
[Spkstats.peakamp_both_ON Spkstats.peakamp_X_both_ON]=max(Spk.kde_both(Spk.kde_both_X>0&Spk.kde_both_X<0.5));
[Spkstats.peakamp_sum_ON Spkstats.peakamp_X_sum_ON]=max(Spk.kde_sum(Spk.kde_both_X>0&Spk.kde_both_X<0.5));

% convert to times
Spkstats.peakamp_X_contra_ON = Spk.kde_left_X(Spkstats.peakamp_X_contra_ON+500);
Spkstats.peakamp_X_ipsi_ON = Spk.kde_left_X(Spkstats.peakamp_X_ipsi_ON+500);
Spkstats.peakamp_X_both_ON = Spk.kde_left_X(Spkstats.peakamp_X_both_ON+500);
Spkstats.peakamp_X_sum_ON = Spk.kde_left_X(Spkstats.peakamp_X_sum_ON+500);

% Supra vs sublinear amplitude
Spkstats.peakamp_sumContraIpsi = Spkstats.peakamp_contra_ON+Spkstats.peakamp_ipsi_ON;

%Peakamp stats OFF responses after the stimulus (till 0.5s after)
if P.side ==1
    Spkstats.peakamp_contra_OFF=max(Spk.kde_right(P.trialDur<Spk.kde_right_X&Spk.kde_right_X<(P.trialDur+0.5)));
    Spkstats.peakamp_ipsi_OFF=max(Spk.kde_left(P.trialDur<Spk.kde_left_X&Spk.kde_left_X<(P.trialDur+0.5)));
elseif P.side ==2
    Spkstats.peakamp_ipsi_OFF=max(Spk.kde_right(P.trialDur<Spk.kde_right_X&Spk.kde_right_X<(P.trialDur+0.5)));
    Spkstats.peakamp_contra_OFF=max(Spk.kde_left(P.trialDur<Spk.kde_left_X&Spk.kde_left_X<(P.trialDur+0.5)));
end
Spkstats.peakamp_both_OFF=max(Spk.kde_both(P.trialDur<Spk.kde_both_X&Spk.kde_both_X<(P.trialDur+0.5)));
Spkstats.peakamp_sum_OFF=max(Spk.kde_sum(P.trialDur<Spk.kde_both_X&Spk.kde_both_X<(P.trialDur+0.5)));


%First-spike latency for ON responses - find spike times higher than 0
if P.side ==1
    for ii = 1:size(Spk.spktimes_right,2)
        try
            Spkstats.latency_contra_list(ii)=Spk.spktimes_right{ii}(find(Spk.spktimes_right{ii}>0,1));
        catch
            Spkstats.latency_contra_list(ii)=NaN;
        end
        try
            Spkstats.latency_ipsi_list(ii)=Spk.spktimes_left{ii}(find(Spk.spktimes_left{ii}>0,1));
        catch
            Spkstats.latency_ipsi_list(ii)=NaN;
        end
        try
            Spkstats.latency_both_list(ii)=Spk.spktimes_both{ii}(find(Spk.spktimes_both{ii}>0,1));
        catch
            Spkstats.latency_both_list(ii)=NaN;
        end
    end
elseif P.side==2
    for ii = 1:size(Spk.spktimes_right,2)
        try
            Spkstats.latency_ipsi_list(ii)=Spk.spktimes_right{ii}(find(Spk.spktimes_right{ii}>0,1));
        catch
            Spkstats.latency_ipsi_list(ii)=NaN;
        end
        try
            Spkstats.latency_contra_list(ii)=Spk.spktimes_left{ii}(find(Spk.spktimes_left{ii}>0,1));
        catch
            Spkstats.latency_contra_list(ii)=NaN;
        end
        try
            Spkstats.latency_both_list(ii)=Spk.spktimes_both{ii}(find(Spk.spktimes_both{ii}>0,1));
        catch
            Spkstats.latency_both_list(ii)=NaN;
        end
    end
end

Spkstats.spkprob_contra_n = size(Spkstats.latency_contra_list,2);
Spkstats.spkprob_ipsi_n = size(Spkstats.latency_ipsi_list,2);
Spkstats.spkprob_both_n = size(Spkstats.latency_both_list,2);

% Remove the spiketimes more than 0.5 sec
Spkstats.latency_ipsi_list = Spkstats.latency_ipsi_list(Spkstats.latency_ipsi_list<0.5);
Spkstats.latency_contra_list = Spkstats.latency_contra_list(Spkstats.latency_contra_list<0.5);
Spkstats.latency_both_list = Spkstats.latency_both_list(Spkstats.latency_both_list<0.5);

Spkstats.latency_ipsi = mean(Spkstats.latency_ipsi_list);
Spkstats.latency_contra= mean(Spkstats.latency_contra_list);
Spkstats.latency_both= mean(Spkstats.latency_both_list);

Spkstats.latency_ipsi_median = median(Spkstats.latency_ipsi_list);
Spkstats.latency_contra_median= median(Spkstats.latency_contra_list);
Spkstats.latency_both_median= median(Spkstats.latency_both_list);

%Spike probability ON
Spkstats.spkprob_contra = size(Spkstats.latency_contra_list,2)/Spkstats.spkprob_contra_n;
Spkstats.spkprob_ipsi = size(Spkstats.latency_ipsi_list,2)/Spkstats.spkprob_ipsi_n;
Spkstats.spkprob_both = size(Spkstats.latency_both_list,2)/Spkstats.spkprob_both_n;

%First-spike latency for OFF responses - find spike times higher than 1.5
if P.side ==1
    for ii = 1:size(Spk.spktimes_right,2)
        try
            Spkstats.latency_contra_list_OFF(ii)=Spk.spktimes_right{ii}(find(Spk.spktimes_right{ii}>1.5,1));
        catch
            Spkstats.latency_contra_list_OFF(ii)=NaN;
        end
        try
            Spkstats.latency_ipsi_list_OFF(ii)=Spk.spktimes_left{ii}(find(Spk.spktimes_left{ii}>1.5,1));
        catch
            Spkstats.latency_ipsi_list_OFF(ii)=NaN;
        end
        try
            Spkstats.latency_both_list_OFF(ii)=Spk.spktimes_both{ii}(find(Spk.spktimes_both{ii}>1.5,1));
        catch
            Spkstats.latency_both_list_OFF(ii)=NaN;
        end
    end
elseif P.side==2
    for ii = 1:size(Spk.spktimes_right,2)
        try
            Spkstats.latency_ipsi_list_OFF(ii)=Spk.spktimes_right{ii}(find(Spk.spktimes_right{ii}>1.5,1));
        catch
            Spkstats.latency_ipsi_list_OFF(ii)=NaN;
        end
        try
            Spkstats.latency_contra_list_OFF(ii)=Spk.spktimes_left{ii}(find(Spk.spktimes_left{ii}>1.5,1));
        catch
            Spkstats.latency_contra_list_OFF(ii)=NaN;
        end
        try
            Spkstats.latency_both_list_OFF(ii)=Spk.spktimes_both{ii}(find(Spk.spktimes_both{ii}>1.5,1));
        catch
            Spkstats.latency_both_list_OFF(ii)=NaN;
        end
    end
end

Spkstats.spkprob_contra_n_OFF = size(Spkstats.latency_contra_list_OFF,2);
Spkstats.spkprob_ipsi_n_OFF = size(Spkstats.latency_ipsi_list_OFF,2);
Spkstats.spkprob_both_n_OFF = size(Spkstats.latency_both_list_OFF,2);

% Remove the spiketimes more than 2 sec
Spkstats.latency_ipsi_list_OFF = Spkstats.latency_ipsi_list_OFF(Spkstats.latency_ipsi_list_OFF<2);
Spkstats.latency_contra_list_OFF = Spkstats.latency_contra_list_OFF(Spkstats.latency_contra_list_OFF<2);
Spkstats.latency_both_list_OFF = Spkstats.latency_both_list_OFF(Spkstats.latency_both_list_OFF<2);

Spkstats.latency_ipsi_OFF = mean(Spkstats.latency_ipsi_list_OFF)-1.5;
Spkstats.latency_contra_OFF= mean(Spkstats.latency_contra_list_OFF)-1.5;
Spkstats.latency_both_OFF= mean(Spkstats.latency_both_list_OFF)-1.5;

Spkstats.latency_ipsi_median_OFF = median(Spkstats.latency_ipsi_list_OFF)-1.5;
Spkstats.latency_contra_median_OFF= median(Spkstats.latency_contra_list_OFF)-1.5;
Spkstats.latency_both_median_OFF= median(Spkstats.latency_both_list_OFF)-1.5;

%Spike probability OFF
Spkstats.spkprob_contra_OFF = size(Spkstats.latency_contra_list_OFF,2)/Spkstats.spkprob_contra_n_OFF;
Spkstats.spkprob_ipsi_OFF = size(Spkstats.latency_ipsi_list_OFF,2)/Spkstats.spkprob_ipsi_n_OFF;
Spkstats.spkprob_both_OFF = size(Spkstats.latency_both_list_OFF,2)/Spkstats.spkprob_both_n_OFF;

%resp magnitude (AUC KDE) ON
if P.side ==1
    Spkstats.AUC_contra_ON=sum(Spk.kde_right(Spk.kde_right_X>0&Spk.kde_right_X<0.5));
    Spkstats.AUC_ipsi_ON=sum(Spk.kde_left(Spk.kde_left_X>0&Spk.kde_left_X<0.5));
elseif P.side ==2
    Spkstats.AUC_ipsi_ON=sum(Spk.kde_right(Spk.kde_right_X>0&Spk.kde_right_X<0.5));
    Spkstats.AUC_contra_ON=sum(Spk.kde_left(Spk.kde_left_X>0&Spk.kde_left_X<0.5));
end
Spkstats.AUC_both_ON=sum(Spk.kde_both(Spk.kde_both_X>0&Spk.kde_both_X<0.5));
Spkstats.AUC_sum_ON=sum(Spk.kde_sum(Spk.kde_both_X>0&Spk.kde_both_X<0.5));

%AUC stats OFF responses after the stimulus (till 0.5s after)
if P.side ==1
    Spkstats.AUC_contra_OFF=sum(Spk.kde_right(P.trialDur<Spk.kde_right_X&Spk.kde_right_X<(P.trialDur+0.5)));
    Spkstats.AUC_ipsi_OFF=sum(Spk.kde_left(P.trialDur<Spk.kde_left_X&Spk.kde_left_X<(P.trialDur+0.5)));
elseif P.side ==2
    Spkstats.AUC_ipsi_OFF=sum(Spk.kde_right(P.trialDur<Spk.kde_right_X&Spk.kde_right_X<(P.trialDur+0.5)));
    Spkstats.AUC_contra_OFF=sum(Spk.kde_left(P.trialDur<Spk.kde_left_X&Spk.kde_left_X<(P.trialDur+0.5)));
end
Spkstats.AUC_both_OFF=sum(Spk.kde_both(P.trialDur<Spk.kde_both_X&Spk.kde_both_X<(P.trialDur+0.5)));
Spkstats.AUC_sum_OFF=sum(Spk.kde_sum(P.trialDur<Spk.kde_both_X&Spk.kde_both_X<(P.trialDur+0.5)));


%% Spontaneous parameters
Spont=[];
Spont.dur=0;
Spont.baselineData=[];
Spont.ISI=[];
for ii=1:P.numReps
    try
        Spont.baselineData=[Spont.baselineData reshape(Spk.spktimes_left{ii}(Spk.spktimes_left{ii}<0),1,[])];
        Spont.dur=Spont.dur+0.5;
        Spont.ISI = [Spont.ISI reshape(diff(Spk.spktimes_left{ii}(Spk.spktimes_left{ii}<0)),1,[])];
    end
    try
        Spont.baselineData= [Spont.baselineData  reshape(Spk.spktimes_right{ii}(Spk.spktimes_right{ii}<0),1,[])];
        Spont.dur=Spont.dur+0.5;
        Spont.ISI = [Spont.ISI reshape(diff(Spk.spktimes_right{ii}(Spk.spktimes_right{ii}<0)),1,[])];
    end
    try
        Spont.baselineData= [Spont.baselineData  reshape(Spk.spktimes_both{ii}(Spk.spktimes_both{ii}<0),1,[])];
        Spont.dur=Spont.dur+0.5;
        Spont.ISI = [Spont.ISI reshape(diff(Spk.spktimes_both{ii}(Spk.spktimes_both{ii}<0)),1,[])];
    end
end


Spont.FF = size(Spont.baselineData,2)/Spont.dur;
Spont.ISI_stats(1,1) = nanmean(Spont.ISI); % mean of ISIs
Spont.ISI_stats(1,2) = nanstd(Spont.ISI); % SD of ISIs
Spont.CV = (Spont.ISI_stats(1,1)/Spont.ISI_stats(1,2))


%%  Detect significant responses
%2x SD of baseline
Spkstats.ipsi_resp_2 = [];
Spkstats.contra_resp_2 = [];
Spkstats.both_resp_2 = [];

if sum(Spk.kde_left(501:1000)>(mean(Spk.kde_left(1:500))+2*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_2(1)=1;
else
    Spkstats.ipsi_resp_2(1)=0;
end
if sum(Spk.kde_left(501:1000)<(mean(Spk.kde_left(1:500))-2*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_2(2)=1;
else
    Spkstats.ipsi_resp_2(2)=0;
end
if sum(Spk.kde_right(501:1000)>(mean(Spk.kde_right(1:500))+2*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_2(1)=1;
else
    Spkstats.contra_resp_2(1)=0;
end
if sum(Spk.kde_right(501:1000)<(mean(Spk.kde_right(1:500))-2*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_2(2)=1;
else
    Spkstats.contra_resp_2(2)=0;
end

if sum(Spk.kde_both(501:1000)>(mean(Spk.kde_both(1:500))+2*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_2(1)=1;
else
    Spkstats.both_resp_2(1)=0;
end
if sum(Spk.kde_both(501:1000)<(mean(Spk.kde_both(1:500))-2*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_2(2)=1;
else
    Spkstats.both_resp_2(2)=0;
end

%3x SD of baseline
Spkstats.ipsi_resp_3 = [];
Spkstats.contra_resp_3 = [];
Spkstats.both_resp_3 = [];

if sum(Spk.kde_left(501:1000)>(mean(Spk.kde_left(1:500))+3*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_3(1)=1;
else
    Spkstats.ipsi_resp_3(1)=0;
end
if sum(Spk.kde_left(501:1000)<(mean(Spk.kde_left(1:500))-3*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_3(2)=1;
else
    Spkstats.ipsi_resp_3(2)=0;
end
if sum(Spk.kde_right(501:1000)>(mean(Spk.kde_right(1:500))+3*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_3(1)=1;
else
    Spkstats.contra_resp_3(1)=0;
end
if sum(Spk.kde_right(501:1000)<(mean(Spk.kde_right(1:500))-3*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_3(2)=1;
else
    Spkstats.contra_resp_3(2)=0;
end

if sum(Spk.kde_both(501:1000)>(mean(Spk.kde_both(1:500))+3*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_3(1)=1;
else
    Spkstats.both_resp_3(1)=0;
end
if sum(Spk.kde_both(501:1000)<(mean(Spk.kde_both(1:500))-3*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_3(2)=1;
else
    Spkstats.both_resp_3(2)=0;
end

%4x SD of baseline
Spkstats.ipsi_resp_4 = [];
Spkstats.contra_resp_4 = [];
Spkstats.both_resp_4 = [];

if sum(Spk.kde_left(501:1000)>(mean(Spk.kde_left(1:500))+4*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_4(1)=1;
else
    Spkstats.ipsi_resp_4(1)=0;
end
if sum(Spk.kde_left(501:1000)<(mean(Spk.kde_left(1:500))-4*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_4(2)=1;
else
    Spkstats.ipsi_resp_4(2)=0;
end
if sum(Spk.kde_right(501:1000)>(mean(Spk.kde_right(1:500))+4*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_4(1)=1;
else
    Spkstats.contra_resp_4(1)=0;
end
if sum(Spk.kde_right(501:1000)<(mean(Spk.kde_right(1:500))-4*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_4(2)=1;
else
    Spkstats.contra_resp_4(2)=0;
end

if sum(Spk.kde_both(501:1000)>(mean(Spk.kde_both(1:500))+4*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_4(1)=1;
else
    Spkstats.both_resp_4(1)=0;
end
if sum(Spk.kde_both(501:1000)<(mean(Spk.kde_both(1:500))-4*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_4(2)=1;
else
    Spkstats.both_resp_4(2)=0;
end

% 5x SD of baseline
Spkstats.ipsi_resp_5 = [];
Spkstats.contra_resp_5 = [];
Spkstats.both_resp_5 = [];

if sum(Spk.kde_left(501:1000)>(mean(Spk.kde_left(1:500))+5*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_5(1)=1;
else
    Spkstats.ipsi_resp_5(1)=0;
end
if sum(Spk.kde_left(501:1000)<(mean(Spk.kde_left(1:500))-5*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_5(2)=1;
else
    Spkstats.ipsi_resp_5(2)=0;
end
if sum(Spk.kde_right(501:1000)>(mean(Spk.kde_right(1:500))+5*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_5(1)=1;
else
    Spkstats.contra_resp_5(1)=0;
end
if sum(Spk.kde_right(501:1000)<(mean(Spk.kde_right(1:500))-5*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_5(2)=1;
else
    Spkstats.contra_resp_5(2)=0;
end

if sum(Spk.kde_both(501:1000)>(mean(Spk.kde_both(1:500))+5*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_5(1)=1;
else
    Spkstats.both_resp_5(1)=0;
end
if sum(Spk.kde_both(501:1000)<(mean(Spk.kde_both(1:500))-5*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_5(2)=1;
else
    Spkstats.both_resp_5(2)=0;
end

% 6x SD of baseline
Spkstats.ipsi_resp_6 = [];
Spkstats.contra_resp_6 = [];
Spkstats.both_resp_6 = [];

if sum(Spk.kde_left(501:1000)>(mean(Spk.kde_left(1:500))+6*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_6(1)=1;
else
    Spkstats.ipsi_resp_6(1)=0;
end
if sum(Spk.kde_left(501:1000)<(mean(Spk.kde_left(1:500))-6*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_6(2)=1;
else
    Spkstats.ipsi_resp_6(2)=0;
end
if sum(Spk.kde_right(501:1000)>(mean(Spk.kde_right(1:500))+6*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_6(1)=1;
else
    Spkstats.contra_resp_6(1)=0;
end
if sum(Spk.kde_right(501:1000)<(mean(Spk.kde_right(1:500))-6*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_6(2)=1;
else
    Spkstats.contra_resp_6(2)=0;
end

if sum(Spk.kde_both(501:1000)>(mean(Spk.kde_both(1:500))+6*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_6(1)=1;
else
    Spkstats.both_resp_6(1)=0;
end
if sum(Spk.kde_both(501:1000)<(mean(Spk.kde_both(1:500))-6*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_6(2)=1;
else
    Spkstats.both_resp_6(2)=0;
end

% 7x SD of baseline
Spkstats.ipsi_resp_7 = [];
Spkstats.contra_resp_7 = [];
Spkstats.both_resp_7 = [];

if sum(Spk.kde_left(501:1000)>(mean(Spk.kde_left(1:500))+7*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_7(1)=1;
else
    Spkstats.ipsi_resp_7(1)=0;
end
if sum(Spk.kde_left(501:1000)<(mean(Spk.kde_left(1:500))-7*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_7(2)=1;
else
    Spkstats.ipsi_resp_7(2)=0;
end
if sum(Spk.kde_right(501:1000)>(mean(Spk.kde_right(1:500))+7*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_7(1)=1;
else
    Spkstats.contra_resp_7(1)=0;
end
if sum(Spk.kde_right(501:1000)<(mean(Spk.kde_right(1:500))-7*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_7(2)=1;
else
    Spkstats.contra_resp_7(2)=0;
end

if sum(Spk.kde_both(501:1000)>(mean(Spk.kde_both(1:500))+7*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_7(1)=1;
else
    Spkstats.both_resp_7(1)=0;
end
if sum(Spk.kde_both(501:1000)<(mean(Spk.kde_both(1:500))-7*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_7(2)=1;
else
    Spkstats.both_resp_7(2)=0;
end

% 8x SD of baseline
Spkstats.ipsi_resp_8 = [];
Spkstats.contra_resp_8 = [];
Spkstats.both_resp_8 = [];

if sum(Spk.kde_left(501:1000)>(mean(Spk.kde_left(1:500))+8*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_8(1)=1;
else
    Spkstats.ipsi_resp_8(1)=0;
end
if sum(Spk.kde_left(501:1000)<(mean(Spk.kde_left(1:500))-8*std(Spk.kde_left(1:500))))>0
    Spkstats.ipsi_resp_8(2)=1;
else
    Spkstats.ipsi_resp_8(2)=0;
end
if sum(Spk.kde_right(501:1000)>(mean(Spk.kde_right(1:500))+8*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_8(1)=1;
else
    Spkstats.contra_resp_8(1)=0;
end
if sum(Spk.kde_right(501:1000)<(mean(Spk.kde_right(1:500))-8*std(Spk.kde_right(1:500))))>0
    Spkstats.contra_resp_8(2)=1;
else
    Spkstats.contra_resp_8(2)=0;
end

if sum(Spk.kde_both(501:1000)>(mean(Spk.kde_both(1:500))+8*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_8(1)=1;
else
    Spkstats.both_resp_8(1)=0;
end
if sum(Spk.kde_both(501:1000)<(mean(Spk.kde_both(1:500))-8*std(Spk.kde_both(1:500))))>0
    Spkstats.both_resp_8(2)=1;
else
    Spkstats.both_resp_8(2)=0;
end

%% ROC analysis

for ii=1:size(Spk.spktimes_left,2)
    baseLine_Spk_left(ii) = sum(-1*ROC_window<=Spk.spktimes_left{ii}&Spk.spktimes_left{ii}<=0);
    light_Spk_left(ii) = sum(0<=Spk.spktimes_left{ii}&Spk.spktimes_left{ii}<=ROC_window);% response during stim within the interested window
end

for ii=1:size(Spk.spktimes_right,2)
    baseLine_Spk_right(ii) = sum(-1*ROC_window<=Spk.spktimes_right{ii}&Spk.spktimes_right{ii}<=0);
    light_Spk_right(ii) = sum(0<=Spk.spktimes_right{ii}&Spk.spktimes_right{ii}<=ROC_window);% response during stim within the interested window
end

for ii=1:size(Spk.spktimes_both,2)
    baseLine_Spk_both(ii) = sum(-1*ROC_window<=Spk.spktimes_both{ii}&Spk.spktimes_both{ii}<=0);
    light_Spk_both(ii) = sum(0<=Spk.spktimes_both{ii}&Spk.spktimes_both{ii}<=ROC_window);% response during stim within the interested window
end

%% left versus baseline
[lightFA,lightHit,lightAUROC] = calcAUROC(baseLine_Spk_left,light_Spk_left);

figure
plot(lightFA,lightHit,'bo-')
hold on
plot([0,1],[0,1],'k--')
set(gca,'xtick',[0 1],'ytick',[0 1],'box','off','tickdir','out')
% title (sprintf('ROC for light vs baseline AUROC = %i',lightAUROC))
xlabel('False Alarm')
ylabel('Hit Rate')
axis('square')

%  I will shuffle the trials
nShuffles = 1000;
lightAUROCShuffle = zeros(1,nShuffles);

for s = 1:nShuffles
    tempshuffle = Shuffle([baseLine_Spk_left light_Spk_left]);
    SAcountsShuffle{s} = tempshuffle (1:2:end);
    lightCountsShuffle{s} = tempshuffle (2:2:end);

    clear lightFAShuffle lightHitShuffle lightAUROCShuffle
    [lightFAShuffle,lightHitShuffle,lightAUROCShuffle] = calcAUROC(SAcountsShuffle{s},lightCountsShuffle{s});
    allLightAUROCShuffle(s)  =   lightAUROCShuffle;
end
% Test the significance
diffRealShuffle = allLightAUROCShuffle - lightAUROC; % Get difference between observed and shuffled ROC
significanceLightEnhancement_left = sum(diffRealShuffle>0)/nShuffles; % Find fraction of shuffled greater than observed
significanceLightDepression_left = sum(diffRealShuffle<0)/nShuffles; % Find fraction of shuffled greater than observed
close(gcf);

%% right versus baseline
[lightFA,lightHit,lightAUROC] = calcAUROC(baseLine_Spk_right,light_Spk_right);

figure
plot(lightFA,lightHit,'bo-')
hold on
plot([0,1],[0,1],'k--')
set(gca,'xtick',[0 1],'ytick',[0 1],'box','off','tickdir','out')
% title (sprintf('ROC for light vs baseline AUROC = %i',lightAUROC))
xlabel('False Alarm')
ylabel('Hit Rate')
axis('square')

%  I will shuffle the trials
nShuffles = 1000;
lightAUROCShuffle = zeros(1,nShuffles);

for s = 1:nShuffles
    tempshuffle = Shuffle([baseLine_Spk_right light_Spk_right]);
    SAcountsShuffle{s} = tempshuffle (1:2:end);
    lightCountsShuffle{s} = tempshuffle (2:2:end);

    clear lightFAShuffle lightHitShuffle lightAUROCShuffle
    [lightFAShuffle,lightHitShuffle,lightAUROCShuffle] = calcAUROC(SAcountsShuffle{s},lightCountsShuffle{s});
    allLightAUROCShuffle(s)  =   lightAUROCShuffle;
end
% Test the significance
diffRealShuffle = allLightAUROCShuffle - lightAUROC; % Get difference between observed and shuffled ROC
significanceLightEnhancement_right = sum(diffRealShuffle>0)/nShuffles; % Find fraction of shuffled greater than observed
significanceLightDepression_right = sum(diffRealShuffle<0)/nShuffles; % Find fraction of shuffled greater than observed
close(gcf);

%% both versus baseline
[lightFA,lightHit,lightAUROC] = calcAUROC(baseLine_Spk_both,light_Spk_both);

figure
plot(lightFA,lightHit,'bo-')
hold on
plot([0,1],[0,1],'k--')
set(gca,'xtick',[0 1],'ytick',[0 1],'box','off','tickdir','out')
% title (sprintf('ROC for light vs baseline AUROC = %i',lightAUROC))
xlabel('False Alarm')
ylabel('Hit Rate')
axis('square')

%  I will shuffle the trials
nShuffles = 1000;
lightAUROCShuffle = zeros(1,nShuffles);

for s = 1:nShuffles
    tempshuffle = Shuffle([baseLine_Spk_both light_Spk_both]);
    SAcountsShuffle{s} = tempshuffle (1:2:end);
    lightCountsShuffle{s} = tempshuffle (2:2:end);

    clear lightFAShuffle lightHitShuffle lightAUROCShuffle
    [lightFAShuffle,lightHitShuffle,lightAUROCShuffle] = calcAUROC(SAcountsShuffle{s},lightCountsShuffle{s});
    allLightAUROCShuffle(s)  =   lightAUROCShuffle;
end
% Test the significance
diffRealShuffle = allLightAUROCShuffle - lightAUROC; % Get difference between observed and shuffled ROC
significanceLightEnhancement_both = sum(diffRealShuffle>0)/nShuffles; % Find fraction of shuffled greater than observed
significanceLightDepression_both = sum(diffRealShuffle<0)/nShuffles; % Find fraction of shuffled greater than observed
%
% cd(P.outputpath)
% figname = sprintf('ROCcurve_left_LEDRLB_%s.fig',P.fileName);
% saveas(gcf,figname,'fig');
% figname = sprintf('ROCcurve_left_LEDRLB_%s.pdf',P.fileName);
% print('-dpdf','-painters','-loose',figname);
% close(gcf);
close(gcf);

%% left versus both
[lightFA,lightHit,lightAUROC] = calcAUROC(light_Spk_left,light_Spk_both);

figure
plot(lightFA,lightHit,'bo-')
hold on
plot([0,1],[0,1],'k--')
set(gca,'xtick',[0 1],'ytick',[0 1],'box','off','tickdir','out')
% title (sprintf('ROC for light vs baseline AUROC = %i',lightAUROC))
xlabel('False Alarm')
ylabel('Hit Rate')
axis('square')

%  I will shuffle the trials
nShuffles = 1000;
lightAUROCShuffle = zeros(1,nShuffles);

for s = 1:nShuffles
    tempshuffle = Shuffle([baseLine_Spk_both light_Spk_both]);
    SAcountsShuffle{s} = tempshuffle (1:2:end);
    lightCountsShuffle{s} = tempshuffle (2:2:end);

    clear lightFAShuffle lightHitShuffle lightAUROCShuffle
    [lightFAShuffle,lightHitShuffle,lightAUROCShuffle] = calcAUROC(SAcountsShuffle{s},lightCountsShuffle{s});
    allLightAUROCShuffle(s)  =   lightAUROCShuffle;
end
% Test the significance
diffRealShuffle = allLightAUROCShuffle - lightAUROC; % Get difference between observed and shuffled ROC
significanceLightEnhancement_leftvsboth = sum(diffRealShuffle>0)/nShuffles; % Find fraction of shuffled greater than observed
significanceLightDepression_leftvsboth = sum(diffRealShuffle<0)/nShuffles; % Find fraction of shuffled greater than observed
%
% cd(P.outputpath)
% figname = sprintf('ROCcurve_left_LEDRLB_%s.fig',P.fileName);
% saveas(gcf,figname,'fig');
% figname = sprintf('ROCcurve_left_LEDRLB_%s.pdf',P.fileName);
% print('-dpdf','-painters','-loose',figname);
% close(gcf);
close(gcf);

%% right versus both
[lightFA,lightHit,lightAUROC] = calcAUROC(light_Spk_right,light_Spk_both);

figure
plot(lightFA,lightHit,'bo-')
hold on
plot([0,1],[0,1],'k--')
set(gca,'xtick',[0 1],'ytick',[0 1],'box','off','tickdir','out')
% title (sprintf('ROC for light vs baseline AUROC = %i',lightAUROC))
xlabel('False Alarm')
ylabel('Hit Rate')
axis('square')

%  I will shuffle the trials
nShuffles = 1000;
lightAUROCShuffle = zeros(1,nShuffles);

for s = 1:nShuffles
    tempshuffle = Shuffle([baseLine_Spk_both light_Spk_both]);
    SAcountsShuffle{s} = tempshuffle (1:2:end);
    lightCountsShuffle{s} = tempshuffle (2:2:end);

    clear lightFAShuffle lightHitShuffle lightAUROCShuffle
    [lightFAShuffle,lightHitShuffle,lightAUROCShuffle] = calcAUROC(SAcountsShuffle{s},lightCountsShuffle{s});
    allLightAUROCShuffle(s)  =   lightAUROCShuffle;
end
% Test the significance
diffRealShuffle = allLightAUROCShuffle - lightAUROC; % Get difference between observed and shuffled ROC
significanceLightEnhancement_rightvsboth = sum(diffRealShuffle>0)/nShuffles; % Find fraction of shuffled greater than observed
significanceLightDepression_rightvsboth = sum(diffRealShuffle<0)/nShuffles; % Find fraction of shuffled greater than observed
%
% cd(P.outputpath)
% figname = sprintf('ROCcurve_left_LEDRLB_%s.fig',P.fileName);
% saveas(gcf,figname,'fig');
% figname = sprintf('ROCcurve_left_LEDRLB_%s.pdf',P.fileName);
% print('-dpdf','-painters','-loose',figname);
% close(gcf);
close(gcf);

%% Save figures and data
sprintf('Average jitter between screens is: %5f seconds',mean(P.screenJitter)/P.fs)
Spkstats.outputVars = [Spont.FF, Spont.ISI_stats(1,1), Spont.ISI_stats(1,2),Spont.CV, Spkstats.peakamp_contra_ON, Spkstats.peakamp_ipsi_ON, Spkstats.peakamp_both_ON, Spkstats.peakamp_sum_ON, Spkstats.latency_ipsi, Spkstats.latency_contra, Spkstats.latency_both, Spkstats.spkprob_contra, Spkstats.spkprob_ipsi, Spkstats.spkprob_both,Spkstats.AUC_contra_ON, Spkstats.AUC_ipsi_ON, Spkstats.AUC_both_ON, Spkstats.AUC_sum_ON, Spkstats.latency_ipsi_median, Spkstats.latency_contra_median, Spkstats.latency_both_median,Spkstats.ipsi_resp_3,Spkstats.contra_resp_3,Spkstats.both_resp_3,Spkstats.ipsi_resp_5,Spkstats.contra_resp_5,Spkstats.both_resp_5,Spkstats.peakamp_X_contra_ON, Spkstats.peakamp_X_ipsi_ON, Spkstats.peakamp_X_both_ON, Spkstats.peakamp_X_sum_ON, Spkstats.peakamp_sumContraIpsi];
outputVars_SDcomparison = [Spkstats.ipsi_resp_2,Spkstats.contra_resp_2,Spkstats.both_resp_2,Spkstats.ipsi_resp_3,Spkstats.contra_resp_3,Spkstats.both_resp_3,Spkstats.ipsi_resp_4,Spkstats.contra_resp_4,Spkstats.both_resp_4,Spkstats.ipsi_resp_5,Spkstats.contra_resp_5,Spkstats.both_resp_5,Spkstats.ipsi_resp_6,Spkstats.contra_resp_6,Spkstats.both_resp_6,Spkstats.ipsi_resp_7,Spkstats.contra_resp_7,Spkstats.both_resp_7,Spkstats.ipsi_resp_8,Spkstats.contra_resp_8,Spkstats.both_resp_8];
outputVars_ROC = [significanceLightEnhancement_left significanceLightDepression_left significanceLightEnhancement_right significanceLightDepression_right significanceLightEnhancement_both significanceLightDepression_both significanceLightEnhancement_leftvsboth significanceLightDepression_leftvsboth significanceLightEnhancement_rightvsboth significanceLightDepression_rightvsboth];

cd(P.outputpath)
% figure(fig(1));
% figname = sprintf('SpkDetection_%s.fig',P.fileName);
% saveas(gcf,figname,'fig');
% figname = sprintf('SpkDetection_%s.pdf',P.fileName);
% print('-dpdf','-painters','-loose',figname);

% figure(fig(2));
% figname = sprintf('SpkClipping_%s.fig',P.fileName);
% saveas(gcf,figname,'fig');
% figname = sprintf('SpkClipping_%s.pdf',P.fileName);
% print('-dpdf','-painters','-loose','-bestfit',figname);

% figure(fig(3));
% figname = sprintf('SpkFilter_%s.fig',P.fileName);
% saveas(gcf,figname,'fig');
% figname = sprintf('SpkFilter_%s.pdf',P.fileName);
% print('-dpdf','-painters','-loose',figname);

% figure(fig(4));
% figname = sprintf('Vm_RLB_%s.fig',P.fileName);
% saveas(gcf,figname,'fig');
% figname = sprintf('Vm_RLB_%s.pdf',P.fileName);
% print('-dpdf','-painters','-loose','-bestfit',figname);
try
    close(fig(1))
end
figure(fig(5));
figname = sprintf('Spikes_loomingRLB_%s.fig',P.fileName);
saveas(gcf,figname,'fig');
figname = sprintf('Spikes_loomingRLB_%s.pdf',P.fileName);
print('-dpdf','-painters','-loose','-fillpage',figname);

savename = sprintf('RLB_EC_loomingdata_%s.mat',P.fileName)
save(savename,'D','P','Spk','Spkstats','Spont');


