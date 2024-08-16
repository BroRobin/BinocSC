%% SC_opto_EC_RLB_LED_vGat_V1
% Analyse spike responses to LED stimulation to Right Left and Both eyes in
% mice that have been injected with ChrimsonR in left V1
% by R. Broersen; 03-07-2019
close all;
clear all;

%% Data (process per cell)
%% 210616_1
P.datapath = [path to files] '210616';
P.fileNums = [4 5];
P.sweepExclude = [];
P.fileNamePrefix = '16Jun21 ';
P.cellID = '210616_1';
P.pksThreshold = -0.2; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 72;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [10]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 210616_2
P.datapath = [path to files] '210616';
P.fileNums = [6];
P.sweepExclude = [];
P.fileNamePrefix = '16Jun21 ';
P.cellID = '210616_2';
P.pksThreshold = -0.05; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 32;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [10]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 210616_3
P.datapath = [path to files] '210616';
P.fileNums = [7];
P.sweepExclude = [];
P.fileNamePrefix = '16Jun21 ';
P.cellID = '210616_3';
P.pksThreshold = -0.02; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [10]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;


%% 210616_4
P.datapath = [path to files] '210616';
P.fileNums = [10];
P.sweepExclude = [];
P.fileNamePrefix = '16Jun21 ';
P.cellID = '210616_4';
P.pksThreshold = -0.04; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 30;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [30]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 210622_1
P.datapath = [path to files] '210622';
P.fileNums = [1];
P.sweepExclude = [];
P.fileNamePrefix = '22Jun21 ';
P.cellID = '210622_1';
P.pksThreshold = -0.1; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [10]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

% 210622_2
P.datapath = [path to files] '210622';
P.fileNums = [6];
P.sweepExclude = [];
P.fileNamePrefix = '22Jun21 ';
P.cellID = '210622_2';
P.pksThreshold = -0.1; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 33;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [10]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 210622_3
P.datapath = [path to files] '210622';
P.fileNums = [7];
P.sweepExclude = [];
P.fileNamePrefix = '22Jun21 ';
P.cellID = '210622_3';
P.pksThreshold = -0.012; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [50]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 210622_4
P.datapath = [path to files] '210622';
P.fileNums = [10];
P.sweepExclude = [];
P.fileNamePrefix = '22Jun21 ';
P.cellID = '210622_4';
P.pksThreshold = -0.012; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [50]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 210630_1
P.datapath = [path to files] '210630';
P.fileNums = [1];
P.sweepExclude = [];
P.fileNamePrefix = '30Jun21 ';
P.cellID = '210630_1';
P.pksThreshold = -0.08; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 21;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [50]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.5; % Define the outer limit used for calculating the amplitude of reponse;

%% 210630_2
P.datapath = [path to files] '210630';
P.fileNums = [3];
P.sweepExclude = [];
P.fileNamePrefix = '30Jun21 ';
P.cellID = '210630_2';
P.pksThreshold = -0.08; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 9;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [50]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.5; % Define the outer limit used for calculating the amplitude of reponse;

%% 210630_3
P.datapath = [path to files] '210630';
P.fileNums = [7];
P.sweepExclude = [];
P.fileNamePrefix = '30Jun21 ';
P.cellID = '210630_3';
P.pksThreshold = -0.05; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [50]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 210630_4
P.datapath = [path to files] '210630';
P.fileNums = [10];
P.sweepExclude = [];
P.fileNamePrefix = '30Jun21 ';
P.cellID = '210630_4';
P.pksThreshold = -0.01; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 10;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [50]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 210630_5
P.datapath = [path to files] '210630';
P.fileNums = [11];
P.sweepExclude = [];
P.fileNamePrefix = '30Jun21 ';
P.cellID = '210630_5';
P.pksThreshold = -0.03; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 45;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [50]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.25; % Define the outer limit used for calculating the amplitude of reponse;

%% 210630_6
P.datapath = [path to files] '210630';
P.fileNums = [13];
P.sweepExclude = [];
P.fileNamePrefix = '30Jun21 ';
P.cellID = '210630_6';
P.pksThreshold = -0.02; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 50;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [50]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.15; % Define the outer limit used for calculating the amplitude of reponse;

