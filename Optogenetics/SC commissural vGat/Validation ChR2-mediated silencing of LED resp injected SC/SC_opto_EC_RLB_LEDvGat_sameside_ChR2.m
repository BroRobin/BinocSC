%% SC_opto_EC_RLB_LEDvGat_sameside_ChR2

% Analyse spike responses to LED stimulation of Right Left and Both eyes
% with on alternating trials, optogenetic activation of vGat+ neurons in
% the injected SC.
% by R. Broersen; 03-07-2019
close all;
clear all;


%% Analyze each cell
%% 201123_1
P.datapath = [path to files] '201123';
P.fileNums = [4];
P.sweepExclude = [];
P.fileNamePrefix = '23Nov20 ';
P.cellID = '201123_1';
P.pksThreshold = -0.025; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 40;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = 20; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 201123_2 (small spikes, but excitation = not analysed


%% 201123_3 (big spikes in the same trace)
P.datapath = [path to files] '201123';
P.fileNums = [6];
P.sweepExclude = [];
P.fileNamePrefix = '23Nov20 ';
P.cellID = '201123_3';
P.pksThreshold = -0.1; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = 50; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.5; % Define the outer limit used for calculating the amplitude of reponse;

%% 201123_4
P.datapath = [path to files] '201123';
P.fileNums = [8];
P.sweepExclude = [];
P.fileNamePrefix = '23Nov20 ';
P.cellID = '201123_4';
P.pksThreshold = -0.05; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = 50; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.5; % Define the outer limit used for calculating the amplitude of reponse;


%% 201123_5
P.datapath = [path to files] '201123';
P.fileNums = [10];
P.sweepExclude = [];
P.fileNamePrefix = '23Nov20 ';
P.cellID = '201123_5';
P.pksThreshold = -0.0125; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = 15; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.5; % Define the outer limit used for calculating the amplitude of reponse;

%% 201123_6
P.datapath = [path to files] '201123';
P.fileNums = [13];
P.sweepExclude = [];
P.fileNamePrefix = '23Nov20 ';
P.cellID = '201123_6';
P.pksThreshold = -0.03; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [1.5]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 201123_7
P.datapath = [path to files] '201123';
P.fileNums = [15];
P.sweepExclude = [];
P.fileNamePrefix = '23Nov20 ';
P.cellID = '201123_7';
P.pksThreshold = -0.1; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [10]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 201123_8
P.datapath = [path to files] '201123';
P.fileNums = [18];
P.sweepExclude = [];
P.fileNamePrefix = '23Nov20 ';
P.cellID = '201123_7';
P.pksThreshold = -0.03; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 43;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [10]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;



%% 201125_1
P.datapath = [path to files] '201125';
P.fileNums = [2];
P.sweepExclude = [];
P.fileNamePrefix = '25Nov20 ';
P.cellID = '201125_1';
P.pksThreshold = -0.02; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [2]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;



%% 201125_2
P.datapath = [path to files] '201125';
P.fileNums = [4];
P.sweepExclude = [];
P.fileNamePrefix = '25Nov20 ';
P.cellID = '201125_2';
P.pksThreshold = -0.15; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [2]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;
%



%% 201125_3
P.datapath = [path to files] '201125';
P.fileNums = [6];
P.sweepExclude = [];
P.fileNamePrefix = '25Nov20 ';
P.cellID = '201125_3';
P.pksThreshold = -0.1; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [10]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.2; % Define the outer limit used for calculating the amplitude of reponse;

%
%% 201125_4
P.datapath = [path to files] '201125';
P.fileNums = [9];
P.sweepExclude = [];
P.fileNamePrefix = '25Nov20 ';
P.cellID = '201125_4';
P.pksThreshold = -0.05; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [30]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 201125_5
P.datapath = [path to files] '201125';
P.fileNums = [11];
P.sweepExclude = [];
P.fileNamePrefix = '25Nov20 ';
P.cellID = '201125_5';
P.pksThreshold = -0.05; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [5]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;


%% 201125_6
P.datapath = [path to files] '201125';
P.fileNums = [13];
P.sweepExclude = [];
P.fileNamePrefix = '25Nov20 ';
P.cellID = '201125_6';
P.pksThreshold = -0.08; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [20]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 201125_7
P.datapath = [path to files] '201125';
P.fileNums = [15];
P.sweepExclude = [];
P.fileNamePrefix = '25Nov20 ';
P.cellID = '201125_7';
P.pksThreshold = -0.03; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [10]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;


%% Parameters definition
spkpause=1; % 1 for pausing for checking spikes
P.stimOrder = [2 5 3 4 1 6]; %2=Right, 1=left, 3=both, 4=opto+right, 5=opto+left, 6=opto+both
P.trialDur = 1; % trial length in sec
P.medianFiltWindow = 0.01; % 2.5 ms window median filter
P.filtCutLow = 100; %low cut frequency in Hz
P.filtOrder = 1; %Order of the filter
P.cutoff  =   500;  % gaussian filter cutoff
P.TTLThreshold = 0.025;
cd(P.datapath)
P.outputpath = [output path] P.cellID];
try
    cd(P.outputpath)
catch
    mkdir([output path] P.cellID]);
end
cd(P.datapath)
P.fs=20000;
P.maxFrameDiff = 0.015; % Maximum allowed difference between start stimuli for binocular stimulation

%% Load the data
cd(P.datapath)
% set correct filename
D.stimData=[];

if length(P.fileNums)==1
    if P.fileNums<10
        P.fileName = [P.fileNamePrefix '00' num2str(P.fileNums)];
    elseif P.fileNums>=10 && P.fileNums<100
        P.fileName = [P.fileNamePrefix '0' num2str(P.fileNums)];
    elseif P.fileNums>100
        P.fileName = [P.fileNamePrefix num2str(P.fileNums)];
    end

    % % Import the data
    [D.stimData,D.timestamps,D.metaData]=importaxo([P.fileName '.axgd']); % actually import the data

elseif length(P.fileNums)>1
    D.stimData_temp=[];
    for ii=1:length(P.fileNums)
        if P.fileNums(ii)<10
            P.fileName = [P.fileNamePrefix '00' num2str(P.fileNums(ii))];
        elseif P.fileNums(ii)>=10 && P.fileNums(ii)<100
            P.fileName = [P.fileNamePrefix '0' num2str(P.fileNums(ii))];
        elseif P.fileNums(ii)>100
            P.fileName = [P.fileNamePrefix num2str(P.fileNums(ii))];
        end

        [D.stimData_temp,D.timestamps,D.metaData]=importaxo([P.fileName '.axgd']); % actually import the data

        D.stimData = [D.stimData; D.stimData_temp];
    end
end




% try
%     if sum(P.cellID == '210310_2')==8
%         D.extended = load('210310_2_file3.mat');
%         D.stimData = [D.stimData; D.extended.D.stimData];
%     end
% end

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
D.optoData = [];
for jj=3:4:P.numStim
    D.leftScreenData = [D.leftScreenData D.stimData{jj}];