%% 210630_7
P.datapath = [path to files] '210630';
P.fileNums = [17];
P.sweepExclude = [];
P.fileNamePrefix = '30Jun21 ';
P.cellID = '210630_7';
P.pksThreshold = -0.1; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 40;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [50]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.5; % Define the outer limit used for calculating the amplitude of reponse;

%% 210825_1
P.datapath = [path to files] '210825';
P.fileNums = [2];
P.sweepExclude = [];
P.fileNamePrefix = '25Aug21 ';
P.cellID = '210825_1';
P.pksThreshold = -0.025; % intracellular diff
P.side = 1; % 1=left hemisphere, 2=right hemisphere
P.numReps = 24;
P.wavelength = 470;
P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
P.yyaxis_lim = [50]; % yyaxis limit for the PSTH plots
P.peakamp_XwindowLim = 0.2; % Define the outer limit used for calculating the amplitude of reponse;


%% Parameters definition
spkpause=1; % 1 for pausing for checking spikes
P.stimOrder = [5 2 7 4 6 1 8 3]; % 1=left, 2=left+opto470, 3=left+opto590, 4=left+opto470+opto590, 5=right, 6=right+opto470, 7=right+opto590, 8=right+opto470+opto590
P.trialDur = 1; % trial length in sec
P.medianFiltWindow = 0.01; % 2.5 ms window median filter
P.filtCutLow = 100; %low cut frequency in Hz
% P.filtCutLow = 5; %low cut frequency in Hz
P.filtOrder = 1; %Order of the filter
P.cutoff  =   500;  % gaussian filter cutoff
%P.cutoff  =   3000;  % gaussian filter cutoff
P.TTLThreshold = 0.025;
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

P.numStim = size(D.stimData,1);
D.metaData.fs = 1/D.metaData.SampInt;

%% Create vector of all data, filter
D.fullDataVector = [];
for jj=1:5:P.numStim
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
    if sum(P.cellID == '210310_1')==8
        idx_pks = index; idx_pks(idx_pks>P.pksThreshold | idx_pks<-0.075)=NaN;
    elseif sum(P.cellID == '210310_4')==8
        idx_pks = index; idx_pks(idx_pks>P.pksThreshold | idx_pks<-0.32)=NaN;
    else
        idx_pks = index; idx_pks(idx_pks>P.pksThreshold)=NaN;
    end
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
D.optoData_470 = [];
D.optoData_590 = [];
for jj=4:5:P.numStim
    D.leftScreenData = [D.leftScreenData D.stimData{jj}];