end
D.leftScreenData= gfilt(D.leftScreenData',D.metaData.fs,9.3695e-05);

for jj=4:4:P.numStim
    D.rightScreenData = [D.rightScreenData D.stimData{jj}];
end
D.rightScreenData= gfilt(D.rightScreenData',D.metaData.fs,9.3695e-05);

for jj=2:4:P.numStim
    D.optoData = [D.optoData D.stimData{jj}];
end
D.optoData= gfilt(D.optoData',D.metaData.fs,9.3695e-05);

%
% for jj=4:4:P.numStim
%     D.PTBoutputData = [D.PTBoutputData D.stimData{jj}];
% end
% D.PTBoutputData= gfilt(D.PTBoutputData',D.metaData.fs,9.3695e-05);

% Calculate baseline parameters. Detect where the TTL signal increases
% >3*SD of baseline
P.leftScreenProps.mean = mean(D.leftScreenData(1:2*10^4));
P.leftScreenProps.SD = std(D.leftScreenData(1:2*10^4));
P.leftScreenProps.threshold = (10*P.leftScreenProps.SD)+P.leftScreenProps.mean;

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
P.rightScreenProps.threshold = (10*P.rightScreenProps.SD)+P.rightScreenProps.mean;

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


P.optoDataProps.mean = mean(D.optoData(1:2*10^4));
P.optoDataProps.SD = std(D.optoData(1:2*10^4));
P.optoDataProps.threshold = (10*P.optoDataProps.SD)+P.optoDataProps.mean;
idx=[];
P.optoDataProps.locs=[];
try
    for ii=1:(size(P.stimOrder,2)*P.numReps)
        if isempty(idx)==1
            idx = D.optoData;
        else
            idx(1:(P.optoDataProps.locs(ii-1)+(2*D.metaData.fs))) = 0;
        end
        [P.optoDataProps.locs(ii)] = find(idx>P.optoDataProps.threshold,1,'first');
        try
            if P.sensorCorrection==1
                P.optoDataProps.locs(ii) = P.optoDataProps.locs(ii)-round(0.0149*D.metaData.fs);
            end
        end
    end

end
if numel(P.leftScreenProps.locs)~=numel(P.rightScreenProps.locs)
    disp('Error in number of TTL events detected, right and left screen are not equal number')
end


%% Gather the trialdata
D.trialID = repmat(P.stimOrder,1,P.numReps);
D.trial_timestamps = []; %500ms baseline - 1.5s grating - 1s after
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
        if D.trialID(ii)==2 || D.trialID(ii)==4
            count_right=count_right+1;
            D.trial_timestamps = [D.trial_timestamps P.rightScreenProps.locs(count_right)-(0.5*D.metaData.fs)];
        elseif D.trialID(ii)==1 || D.trialID(ii)==5
            count_left=count_left+1;
            D.trial_timestamps = [D.trial_timestamps P.leftScreenProps.locs(count_left)-(0.5*D.metaData.fs)];
        elseif D.trialID(ii)==3 || D.trialID(ii)==6
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

D.plotXaxis = D.timestamps(0.5*D.metaData.fs:60000-1)-1;

%% Spike analysis
%Gather the spikedata per trial

Spk.spktimes_left={};
Spk.spktimes_right={};
Spk.spktimes_both={};
Spk.spktimes_leftOpto={};
Spk.spktimes_rightOpto={};
Spk.spktimes_bothOpto={};
idx=[];
count_left = 0; count_right = 0;
count_both = 0;
count_leftOpto = 0; count_rightOpto = 0;
count_bothOpto = 0;
for ii = 1:length(D.trialID)

    if D.trialID(ii)==1
        count_left=count_left+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_left{count_left}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==5
        count_leftOpto=count_leftOpto+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_leftOpto{count_leftOpto}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==2
        count_right=count_right+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_right{count_right}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==4
        count_rightOpto=count_rightOpto+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_rightOpto{count_rightOpto}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==3
        count_both=count_both+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_both{count_both}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==6
        count_bothOpto=count_bothOpto+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_bothOpto{count_bothOpto}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    end
end

% Make PSTH
count_left = 0; count_right = 0;
count_both = 0;
count_leftOpto = 0; count_rightOpto = 0;
count_bothOpto = 0;

fig(5) = figure; hold on;
for ii=1:length(D.trialID)
    if D.trialID(ii)==1
        count_left=count_left+1;
        if P.side==1
            subplot(6,1,1);
        elseif P.side==2
            subplot(6,1,3);
        end
        plot(Spk.spktimes_left{count_left},repmat(count_left,numel(Spk.spktimes_left{count_left}),1),'k.');hold on;

    elseif D.trialID(ii)==5
        count_leftOpto=count_leftOpto+1;
        if P.side==1
            subplot(6,1,2);
        elseif P.side==2
            subplot(6,1,4);
        end
        plot(Spk.spktimes_leftOpto{count_leftOpto},repmat(count_leftOpto,numel(Spk.spktimes_leftOpto{count_leftOpto}),1),'b.');hold on;

    elseif D.trialID(ii)==2
        count_right=count_right+1;
        if P.side==1
            subplot(6,1,3);
        elseif P.side==2
            subplot(6,1,1);
        end
        plot(Spk.spktimes_right{count_right},repmat(count_right,numel(Spk.spktimes_right{count_right}),1),'k.');hold on;

    elseif D.trialID(ii)==4
        count_rightOpto=count_rightOpto+1;
        if P.side==1
            subplot(6,1,4);
        elseif P.side==2
            subplot(6,1,2);
        end
        plot(Spk.spktimes_rightOpto{count_rightOpto},repmat(count_rightOpto,numel(Spk.spktimes_rightOpto{count_rightOpto}),1),'b.');hold on;

    elseif D.trialID(ii)==3
        count_both=count_both+1;
        subplot(6,1,5);
        plot(Spk.spktimes_both{count_both},repmat(count_both,numel(Spk.spktimes_both{count_both}),1),'k.');hold on;

    elseif D.trialID(ii)==6
        count_bothOpto=count_bothOpto+1;
        subplot(6,1,6);
        plot(Spk.spktimes_bothOpto{count_bothOpto},repmat(count_bothOpto,numel(Spk.spktimes_bothOpto{count_bothOpto}),1),'b.');hold on;
    end
end
% Adjust the Yaxis of PSTH to fit #trials
if P.side==1
    subplot(6,1,1);
    ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
    subplot(6,1,2);
    ylim([0 size(Spk.spktimes_leftOpto,2)]);set(gca,'FontSize',14)
    subplot(6,1,3);
    ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
    subplot(6,1,4);
    ylim([0 size(Spk.spktimes_rightOpto,2)]);set(gca,'FontSize',14)
    subplot(6,1,5);
    ylim([0 size(Spk.spktimes_both,2)]);set(gca,'FontSize',14)
    subplot(6,1,6);
    ylim([0 size(Spk.spktimes_bothOpto,2)]);set(gca,'FontSize',14)

elseif P.side==2
    subplot(6,1,1);
    ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
    subplot(6,1,2);
    ylim([0 size(Spk.spktimes_rightOpto,2)]);set(gca,'FontSize',14)
    subplot(6,1,3);
    ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
    subplot(6,1,4);
    ylim([0 size(Spk.spktimes_leftOpto,2)]);set(gca,'FontSize',14)
    subplot(6,1,5);
    ylim([0 size(Spk.spktimes_both,2)]);set(gca,'FontSize',14)
    subplot(6,1,6);
    ylim([0 size(Spk.spktimes_bothOpto,2)]);set(gca,'FontSize',14)
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

Spk.spktimes_bothOpto_noNaN=Spk.spktimes_bothOpto;
for ii = 1:size(Spk.spktimes_bothOpto,2)
    try
        if isnan(Spk.spktimes_bothOpto{ii}(1))
            Spk.spktimes_bothOpto_noNaN = [Spk.spktimes_bothOpto_noNaN(1:(ii-1)) Spk.spktimes_bothOpto_noNaN((ii+1):end)]; % remove NaNs
        end
    end
end

[Spk.kde_left,Spk.kde_left_X]= gauss_kde(Spk.spktimes_left,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right,Spk.kde_right_X]= gauss_kde(Spk.spktimes_right,[-0.5 max(D.plotXaxis)]);
[Spk.kde_both,Spk.kde_both_X]= gauss_kde(Spk.spktimes_both_noNaN,[-0.5 max(D.plotXaxis)]);

[Spk.kde_left_5ms,Spk.kde_left_X_5ms]= gauss_kde_5ms(Spk.spktimes_left,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right_5ms,Spk.kde_right_X_5ms]= gauss_kde_5ms(Spk.spktimes_right,[-0.5 max(D.plotXaxis)]);
[Spk.kde_both_5ms,Spk.kde_both_X_5ms]= gauss_kde_5ms(Spk.spktimes_both_noNaN,[-0.5 max(D.plotXaxis)]);

[Spk.kde_leftOpto,Spk.kde_leftOpto_X]= gauss_kde(Spk.spktimes_leftOpto,[-0.5 max(D.plotXaxis)]);
[Spk.kde_rightOpto,Spk.kde_rightOpto_X]= gauss_kde(Spk.spktimes_rightOpto,[-0.5 max(D.plotXaxis)]);
[Spk.kde_bothOpto,Spk.kde_bothOpto_X]= gauss_kde(Spk.spktimes_bothOpto_noNaN,[-0.5 max(D.plotXaxis)]);

[Spk.kde_leftOpto_5ms,Spk.kde_leftOpto_X_5ms]= gauss_kde_5ms(Spk.spktimes_leftOpto,[-0.5 max(D.plotXaxis)]);
[Spk.kde_rightOpto_5ms,Spk.kde_rightOpto_X_5ms]= gauss_kde_5ms(Spk.spktimes_rightOpto,[-0.5 max(D.plotXaxis)]);
[Spk.kde_bothOpto_5ms,Spk.kde_bothOpto_X_5ms]= gauss_kde_5ms(Spk.spktimes_bothOpto_noNaN,[-0.5 max(D.plotXaxis)]);

%% Plot/adjust subplots
% ipsilateral
subplot(6,1,1);
title('Ipsilateral screen','FontSize',14);
% ylim([0 P.numReps]);set(gca,'FontSize',14)
% ylabel('Trials','fontSize',16);
% xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
% line([-0.1515 -0.1515],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
% line([2.1159 2.1159],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
if P.side ==1;
    plot(Spk.kde_left_X,Spk.kde_left,'r','LineWidth',2);
    %     ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both Spk.kde_rightOpto Spk.kde_leftOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
elseif P.side ==2;
    plot(Spk.kde_right_X,Spk.kde_right,'r','LineWidth',2);
    %     ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both Spk.kde_rightOpto Spk.kde_leftOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
end
ylim([0 P.yyaxis_lim])

subplot(6,1,2);
title('Ipsilateral screen + opto','FontSize',14);
% ylim([0 P.numReps]);set(gca,'FontSize',14)
% ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
if P.side ==1;
    plot(Spk.kde_leftOpto_X,Spk.kde_leftOpto,'m','LineWidth',2);
    %     ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both Spk.kde_rightOpto Spk.kde_leftOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
elseif P.side ==2;
    plot(Spk.kde_rightOpto_X,Spk.kde_rightOpto,'m','LineWidth',2);
    %     ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both Spk.kde_rightOpto Spk.kde_leftOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
end
ylim([0 P.yyaxis_lim])

% contralateral
subplot(6,1,3);
title('Contralateral screen','FontSize',14);
% ylim([0 50]);set(gca,'FontSize',14)
% ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
% line([-0.1515 -0.1515],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
% line([2.1159 2.1159],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
yyaxis right
% plot(Spk.kde_right_X,(max(get(gca, 'Ylim'))/max(Spk.kde_right))*Spk.kde_right,'b','LineWidth',2);
if P.side ==2;
    plot(Spk.kde_left_X,Spk.kde_left,'b','LineWidth',2);
    %     ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
elseif P.side ==1;
    plot(Spk.kde_right_X,Spk.kde_right,'b','LineWidth',2);
    %     ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
end
ylim([0 P.yyaxis_lim])

% contralateral + opto
subplot(6,1,4);
title('Contralateral screen + opto','FontSize',14);
% ylim([0 50]);set(gca,'FontSize',14)
% ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
yyaxis right
% plot(Spk.kde_right_X,(max(get(gca, 'Ylim'))/max(Spk.kde_right))*Spk.kde_right,'b','LineWidth',2);
if P.side ==2;
    plot(Spk.kde_leftOpto_X,Spk.kde_leftOpto,'c','LineWidth',2);
    %     ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
elseif P.side ==1;
    plot(Spk.kde_rightOpto_X,Spk.kde_rightOpto,'c','LineWidth',2);
    %     ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both])]); ylabel('FF (Hz)')
    % ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
end
ylim([0 P.yyaxis_lim])

%both
subplot(6,1,5); title('Both screens','FontSize',14);
% ylim([0 50]);set(gca,'FontSize',14)
% ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
% line([-0.1515 -0.1515],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
% line([2.1159 2.1159],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
yyaxis right;
% plot(Spk.kde_both_X,(max(get(gca, 'Ylim'))/max(Spk.kde_both))*Spk.kde_both,'k','LineWidth',2);
plot(Spk.kde_both_X,Spk.kde_both,'g','LineWidth',2);
% ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]); ylabel('FF (Hz)')
ylim([0 P.yyaxis_lim])

%both + =opto
subplot(6,1,6); title('Both screens + opto','FontSize',14);
% ylim([0 50]);set(gca,'FontSize',14)
ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
yyaxis right;
% plot(Spk.kde_both_X,(max(get(gca, 'Ylim'))/max(Spk.kde_both))*Spk.kde_both,'k','LineWidth',2);
plot(Spk.kde_bothOpto_X,Spk.kde_bothOpto,'k','LineWidth',2);
% ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]); ylabel('FF (Hz)')
ylim([0 P.yyaxis_lim])

%% Composite
fig(6) = figure; hold on;
subplot(3,1,1);
H(4)=plot(Spk.kde_left_X,Spk.kde_left,'k'); hold on;
H(5)=plot(Spk.kde_leftOpto_X,Spk.kde_leftOpto,'b');
set(gca,'FontSize',14)
ylabel('FF (Hz)','fontSize',16); xlabel('Time (sec)','fontSize',16);title('Ipsilateral screen','fontSize',14);ylim([0 P.yyaxis_lim])
% ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
legend('No opto','Opto')


subplot(3,1,2);
H(6)=plot(Spk.kde_right_X,Spk.kde_right,'k'); hold on;
H(7)=plot(Spk.kde_rightOpto_X,Spk.kde_rightOpto,'b');
set(gca,'FontSize',14)
ylabel('FF (Hz)','fontSize',16); xlabel('Time (sec)','fontSize',16);title('Contralateral screen','fontSize',14);ylim([0 P.yyaxis_lim])
% ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);

subplot(3,1,3);
H(8)=plot(Spk.kde_both_X,Spk.kde_both,'k'); hold on;
H(9)=plot(Spk.kde_bothOpto_X,Spk.kde_bothOpto,'b');


set(gca,'FontSize',14)
ylabel('FF (Hz)','fontSize',16); xlabel('Time (sec)','fontSize',16);title('Both screens','fontSize',14);ylim([0 P.yyaxis_lim])
% ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);

%% Calculate the baseline spike frequency for normalization
Spk.kde_left_baselinefreq = mean(Spk.kde_left(Spk.kde_left_X>-0.25&Spk.kde_left_X<0));
Spk.kde_leftOpto_baselinefreq = mean(Spk.kde_leftOpto(Spk.kde_leftOpto_X>-0.25&Spk.kde_left_X<0));

Spk.kde_both_baselinefreq = mean(Spk.kde_both(Spk.kde_both_X>-0.25&Spk.kde_both_X<0));
Spk.kde_bothOpto_baselinefreq = mean(Spk.kde_bothOpto(Spk.kde_bothOpto_X>-0.25&Spk.kde_both_X<0));

Spk.kde_right_baselinefreq = mean(Spk.kde_right(Spk.kde_right_X>-0.25&Spk.kde_right_X<0));
Spk.kde_rightOpto_baselinefreq = mean(Spk.kde_rightOpto(Spk.kde_rightOpto_X>-0.25&Spk.kde_right_X<0));

%% Calculate response characteristics
% Calculate the sum of KDE responses
Spk.kde_sum = Spk.kde_left+Spk.kde_right;
Spk.kde_sumOpto = Spk.kde_leftOpto+Spk.kde_rightOpto;
Spk.kde_sum_5ms = Spk.kde_left_5ms+Spk.kde_right_5ms;