end
D.leftScreenData= gfilt(D.leftScreenData',D.metaData.fs,9.3695e-05);

for jj=5:5:P.numStim
    D.rightScreenData = [D.rightScreenData D.stimData{jj}];
end
D.rightScreenData= gfilt(D.rightScreenData',D.metaData.fs,9.3695e-05);

for jj=2:5:P.numStim
    D.optoData_470 = [D.optoData_470 D.stimData{jj}];
end
D.optoData_470= gfilt(D.optoData_470',D.metaData.fs,9.3695e-05);

for jj=3:5:P.numStim
    D.optoData_590 = [D.optoData_590 D.stimData{jj}];
end
D.optoData_590= gfilt(D.optoData_590',D.metaData.fs,9.3695e-05);

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


if numel(P.leftScreenProps.locs)~=numel(P.rightScreenProps.locs)
    disp('Error in number of TTL events detected, right and left screen are not equal number')
end


%% Gather the trialdata
D.trialID = repmat(P.stimOrder,1,P.numReps);
D.trial_timestamps = []; %500ms baseline - 1.5s grating - 1s after
D.trialdata_left=[];
D.trialdata_left_opto470=[];
D.trialdata_left_opto590=[];
D.trialdata_left_opto470_opto590=[];
D.trialdata_right=[];
D.trialdata_right_opto470=[];
D.trialdata_right_opto590=[];
D.trialdata_righ_opto470_opto590=[];

count_left=0;
count_right=0;

idx=[];
idxPadded=[];
P.screenJitter = [];

% Calculate the trial_timestamps
% try
for ii = 1:length(D.trialID)
    if D.trialID(ii)==5 || D.trialID(ii)==7 || D.trialID(ii)==6 || D.trialID(ii)==8
        count_right=count_right+1;
        D.trial_timestamps = [D.trial_timestamps P.rightScreenProps.locs(count_right)-(0.5*D.metaData.fs)];
    elseif D.trialID(ii)==2 || D.trialID(ii)==4 || D.trialID(ii)==1 || D.trialID(ii)==3
        count_left=count_left+1;
        D.trial_timestamps = [D.trial_timestamps P.leftScreenProps.locs(count_left)-(0.5*D.metaData.fs)];
    end
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
Spk.spktimes_left_opto470={};
Spk.spktimes_left_opto590={};
Spk.spktimes_left_opto470_opto590={};
Spk.spktimes_right={};
Spk.spktimes_right_opto470={};
Spk.spktimes_right_opto590={};
Spk.spktimes_right_opto470_opto590={};

idx=[];
count_left = 0; count_right = 0;
count_leftOpto470 = 0; count_rightOpto470 = 0;
count_leftOpto590 = 0; count_rightOpto590 = 0;
count_leftOpto470_opto590 = 0; count_rightOpto470_opto590 = 0;

for ii = 1:length(D.trialID)

    if D.trialID(ii)==5
        count_right=count_right+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_right{count_right}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==2
        count_leftOpto470=count_leftOpto470+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_left_opto470{count_leftOpto470}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==7
        count_rightOpto590=count_rightOpto590+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_right_opto590{count_rightOpto590}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==4
        count_leftOpto470_opto590=count_leftOpto470_opto590+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_left_opto470_opto590{count_leftOpto470_opto590}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==6
        count_rightOpto470=count_rightOpto470+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_right_opto470{count_rightOpto470}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==1
        count_left=count_left+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_left{count_left}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==8
        count_rightOpto470_opto590=count_rightOpto470_opto590+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_right_opto470_opto590{count_rightOpto470_opto590}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

    elseif D.trialID(ii)==3
        count_leftOpto590=count_leftOpto590+1;
        idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.5*D.metaData.fs)];
        Spk.spktimes_left_opto590{count_leftOpto590}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;
    end
end

%% Make PSTH
count_left = 0; count_right = 0;
count_leftOpto470 = 0; count_rightOpto470 = 0;
count_leftOpto590 = 0; count_rightOpto590 = 0;
count_leftOpto470_opto590 = 0; count_rightOpto470_opto590 = 0;

fig(5) = figure; hold on;
for ii=1:length(D.trialID)
    if D.trialID(ii)==5
        count_right=count_right+1;
        subplot(4,2,2);
        plot(Spk.spktimes_right{count_right},repmat(count_right,numel(Spk.spktimes_right{count_right}),1),'k.');hold on;

    elseif D.trialID(ii)==2
        count_leftOpto470=count_leftOpto470+1;
        subplot(4,2,3);
        plot(Spk.spktimes_left_opto470{count_leftOpto470},repmat(count_leftOpto470,numel(Spk.spktimes_left_opto470{count_leftOpto470}),1),'b.');hold on;

    elseif D.trialID(ii)==7
        count_rightOpto590=count_rightOpto590+1;
        subplot(4,2,6);
        plot(Spk.spktimes_right_opto590{count_rightOpto590},repmat(count_rightOpto590,numel(Spk.spktimes_right_opto590{count_rightOpto590}),1),'b.');hold on;

    elseif D.trialID(ii)==4
        count_leftOpto470_opto590=count_leftOpto470_opto590+1;
        subplot(4,2,7);
        plot(Spk.spktimes_left_opto470_opto590{count_leftOpto470_opto590},repmat(count_leftOpto470_opto590,numel(Spk.spktimes_left_opto470_opto590{count_leftOpto470_opto590}),1),'b.');hold on;

    elseif D.trialID(ii)==6
        count_rightOpto470=count_rightOpto470+1;
        subplot(4,2,4);
        plot(Spk.spktimes_right_opto470{count_rightOpto470},repmat(count_rightOpto470,numel(Spk.spktimes_right_opto470{count_rightOpto470}),1),'b.');hold on;

    elseif D.trialID(ii)==1
        count_left=count_left+1;
        subplot(4,2,1);
        plot(Spk.spktimes_left{count_left},repmat(count_left,numel(Spk.spktimes_left{count_left}),1),'k.');hold on;

    elseif D.trialID(ii)==8
        count_rightOpto470_opto590=count_rightOpto470_opto590+1;
        subplot(4,2,8);
        plot(Spk.spktimes_right_opto470_opto590{count_rightOpto470_opto590},repmat(count_rightOpto470_opto590,numel(Spk.spktimes_right_opto470_opto590{count_rightOpto470_opto590}),1),'b.');hold on;

    elseif D.trialID(ii)==3
        count_leftOpto590=count_leftOpto590+1;
        subplot(4,2,5);
        plot(Spk.spktimes_left_opto590{count_leftOpto590},repmat(count_leftOpto590,numel(Spk.spktimes_left_opto590{count_leftOpto590}),1),'b.');hold on;
    end
end


%% Calculate KDE

[Spk.kde_left,Spk.kde_left_X]= gauss_kde(Spk.spktimes_left,[-0.5 max(D.plotXaxis)]);
[Spk.kde_left_opto470,Spk.kde_left_opto470_X]= gauss_kde(Spk.spktimes_left_opto470,[-0.5 max(D.plotXaxis)]);
[Spk.kde_left_opto590,Spk.kde_left_opto590_X]= gauss_kde(Spk.spktimes_left_opto590,[-0.5 max(D.plotXaxis)]);
[Spk.kde_left_opto470_opto590,Spk.kde_left_opto470_opto590_X]= gauss_kde(Spk.spktimes_left_opto470_opto590,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right,Spk.kde_right_X]= gauss_kde(Spk.spktimes_right,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right_opto470,Spk.kde_right_opto470_X]= gauss_kde(Spk.spktimes_right_opto470,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right_opto590,Spk.kde_right_opto590_X]= gauss_kde(Spk.spktimes_right_opto590,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right_opto470_opto590,Spk.kde_right_opto470_opto590_X]= gauss_kde(Spk.spktimes_right_opto470_opto590,[-0.5 max(D.plotXaxis)]);

[Spk.kde_left_5ms,Spk.kde_left_X_5ms]= gauss_kde_5ms(Spk.spktimes_left,[-0.5 max(D.plotXaxis)]);
[Spk.kde_left_opto470_5ms,Spk.kde_left_opto470_X_5ms]= gauss_kde_5ms(Spk.spktimes_left_opto470,[-0.5 max(D.plotXaxis)]);
[Spk.kde_left_opto590_5ms,Spk.kde_left_opto590_X_5ms]= gauss_kde_5ms(Spk.spktimes_left_opto590,[-0.5 max(D.plotXaxis)]);
[Spk.kde_left_opto470_opto590_5ms,Spk.kde_left_opto470_opto590_X_5ms]= gauss_kde_5ms(Spk.spktimes_left_opto470_opto590,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right_5ms,Spk.kde_right_X_5ms]= gauss_kde_5ms(Spk.spktimes_right,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right_opto470_5ms,Spk.kde_right_opto470_X_5ms]= gauss_kde_5ms(Spk.spktimes_right_opto470,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right_opto590_5ms,Spk.kde_right_opto590_X_5ms]= gauss_kde_5ms(Spk.spktimes_right_opto590,[-0.5 max(D.plotXaxis)]);
[Spk.kde_right_opto470_opto590_5ms,Spk.kde_right_opto470_opto590_X_5ms]= gauss_kde_5ms(Spk.spktimes_right_opto470_opto590,[-0.5 max(D.plotXaxis)]);


%% Plot/adjust subplots
% ipsilateral
subplot(4,2,1);
title('ipsi','FontSize',14);
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
plot(Spk.kde_left_X,Spk.kde_left,'k','LineWidth',2);
%     ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both Spk.kde_rightOpto Spk.kde_leftOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
% ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
ylim([0 P.yyaxis_lim]); box on;
% if sum(P.cellID == '210210_8')==8
%     ylim([0 75]);
%     yticks([0 25 50 75]);
% end


subplot(4,2,3);
title('ipsi + opto470','FontSize',14);
% ylim([0 P.numReps]);set(gca,'FontSize',14)
% ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
if sum(P.cellID == '210210_8')==8
    ylim([0 75]);
    yticks([0 75]);
end
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
plot(Spk.kde_left_opto470_X,Spk.kde_left_opto470,'b','LineWidth',2);
%     ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both Spk.kde_rightOpto Spk.kde_leftOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
% ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
ylim([0 P.yyaxis_lim]); box on;
% if sum(P.cellID == '210210_8')==8
%     ylim([0 75]);
%     yticks([0 25 50 75]);
% end

subplot(4,2,5);
title('ipsi + opto590','FontSize',14);
% ylim([0 P.numReps]);set(gca,'FontSize',14)
% ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
if sum(P.cellID == '210210_8')==8
    ylim([0 75]);
    yticks([0 75]);
end
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
plot(Spk.kde_left_opto590_X,Spk.kde_left_opto590,'b','LineWidth',2);
%     ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both Spk.kde_rightOpto Spk.kde_leftOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
% ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
ylim([0 P.yyaxis_lim]); box on;
% if sum(P.cellID == '210210_8')==8
%     ylim([0 75]);
%     yticks([0 25 50 75]);
% end

subplot(4,2,7);
title('ipsi +opto470 + opto590','FontSize',14);
% ylim([0 P.numReps]);set(gca,'FontSize',14)
% ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
if sum(P.cellID == '210210_8')==8
    ylim([0 75]);
    yticks([0 75]);
end
yyaxis right
% plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
plot(Spk.kde_left_opto470_opto590_X,Spk.kde_left_opto470_opto590,'b','LineWidth',2);
%     ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both Spk.kde_rightOpto Spk.kde_leftOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
% ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
ylim([0 P.yyaxis_lim]); box on;
% if sum(P.cellID == '210210_8')==8
%     ylim([0 75]);
%     yticks([0 25 50 75]);
% end


% Contra
subplot(4,2,2);
title('contra','FontSize',14);
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
% plot(Spk.kde_right_X,(max(get(gca, 'Ylim'))/max(Spk.kde_right))*Spk.kde_right,'r','LineWidth',2);
plot(Spk.kde_right_X,Spk.kde_right,'k','LineWidth',2);
%     ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both Spk.kde_rightOpto Spk.kde_rightOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
% ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
ylim([0 P.yyaxis_lim]); box on;
% if sum(P.cellID == '210210_8')==8
%     ylim([0 75]);
%     yticks([0 25 50 75]);
% end


subplot(4,2,4);
title('contra + opto470','FontSize',14);
% ylim([0 P.numReps]);set(gca,'FontSize',14)
% ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
if sum(P.cellID == '210210_8')==8
    ylim([0 75]);
    yticks([0 75]);
end
yyaxis right
% plot(Spk.kde_right_X,(max(get(gca, 'Ylim'))/max(Spk.kde_right))*Spk.kde_right,'r','LineWidth',2);
plot(Spk.kde_right_opto470_X,Spk.kde_right_opto470,'b','LineWidth',2);
%     ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both Spk.kde_rightOpto Spk.kde_rightOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
% ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
ylim([0 P.yyaxis_lim]); box on;
% if sum(P.cellID == '210210_8')==8
%     ylim([0 75]);
%     yticks([0 25 50 75]);
% end

subplot(4,2,6);
title('contra + opto590','FontSize',14);
% ylim([0 P.numReps]);set(gca,'FontSize',14)
% ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
if sum(P.cellID == '210210_8')==8
    ylim([0 75]);
    yticks([0 75]);
end
yyaxis right
% plot(Spk.kde_right_X,(max(get(gca, 'Ylim'))/max(Spk.kde_right))*Spk.kde_right,'r','LineWidth',2);
plot(Spk.kde_right_opto590_X,Spk.kde_right_opto590,'b','LineWidth',2);
%     ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both Spk.kde_rightOpto Spk.kde_rightOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
% ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
ylim([0 P.yyaxis_lim]); box on;
% if sum(P.cellID == '210210_8')==8
%     ylim([0 75]);
%     yticks([0 25 50 75]);
% end

subplot(4,2,8);
title('contra +opto470 + opto590','FontSize',14);
% ylim([0 P.numReps]);set(gca,'FontSize',14)
% ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%opto
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
if sum(P.cellID == '210210_8')==8
    ylim([0 75]);
    yticks([0 75]);
end
yyaxis right
% plot(Spk.kde_right_X,(max(get(gca, 'Ylim'))/max(Spk.kde_right))*Spk.kde_right,'r','LineWidth',2);
plot(Spk.kde_right_opto470_opto590_X,Spk.kde_right_opto470_opto590,'b','LineWidth',2);
%     ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both Spk.kde_rightOpto Spk.kde_rightOpto Spk.kde_bothOpto])]); ylabel('FF (Hz)')
% ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
ylim([0 P.yyaxis_lim]); box on;
% if sum(P.cellID == '210210_8')==8
%     ylim([0 75]);
%     yticks([0 25 50 75]);
% end