%Peakamp stats ON responses during the stimulus (start till 0.5s)
Spkstats=[];
if P.side ==1
    Spkstats.peakamp_ipsi_ON=max(Spk.kde_left(Spk.kde_left_X>0.02&Spk.kde_left_X<P.peakamp_XwindowLim));
    Spkstats.peakamp_ipsi_ON_opto=max(Spk.kde_leftOpto(Spk.kde_leftOpto_X>0.02&Spk.kde_leftOpto_X<P.peakamp_XwindowLim));

    Spkstats.peakamp_contra_ON=max(Spk.kde_right(Spk.kde_right_X>0.02&Spk.kde_right_X<P.peakamp_XwindowLim));
    Spkstats.peakamp_contra_ON_opto=max(Spk.kde_rightOpto(Spk.kde_rightOpto_X>0.02&Spk.kde_rightOpto_X<P.peakamp_XwindowLim));



    % Amplitude (peakamp normalized with baseline)
    Spkstats.amplitude_ipsi_ON=Spkstats.peakamp_ipsi_ON-Spk.kde_left_baselinefreq;
    Spkstats.amplitude_ipsi_ON_opto=Spkstats.peakamp_ipsi_ON_opto-Spk.kde_leftOpto_baselinefreq;

    Spkstats.amplitude_contra_ON=Spkstats.peakamp_contra_ON-Spk.kde_right_baselinefreq;
    Spkstats.amplitude_contra_ON_opto=Spkstats.peakamp_contra_ON_opto-Spk.kde_rightOpto_baselinefreq;