%% Composite
fig(6) = figure; hold on;
subplot(2,1,1);
H(4)=plot(Spk.kde_left_X,Spk.kde_left,'k'); hold on;
H(5)=plot(Spk.kde_left_opto470_X,Spk.kde_left_opto470,'b');
H(6)=plot(Spk.kde_left_opto590_X,Spk.kde_left_opto590,'Color',[0.9100 0.4100 0.1700]);
H(7)=plot(Spk.kde_left_opto470_opto590_X,Spk.kde_left_opto470_opto590,'r');

set(gca,'FontSize',14)
ylabel('FF (Hz)','fontSize',16); xlabel('Time (sec)','fontSize',16);title('Ipsilateral screen','fontSize',14);ylim([0 P.yyaxis_lim])
% ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
legend('No opto','470nm','590nm','470nm + 590nm')


subplot(2,1,2);
H(8)=plot(Spk.kde_right_X,Spk.kde_right,'k'); hold on;
H(9)=plot(Spk.kde_right_opto470_X,Spk.kde_right_opto470,'b');
H(10)=plot(Spk.kde_right_opto590_X,Spk.kde_right_opto590,'Color',[0.9100 0.4100 0.1700]);
H(11)=plot(Spk.kde_right_opto470_opto590_X,Spk.kde_right_opto470_opto590,'r');
set(gca,'FontSize',14)
ylabel('FF (Hz)','fontSize',16); xlabel('Time (sec)','fontSize',16);title('Contralateral screen','fontSize',14);ylim([0 P.yyaxis_lim])
% ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]);
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'b','LineWidth',1);
legend('No opto','470nm','590nm','470nm + 590nm')

%% Calculate the baseline spike frequency for normalization
Spk.kde_left_baselinefreq = mean(Spk.kde_left(Spk.kde_left_X>-0.25&Spk.kde_left_X<0));
Spk.kde_left_opto470_baselinefreq = mean(Spk.kde_left_opto470(Spk.kde_left_X>-0.25&Spk.kde_left_X<0));
Spk.kde_left_opto590_baselinefreq = mean(Spk.kde_left_opto590(Spk.kde_left_X>-0.25&Spk.kde_left_X<0));
Spk.kde_left_opto470_opto590_baselinefreq = mean(Spk.kde_left_opto470_opto590(Spk.kde_left_X>-0.25&Spk.kde_left_X<0));

Spk.kde_right_baselinefreq = mean(Spk.kde_right(Spk.kde_right_X>-0.25&Spk.kde_right_X<0));
Spk.kde_right_opto470_baselinefreq = mean(Spk.kde_right_opto470(Spk.kde_right_X>-0.25&Spk.kde_right_X<0));
Spk.kde_right_opto590_baselinefreq = mean(Spk.kde_right_opto590(Spk.kde_right_X>-0.25&Spk.kde_right_X<0));
Spk.kde_right_opto470_opto590_baselinefreq = mean(Spk.kde_right_opto470_opto590(Spk.kde_right_X>-0.25&Spk.kde_right_X<0));