elseif P.side ==2
    Spkstats.peakamp_ipsi_ON=max(Spk.kde_right(Spk.kde_right_X>0.02&Spk.kde_right_X<P.peakamp_XwindowLim));
    Spkstats.peakamp_ipsi_ON_opto=max(Spk.kde_rightOpto(Spk.kde_rightOpto_X>0.02&Spk.kde_rightOpto_X<P.peakamp_XwindowLim));

    Spkstats.peakamp_contra_ON=max(Spk.kde_left(Spk.kde_left_X>0.02&Spk.kde_left_X<P.peakamp_XwindowLim));
    Spkstats.peakamp_contra_ON_opto=max(Spk.kde_leftOpto(Spk.kde_leftOpto_X>0.02&Spk.kde_leftOpto_X<P.peakamp_XwindowLim));


    % Amplitude (peakamp normalized with baseline)
    Spkstats.amplitude_ipsi_ON=Spkstats.peakamp_ipsi_ON-Spk.kde_right_baselinefreq;
    Spkstats.amplitude_ipsi_ON_opto=Spkstats.peakamp_ipsi_ON_opto-Spk.kde_rightOpto_baselinefreq;

    Spkstats.amplitude_contra_ON=Spkstats.peakamp_contra_ON-Spk.kde_right_baselinefreq;
    Spkstats.amplitude_contra_ON_opto=Spkstats.peakamp_contra_ON_opto-Spk.kde_rightOpto_baselinefreq;