%% Calculate response characteristics
%Peakamp stats ON responses during the stimulus (start till P.peakamp_XwindowLims)
Spkstats=[];
Spkstats.peakamp_ipsi_ON=max(Spk.kde_left(Spk.kde_left_X>0.02&Spk.kde_left_X<P.peakamp_XwindowLim));
Spkstats.peakamp_ipsi_opto470_ON=max(Spk.kde_left_opto470(Spk.kde_left_X>0.02&Spk.kde_left_X<P.peakamp_XwindowLim));
Spkstats.peakamp_ipsi_opto590_ON=max(Spk.kde_left_opto590(Spk.kde_left_X>0.02&Spk.kde_left_X<P.peakamp_XwindowLim));
Spkstats.peakamp_ipsi_opto470_opto590_ON=max(Spk.kde_left_opto470_opto590(Spk.kde_left_X>0.02&Spk.kde_left_X<P.peakamp_XwindowLim));
Spkstats.peakamp_contra_ON=max(Spk.kde_right(Spk.kde_right_X>0.02&Spk.kde_right_X<P.peakamp_XwindowLim));
Spkstats.peakamp_contra_opto470_ON=max(Spk.kde_right_opto470(Spk.kde_right_X>0.02&Spk.kde_right_X<P.peakamp_XwindowLim));
Spkstats.peakamp_contra_opto590_ON=max(Spk.kde_right_opto590(Spk.kde_right_X>0.02&Spk.kde_right_X<P.peakamp_XwindowLim));
Spkstats.peakamp_contra_opto470_opto590_ON=max(Spk.kde_right_opto470_opto590(Spk.kde_right_X>0.02&Spk.kde_right_X<P.peakamp_XwindowLim));

% Amplitude (peakamp normalized with baseline)
Spkstats.amplitude_ipsi_ON=Spkstats.peakamp_ipsi_ON-Spk.kde_left_baselinefreq;
Spkstats.amplitude_ipsi_opto470_ON=Spkstats.peakamp_ipsi_opto470_ON-Spk.kde_left_opto470_baselinefreq;
Spkstats.amplitude_ipsi_opto590_ON=Spkstats.peakamp_ipsi_opto590_ON-Spk.kde_left_opto590_baselinefreq;
Spkstats.amplitude_ipsi_opto470_opto590_ON=Spkstats.peakamp_ipsi_opto470_opto590_ON-Spk.kde_left_opto470_opto590_baselinefreq;

Spkstats.amplitude_contra_ON=Spkstats.peakamp_contra_ON-Spk.kde_right_baselinefreq;
Spkstats.amplitude_contra_opto470_ON=Spkstats.peakamp_contra_opto470_ON-Spk.kde_right_opto470_baselinefreq;
Spkstats.amplitude_contra_opto590_ON=Spkstats.peakamp_contra_opto590_ON-Spk.kde_right_opto590_baselinefreq;
Spkstats.amplitude_contra_opto470_opto590_ON=Spkstats.peakamp_contra_opto470_opto590_ON-Spk.kde_right_opto470_opto590_baselinefreq;

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
        Spont.baselineData=[Spont.baselineData reshape(Spk.spktimes_left_opto470{ii}(Spk.spktimes_left_opto470{ii}<0),1,[])];
        Spont.dur=Spont.dur+0.5;
        Spont.ISI = [Spont.ISI reshape(diff(Spk.spktimes_left_opto470{ii}(Spk.spktimes_left_opto470{ii}<0)),1,[])];
    end
    try
        Spont.baselineData=[Spont.baselineData reshape(Spk.spktimes_left_opto590{ii}(Spk.spktimes_left_opto590{ii}<0),1,[])];
        Spont.dur=Spont.dur+0.5;
        Spont.ISI = [Spont.ISI reshape(diff(Spk.spktimes_left_opto590{ii}(Spk.spktimes_left_opto590{ii}<0)),1,[])];
    end
    try
        Spont.baselineData=[Spont.baselineData reshape(Spk.spktimes_left_opto470_opto590{ii}(Spk.spktimes_left_opto470_opto590{ii}<0),1,[])];
        Spont.dur=Spont.dur+0.5;
        Spont.ISI = [Spont.ISI reshape(diff(Spk.spktimes_left_opto470_opto590{ii}(Spk.spktimes_left_opto470_opto590{ii}<0)),1,[])];
    end

    try
        Spont.baselineData=[Spont.baselineData reshape(Spk.spktimes_right{ii}(Spk.spktimes_right{ii}<0),1,[])];
        Spont.dur=Spont.dur+0.5;
        Spont.ISI = [Spont.ISI reshape(diff(Spk.spktimes_right{ii}(Spk.spktimes_right{ii}<0)),1,[])];
    end
    try
        Spont.baselineData=[Spont.baselineData reshape(Spk.spktimes_right_opto470{ii}(Spk.spktimes_right_opto470{ii}<0),1,[])];
        Spont.dur=Spont.dur+0.5;
        Spont.ISI = [Spont.ISI reshape(diff(Spk.spktimes_right_opto470{ii}(Spk.spktimes_right_opto470{ii}<0)),1,[])];
    end
    try
        Spont.baselineData=[Spont.baselineData reshape(Spk.spktimes_right_opto590{ii}(Spk.spktimes_right_opto590{ii}<0),1,[])];
        Spont.dur=Spont.dur+0.5;
        Spont.ISI = [Spont.ISI reshape(diff(Spk.spktimes_right_opto590{ii}(Spk.spktimes_right_opto590{ii}<0)),1,[])];
    end
    try
        Spont.baselineData=[Spont.baselineData reshape(Spk.spktimes_right_opto470_opto590{ii}(Spk.spktimes_right_opto470_opto590{ii}<0),1,[])];
        Spont.dur=Spont.dur+0.5;
        Spont.ISI = [Spont.ISI reshape(diff(Spk.spktimes_right_opto470_opto590{ii}(Spk.spktimes_right_opto470_opto590{ii}<0)),1,[])];
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
% Spkstats.outputVars = [Spkstats.latency_ipsi, Spkstats.latency_contra, Spkstats.latency_both, Spkstats.spkprob_contra, Spkstats.spkprob_ipsi, Spkstats.spkprob_both, Spkstats.AUC_contra_ON, Spkstats.AUC_ipsi_ON, Spkstats.AUC_both_ON, Spkstats.AUC_sum_ON, Spkstats.AUC_contra_OFF, Spkstats.AUC_ipsi_OFF, Spkstats.AUC_both_OFF, Spkstats.AUC_sum_OFF, Spkstats.latency_ipsi_median, Spkstats.latency_contra_median, Spkstats.latency_both_median, Spkstats.latency_ipsi_OFF, Spkstats.latency_contra_OFF, Spkstats.latency_both_OFF, Spkstats.latency_ipsi_median_OFF, Spkstats.latency_contra_median_OFF, Spkstats.latency_both_median_OFF, Spkstats.spkprob_contra_OFF, Spkstats.spkprob_ipsi_OFF, Spkstats.spkprob_both_OFF, Spkstats.ipsi_resp_3, Spkstats.contra_resp_3, Spkstats.ipsi_resp_5, Spkstats.contra_resp_5 ];