end

Spkstats.peakamp_both_ON=max(Spk.kde_both(Spk.kde_both_X>0.02&Spk.kde_both_X<P.peakamp_XwindowLim));
Spkstats.peakamp_both_ON_opto=max(Spk.kde_bothOpto(Spk.kde_bothOpto_X>0.02&Spk.kde_bothOpto_X<P.peakamp_XwindowLim));

Spkstats.amplitude_both_ON=Spkstats.peakamp_both_ON-Spk.kde_both_baselinefreq;
Spkstats.amplitude_both_ON_opto=Spkstats.peakamp_both_ON_opto-Spk.kde_bothOpto_baselinefreq;

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
%3x SD of baseline
Spkstats.ipsi_resp_3 = [];
Spkstats.contra_resp_3 = [];

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

% 5x SD of baseline
Spkstats.ipsi_resp_5 = [];
Spkstats.contra_resp_5 = [];

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

%% Save figures and data
sprintf('Average jitter between screens is: %5f seconds',mean(P.screenJitter)/P.fs)
Spkstats.outputVars = [Spont.FF, Spont.ISI_stats(1,1), Spont.ISI_stats(1,2),Spont.CV...
    ,Spkstats.peakamp_contra_ON, Spkstats.peakamp_ipsi_ON, Spkstats.peakamp_both_ON...
    ,Spkstats.peakamp_contra_ON_opto, Spkstats.peakamp_ipsi_ON_opto, Spkstats.peakamp_both_ON_opto...
    ,Spkstats.amplitude_contra_ON, Spkstats.amplitude_ipsi_ON, Spkstats.amplitude_both_ON...
    ,Spkstats.amplitude_contra_ON_opto, Spkstats.amplitude_ipsi_ON_opto, Spkstats.amplitude_both_ON_opto...
    ,Spkstats.ipsi_resp_3, Spkstats.contra_resp_3, Spkstats.ipsi_resp_5, Spkstats.contra_resp_5];

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
% try
%     close(fig(1))
% end
figure(fig(5));
figname = sprintf('PSTH_opto_vGat_sameside_RLB_%s.fig',P.fileName);
saveas(gcf,figname,'fig');
figname = sprintf('PSTH_opto_vGat_sameside_RLB_%s.pdf',P.fileName);
print('-dpdf','-painters','-loose','-fillpage',figname);
figure(fig(6));
figname = sprintf('KDE_opto_vGat_sameside_RLB_%s.fig',P.fileName);
saveas(gcf,figname,'fig');
figname = sprintf('KDE_opto_vGat_sameside_RLB_%s.pdf',P.fileName);
print('-dpdf','-painters','-loose','-fillpage',figname);

savename = sprintf('RLB_EC_opto_vGat_sameside_%s.mat',P.fileName)
save(savename,'D','P','Spk','Spkstats','Spont');