Spkstats.outputVars = [Spont.FF, Spont.ISI_stats(1,1), Spont.ISI_stats(1,2),Spont.CV...
    ,Spkstats.peakamp_contra_ON, Spkstats.peakamp_ipsi_ON...
    ,Spkstats.peakamp_contra_opto470_ON, Spkstats.peakamp_ipsi_opto470_ON...
    ,Spkstats.peakamp_contra_opto590_ON, Spkstats.peakamp_ipsi_opto590_ON...
    ,Spkstats.peakamp_contra_opto470_opto590_ON, Spkstats.peakamp_ipsi_opto470_opto590_ON...
    ,Spkstats.amplitude_contra_ON, Spkstats.amplitude_ipsi_ON...
    ,Spkstats.amplitude_contra_opto470_ON, Spkstats.amplitude_ipsi_opto470_ON...
    ,Spkstats.amplitude_contra_opto590_ON, Spkstats.amplitude_ipsi_opto590_ON...
    ,Spkstats.amplitude_contra_opto470_opto590_ON, Spkstats.amplitude_ipsi_opto470_opto590_ON...
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
figname = sprintf('PSTH_Doubleopto_vGat_SC_RL_%s.fig',P.fileName);
saveas(gcf,figname,'fig');
figname = sprintf('PSTH_Doubleopto_vGat_SC_RL_%s.pdf',P.fileName);
print('-dpdf','-painters','-loose','-fillpage',figname);
figure(fig(6));
figname = sprintf('KDE_Doubleopto_vGat_SC_RL_%s.fig',P.fileName);
saveas(gcf,figname,'fig');
figname = sprintf('KDE_Doubleopto_vGat_SC_RL_%s.pdf',P.fileName);
print('-dpdf','-painters','-loose','-fillpage',figname);

savename = sprintf('RLB_EC_Doubleopto_vGat_SC_RL_%s.mat',P.fileName)

save(savename,'D','P','Spk','Spkstats','Spont','-v7.3');


