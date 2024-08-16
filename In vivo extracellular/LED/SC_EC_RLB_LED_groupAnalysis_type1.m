%% SC_EC_RLB_LED
% Analyse spike responses to LEDs to Right Left and Both eyes. Graphs type
% 1 neurons
% by R. Broersen; 03-07-2019
close all;
clear all;


binoc_ipsi=[];
binoc_contra=[];
binoc_both=[];

binoc_baselineSpkrate_ipsi = [];
binoc_baselineSpkrate_contra = [];
binoc_baselineSpkrate_both = [];

classification = [10
    10
    10
    0
    0
    0
    11
    0
    0
    0
    11
    0
    0
    0
    0
    15
    0
    15
    0
    0
    0
    0
    10
    0
    13
    10
    0
    14
    10
    14
    10
    11
    11
    10
    10
    10
    10
    10
    0
    11
    0
    0
    14
    0
    13
    0
    15
    0
    0
    11
    0
    0
    13
    11
    0
    10
    0
    0
    0
    0
    0
    10
    13
    0
    0
    0
    10
    0
    15
    0
    0
    0
    14
    11
    11
    13
    0
    13
    0];

for kk =1:79
    kk
    clearvars -except kk classification binoc_ipsi binoc_contra binoc_both binoc_baselineSpkrate_ipsi binoc_baselineSpkrate_contra binoc_baselineSpkrate_both

    if kk==1
        %% 200224_1
        P.datapath = [path to files] '/200224';
        P.fileNums = [3];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_1';
        P.pksThreshold = -0.15; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==2
        %% 200224_2
        P.datapath = [path to files] '/200224';
        P.fileNums = [5];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_2';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
    elseif kk==3
        %% 200224_3
        P.datapath = [path to files] '/200224';
        P.fileNums = [7];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_3';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
    elseif kk==4
        %% 200224_4
        P.datapath = [path to files] '/200224';
        P.fileNums = [9];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_4';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
    elseif kk==5
        %% 200224_5
        P.datapath = [path to files] '/200224';
        P.fileNums = [11];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_5';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
    elseif kk==6
        %% 200224_6
        P.datapath = [path to files] '/200224';
        P.fileNums = [13];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_6';
        P.pksThreshold = -0.2; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
    elseif kk==7
        %% 200224_7
        P.datapath = [path to files] '/200224';
        P.fileNums = [15];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_7';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
    elseif kk==8
        %% 200224_8
        P.datapath = [path to files] '/200224';
        P.fileNums = [17];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_8';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
    elseif kk==9
        %% 200224_9
        P.datapath = [path to files] '/200224';
        P.fileNums = [20];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_9';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform
    elseif kk==10
        %% 200224_10
        P.datapath = [path to files] '/200224';
        P.fileNums = [22];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_10';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==11
        %% 200224_11
        P.datapath = [path to files] '/200224';
        P.fileNums = [24];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_11';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==12
        %% 200224_12
        P.datapath = [path to files] '/200224';
        P.fileNums = [27];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_12';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==13
        %% 200224_13
        P.datapath = [path to files] '/200224';
        P.fileNums = [29];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_13';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==14
        %% 200224_14
        P.datapath = [path to files] '/200224';
        P.fileNums = [31];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_14';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==15
        %% 200224_15
        P.datapath = [path to files] '/200224';
        P.fileNums = [33];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_15';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform


    elseif kk==16
        %% 200224_16
        P.datapath = [path to files] '/200224';
        P.fileNums = [35.5];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_16';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 100;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==17
        %% 200224_17
        P.datapath = [path to files] '/200224';
        P.fileNums = [38];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_17';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==18
        %% 200224_18
        P.datapath = [path to files] '/200224';
        P.fileNums = [40.5];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_18';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 100;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==19
        %% 200225_1
        P.datapath = [path to files] '/200225';
        P.fileNums = [3];
        P.sweepExclude = [];
        P.fileNamePrefix = '25Feb20 ';
        P.cellID = '200225_1';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==20
        %% 200225_2
        P.datapath = [path to files] '/200225';
        P.fileNums = [5];
        P.sweepExclude = [];
        P.fileNamePrefix = '25Feb20 ';
        P.cellID = '200225_2';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==21
        %% 200225_4
        P.datapath = [path to files] '/200225';
        P.fileNums = [11];
        P.sweepExclude = [];
        P.fileNamePrefix = '25Feb20 ';
        P.cellID = '200225_4';
        P.pksThreshold = -0.025; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==22
        %% 200225_5
        P.datapath = [path to files] '/200225';
        P.fileNums = [13];
        P.sweepExclude = [];
        P.fileNamePrefix = '25Feb20 ';
        P.cellID = '200225_5';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==23
        %% 200226_1
        P.datapath = [path to files] '/200226';
        P.fileNums = [1.5];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_1';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==24
        %% 200226_2
        P.datapath = [path to files] '/200226';
        P.fileNums = [3];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_2';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==25
        %% 200226_3
        P.datapath = [path to files] '/200226';
        P.fileNums = [4.5];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_3';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==26
        %% 200226_4
        P.datapath = [path to files] '/200226';
        P.fileNums = [6.5];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_4';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==27
        %% 200226_5
        P.datapath = [path to files] '/200226';
        P.fileNums = [8.5];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_5';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==28
        %% 200226_6
        P.datapath = [path to files] '/200226';
        P.fileNums = [12.5];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_6';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==29
        %% 200226_7
        P.datapath = [path to files] '/200226';
        P.fileNums = [14];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_7';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==30
        %% 200226_8
        P.datapath = [path to files] '/200226';
        P.fileNums = [15.5];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_8';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==31
        %% 200226_9
        P.datapath = [path to files] '/200226';
        P.fileNums = [17.5];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_9';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 76;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==32
        %% 200226_10
        P.datapath = [path to files] '/200226';
        P.fileNums = [19.5];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_10';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==33
        %% 200226_11
        P.datapath = [path to files] '/200226';
        P.fileNums = [21];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_11';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==34
        %% 200226_12
        P.datapath = [path to files] '/200226';
        P.fileNums = [22];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_12';
        P.pksThreshold = -0.035; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==35
        %% 200226_13
        P.datapath = [path to files] '/200226';
        P.fileNums = [23];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_13';
        P.pksThreshold = -0.0275; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==36
        %% 200226_14
        P.datapath = [path to files] '/200226';
        P.fileNums = [24];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_14';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==37
        %% 200226_15
        P.datapath = [path to files] '/200226';
        P.fileNums = [25];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_15';
        P.pksThreshold = -0.045; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==38
        %% 200226_16
        P.datapath = [path to files] '/200226';
        P.fileNums = [26];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_16';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==39
        %% 200226_17
        P.datapath = [path to files] '/200226';
        P.fileNums = [27];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_17';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==40
        %% 200226_18
        P.datapath = [path to files] '/200226';
        P.fileNums = [28];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_18';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==41
        %% 200226_19
        P.datapath = [path to files] '/200226';
        P.fileNums = [29];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_19';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==42
        %% 200226_20
        P.datapath = [path to files] '/200226';
        P.fileNums = [30];
        P.sweepExclude = [];
        P.fileNamePrefix = '26Feb20 ';
        P.cellID = '200226_20';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==43
        %% 200227_1
        P.datapath = [path to files] '/200227';
        P.fileNums = [1];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_1';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==44
        %% 200227_2
        P.datapath = [path to files] '/200227';
        P.fileNums = [2];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_2';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==45
        %% 200227_3
        P.datapath = [path to files] '/200227';
        P.fileNums = [3];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_3';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==46
        %% 200227_4
        P.datapath = [path to files] '/200227';
        P.fileNums = [4];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_4';
        P.pksThreshold = -0.055; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==47
        %% 200227_5
        P.datapath = [path to files] '/200227';
        P.fileNums = [5];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_5';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==48
        %% 200227_6
        P.datapath = [path to files] '/200227';
        P.fileNums = [6];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_6';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==49
        %% 200227_7
        P.datapath = [path to files] '/200227';
        P.fileNums = [8];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_7';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==50
        %% 200227_8
        P.datapath = [path to files] '/200227';
        P.fileNums = [9];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_8';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==51 %EXCLUDED
        continue;
        % %% 200227_9
        % P.datapath = [path to files] '/200227';
        % P.fileNums = [10];
        % P.sweepExclude = [];
        % P.fileNamePrefix = '27Feb20 ';
        % P.cellID = '200227_9';
        % P.pksThreshold = -0.03; % intracellular diff
        % P.side = 1; % 1=left hemisphere, 2=right hemisphere
        % P.numReps = 56;
        % P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        % P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==52
        %% 200227_10
        P.datapath = [path to files] '/200227';
        P.fileNums = [12];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_10';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==53
        %% 200227_11
        P.datapath = [path to files] '/200227';
        P.fileNums = [13];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_11';
        P.pksThreshold = -0.055; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==54
        %% 200227_12
        P.datapath = [path to files] '/200227';
        P.fileNums = [14];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_12';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==55
        %% 200227_13
        P.datapath = [path to files] '/200227';
        P.fileNums = [15];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_13';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==56
        %% 200227_14
        P.datapath = [path to files] '/200227';
        P.fileNums = [16];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_14';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==57
        %% 200227_15
        P.datapath = [path to files] '/200227';
        P.fileNums = [17];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_15';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==58
        %% 200227_16
        P.datapath = [path to files] '/200227';
        P.fileNums = [19];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_16';
        P.pksThreshold = -0.075; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==59 % EXCLUDED
        continue;
        % %% 200227_17
        % P.datapath = [path to files] '/200227';
        % P.fileNums = [21];
        % P.sweepExclude = [];
        % P.fileNamePrefix = '27Feb20 ';
        % P.cellID = '200227_17';
        % P.pksThreshold = -0.05; % intracellular diff
        % P.side = 1; % 1=left hemisphere, 2=right hemisphere
        % P.numReps = 75;
        % P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        % P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==60
        %% 200227_18
        P.datapath = [path to files] '/200227';
        P.fileNums = [22];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_18';
        P.pksThreshold = -0.06; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==61
        %% 200227_19
        P.datapath = [path to files] '/200227';
        P.fileNums = [23];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Feb20 ';
        P.cellID = '200227_19';
        P.pksThreshold = -0.06; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==62
        %% 200228_1
        P.datapath = [path to files] '/200228';
        P.fileNums = [1];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_1';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==63
        %% 200228_2
        P.datapath = [path to files] '/200228';
        P.fileNums = [2];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_2';
        P.pksThreshold = -0.06; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==64
        %% 200228_3
        P.datapath = [path to files] '/200228';
        P.fileNums = [3];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_3';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==65
        %% 200228_4
        P.datapath = [path to files] '/200228';
        P.fileNums = [5];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_4';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==66
        %% 200228_5
        P.datapath = [path to files] '/200228';
        P.fileNums = [6];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_5';
        P.pksThreshold = -0.045; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==67
        %% 200228_6
        P.datapath = [path to files] '/200228';
        P.fileNums = [7];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_6';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==68
        %% 200228_7
        P.datapath = [path to files] '/200228';
        P.fileNums = [8];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_7';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==69
        %% 200228_8
        P.datapath = [path to files] '/200228';
        P.fileNums = [11];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_8';
        P.pksThreshold = -0.075; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==70
        %% 200228_9
        P.datapath = [path to files] '/200228';
        P.fileNums = [12];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_9';
        P.pksThreshold = -0.075; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==71
        %% 200228_10
        P.datapath = [path to files] '/200228';
        P.fileNums = [13];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_10';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==72
        %% 200228_11
        P.datapath = [path to files] '/200228';
        P.fileNums = [14];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_11';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==73
        %% 200228_12
        P.datapath = [path to files] '/200228';
        P.fileNums = [15];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_12';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==74
        %% 200228_13
        P.datapath = [path to files] '/200228';
        P.fileNums = [16];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_13';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==75
        %% 200228_14
        P.datapath = [path to files] '/200228';
        P.fileNums = [17];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_14';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==76
        %% 200228_15
        P.datapath = [path to files] '/200228';
        P.fileNums = [18];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_15';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==77
        %% 200228_16
        P.datapath = [path to files] '/200228';
        P.fileNums = [19];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_16';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==78
        %% 200228_17
        P.datapath = [path to files] '/200228';
        P.fileNums = [20];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_17';
        P.pksThreshold = -0.075; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==79
        %% 200228_18
        P.datapath = [path to files] '/200228';
        P.fileNums = [21];
        P.sweepExclude = [];
        P.fileNamePrefix = '28Feb20 ';
        P.cellID = '200228_18';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 75;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform


    end

    P.datapath = [path to files];
    P.loadpath = [P.datapath '/' P.cellID]
    cd(P.loadpath)

    if P.fileNums<10
        P.fileName = [P.fileNamePrefix '00' num2str(P.fileNums)];
    elseif P.fileNums>=10 && P.fileNums<100
        P.fileName = [P.fileNamePrefix '0' num2str(P.fileNums)];
    elseif P.fileNums>100
        P.fileName = [P.fileNamePrefix num2str(P.fileNums)];
    end

    load(['RLB_EC_LEDdata_' P.fileName '.mat']);




    %% Parameters definition
    spkpause=0; % 1 for pausing for checking spikes
    save_plot_data=0;
    P.stimOrder = [2 1 3]; %Right, left, both
    P.trialDur = 0.02; % trial length in sec
    P.medianFiltWindow = 0.01; % 2.5 ms window median filter
    P.filtCutLow = 100; %low cut frequency in Hz
    P.filtOrder = 1; %Order of the filter
    P.cutoff  =   500;  % gaussian filter cutoff
    P.TTLThreshold = 0.025;
    ROC_window = 0.5; % window before and after start stimulus (time=0) for ROC analysis
    %     cd(P.datapath)
    %     P.outputpath = ['/Users/u1072913/stack/ANU/Data analysis/SC extracellular/' P.cellID];
    %     try
    %         cd(P.outputpath)
    %     catch
    %         mkdir(['/Users/u1072913/stack/ANU/Data analysis/SC extracellular/' P.cellID]);
    %     end
    %     cd(P.datapath)
    P.fs=20000;
    P.maxFrameDiff = 0.015; % Maximum allowed difference between start stimuli for binocular stimulation


    %% Gather the data for the graphs
    if classification(kk)==10
        binoc_ipsi= [binoc_ipsi; Spk.kde_left-mean(Spk.kde_left(250:500))];
        binoc_contra = [binoc_contra; Spk.kde_right-mean(Spk.kde_right(250:500))];
        binoc_both = [binoc_both; Spk.kde_both-mean(Spk.kde_both(250:500))];
    end

    %% Calculate the baseline firing
    binoc_baselineSpkrate_ipsi = [binoc_baselineSpkrate_ipsi;mean(Spk.kde_left(250:500))];
    binoc_baselineSpkrate_contra = [binoc_baselineSpkrate_contra;mean(Spk.kde_right(250:500))];
    binoc_baselineSpkrate_both = [binoc_baselineSpkrate_both;mean(Spk.kde_both(250:500))];

end

%% Import the extra cells from PV/Vgat experiments

binoc_ipsi= [binoc_ipsi; Spk.kde_left-mean(Spk.kde_left(250:500))];
binoc_contra = [binoc_contra; Spk.kde_right-mean(Spk.kde_right(250:500))];
binoc_both = [binoc_both; Spk.kde_both-mean(Spk.kde_both(250:500))];



%% build the graphs
%mean
binoc_ipsi_avg = mean(binoc_ipsi);
binoc_contra_avg= mean(binoc_contra);
binoc_both_avg= mean(binoc_both);


%SEM
binoc_ipsi_sem = std(binoc_ipsi)/sqrt(size(binoc_ipsi,1));
binoc_contra_sem= std(binoc_contra)/sqrt(size(binoc_contra,1));
binoc_both_sem= std(binoc_both)/sqrt(size(binoc_both,1));


%% graphs
cd([path to output folder])
%binocular ipsi
fig(1)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,binoc_ipsi_avg,'r')
plot(XplotAxis,binoc_ipsi_avg+binoc_ipsi_sem,'k')
plot(XplotAxis,binoc_ipsi_avg-binoc_ipsi_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10 15 20 25]); % MODIFY TO FIT FIGURES
ylim([-5 25]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'LEDRLB_groupAvg_binocular_ipsi.fig';
saveas(gcf,figname,'fig');
figname = 'LEDRLB_groupAvg_binocular_ipsi.pdf';
print('-dpdf','-painters','-loose',figname);

%Binocular contra
fig(2)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,binoc_contra_avg,'b')
plot(XplotAxis,binoc_contra_avg+binoc_contra_sem,'k')
plot(XplotAxis,binoc_contra_avg-binoc_contra_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10 15 20 25]); % MODIFY TO FIT FIGURES
ylim([-5 25]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'LEDRLB_groupAvg_binocular_contra.fig';
saveas(gcf,figname,'fig');
figname = 'LEDRLB_groupAvg_binocular_contra.pdf';
print('-dpdf','-painters','-loose',figname);

%binocular both
fig(3)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,binoc_both_avg,'g')
plot(XplotAxis,binoc_both_avg+binoc_both_sem,'k')
plot(XplotAxis,binoc_both_avg-binoc_both_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1]); xticks([-0.5 0 0.5 1]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10 15 20 25]); % MODIFY TO FIT FIGURES
ylim([-5 25]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'LEDRLB_groupAvg_binocular_both.fig';
saveas(gcf,figname,'fig');
figname = 'LEDRLB_groupAvg_binocular_both.pdf';
print('-dpdf','-painters','-loose',figname);

%% Generate heat plots of binocular cells
cd([path to output folder])
load('PSTHcolormap.mat')

%normalise to max and min values
norm_binoc_both=[];
norm_binoc_contra=[];
norm_binoc_ipsi=[];

%only normalised to max value
for ii = 1:40
    maxnorm_binoc_ipsi(ii,:)=binoc_ipsi(ii,:)/max(binoc_ipsi(ii,:));
    maxnorm_binoc_contra(ii,:)=binoc_contra(ii,:)/max(binoc_contra(ii,:));
    maxnorm_binoc_both(ii,:)=binoc_both(ii,:)/max(binoc_both(ii,:));
end

%normalise to min and max value
for ii = 1:40
    norm_binoc_ipsi(ii,:)=binoc_ipsi(ii,:)+abs(min(binoc_ipsi(ii,:)));
    norm_binoc_contra(ii,:)=binoc_contra(ii,:)+abs(min(binoc_contra(ii,:)));
    norm_binoc_both(ii,:)=binoc_both(ii,:)+abs(min(binoc_both(ii,:)));
end
for ii = 1:40
    minmaxnorm_binoc_ipsi(ii,:)=norm_binoc_ipsi(ii,:)/max(norm_binoc_ipsi(ii,:));
    minmaxnorm_binoc_contra(ii,:)=norm_binoc_contra(ii,:)/max(norm_binoc_contra(ii,:));
    minmaxnorm_binoc_both(ii,:)=norm_binoc_both(ii,:)/max(norm_binoc_both(ii,:));
end

%% Sort the graphs to the time of peak
%ipsi
sortidx=[];
for ii = 1:40
    [~,sortidx(ii,1)] = max(minmaxnorm_binoc_ipsi(ii,500:1000));
end

[~,sortidx(:,2)] = sort(sortidx(:,1));

for ii=1:40
    sort_minmaxnorm_binoc_ipsi(ii,:) = minmaxnorm_binoc_ipsi(sortidx(ii,2),:);
    sortidx_ipsi(ii,1) = sortidx(sortidx(ii,2),1);
end


%contra
sortidx=[];
for ii = 1:40
    [~,sortidx(ii,1)] = max(minmaxnorm_binoc_contra(ii,500:1000));
end

[~,sortidx(:,2)] = sort(sortidx(:,1));

for ii=1:40
    sort_minmaxnorm_binoc_contra(ii,:) = minmaxnorm_binoc_contra(sortidx(ii,2),:);
    sortidx_contra(ii,1) = sortidx(sortidx(ii,2),1);
end


%both
sortidx=[];
for ii = 1:40
    [~,sortidx(ii,1)] = max(minmaxnorm_binoc_both(ii,500:1000));
end

[~,sortidx(:,2)] = sort(sortidx(:,1));

for ii=1:40
    sort_minmaxnorm_binoc_both(ii,:) = minmaxnorm_binoc_both(sortidx(ii,2),:);
    sortidx_both(ii,1) = sortidx(sortidx(ii,2),1);
end

%% plot
figure; subplot(4,1,1);hold on;
imagesc(sort_minmaxnorm_binoc_ipsi(:,1:1500));  colormap(map); colorbar
xlim([0 1500]);ylim([1 40])
box on;
% ax = gca;
% ax.positionConstraint = 'innerposition';
% ax.position = [1 1 1500 40];
xticklabels = -0.5:0.5:1;
xticks = [0 500 1000 1500];
set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)

yticklabels = [1 40];;
yticks = [1 40];
set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
% xlim('auto'); ylim('auto')
set(gca,'fontSize',15,'FontName','Arial');
line([xticks(2) xticks(2)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([xticks(2)+20 xticks(2)+20],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);

plot(sortidx_ipsi+500,[1:40],'k-','LineWidth',2);



subplot(4,1,2);hold on;
imagesc(sort_minmaxnorm_binoc_contra(:,1:1500));  colormap(map); colorbar
xlim([0 1500]);ylim([1 40])
box on;
% ax = gca;
% ax.positionConstraint = 'innerposition';
% ax.position = [1 1 1500 40];
xticklabels = -0.5:0.5:1;
xticks = [0 500 1000 1500];
set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)

yticklabels = [1 40];;
yticks = [1 40];
set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
% xlim('auto'); ylim('auto')

set(gca,'fontSize',15,'FontName','Arial');
line([xticks(2) xticks(2)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([xticks(2)+20 xticks(2)+20],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);


plot(sortidx_contra+500,[1:40],'k-','LineWidth',2);

subplot(4,1,3);hold on;
imagesc(sort_minmaxnorm_binoc_both(:,1:1500));  colormap(map); colorbar
xlim([0 1500]);ylim([1 40])
box on;
% ax = gca;
% ax.positionConstraint = 'innerposition';
% ax.position = [1 1 1500 40];
xticklabels = -0.5:0.5:1;
xticks = [0 500 1000 1500];
set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)

yticklabels = [1 40];;
yticks = [1 40];
set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
% xlim('auto'); ylim('auto')

set(gca,'fontSize',15,'FontName','Arial');
line([xticks(2) xticks(2)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([xticks(2)+20 xticks(2)+20],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);


plot(sortidx_both+500,[1:40],'k-','LineWidth',2);

%plot all together
subplot(4,1,4); hold on;
plot(sortidx_ipsi+500,[1:40],'r-','LineWidth',2);
plot(sortidx_contra+500,[1:40],'b-','LineWidth',2);
plot(sortidx_both+500,[1:40],'g-','LineWidth',2);
xlim([0 1500]);ylim([1 40])
box on;
% ax = gca;
% ax.positionConstraint = 'innerposition';
% ax.position = [1 1 1500 40];
xticklabels = -0.5:0.5:1;
xticks = [0 500 1000 1500];
set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)

yticklabels = [1 40];
yticks = [1 40];
set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
% xlim('auto'); ylim('auto')

set(gca,'fontSize',15,'FontName','Arial');
line([xticks(2) xticks(2)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([xticks(2)+20 xticks(2)+20],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);

%% save the figure

figname = 'LEDRLB_binoc_heatplot.fig';
saveas(gcf,figname,'fig');
figname = 'LEDRLB_binoc_heatplot.pdf';
orient(gcf,'landscape')
print('-dpdf','-painters','-loose','-fillpage',figname);

%%
% figure; imagesc(maxnorm_binoc_both(:,1:1500));  colormap(map); colorbar
% figure; imagesc(maxnorm_binoc_contra(:,1:1500));  colormap(map); colorbar
% figure; imagesc(maxnorm_binoc_ipsi(:,1:1500));  colormap(map); colorbar

figure; imagesc(minmaxnorm_binoc_both(:,1:1500));  colormap(map); colorbar
figure; imagesc(minmaxnorm_binoc_contra(:,1:1500));  colormap(map); colorbar
figure; imagesc(minmaxnorm_binoc_ipsi(:,1:1500));  colormap(map); colorbar

figure; imagesc(norm_binoc_both);  colormap(map); colorbar
figure; imagesc(norm_binoc_contra);  colormap(map); colorbar
figure; imagesc(norm_binoc_ipsi);  colormap(map); colorbar

figure; imagesc(binoc_both);  colormap(map); colorbar
figure; imagesc(binoc_contra);  colormap(map); colorbar
figure; imagesc(binoc_ipsi);  colormap(map); colorbar

%% Overlay plot averages

fig(1)=figure;
subplot(4,1,1);hold on
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis(1:1500),binoc_ipsi_avg(1:1500),'r')
plot(XplotAxis(1:1500),binoc_ipsi_avg(1:1500)+binoc_ipsi_sem(1:1500),'r')
plot(XplotAxis(1:1500),binoc_ipsi_avg(1:1500)-binoc_ipsi_sem(1:1500),'r')

plot(XplotAxis(1:1500),binoc_contra_avg(1:1500),'b')
plot(XplotAxis(1:1500),binoc_contra_avg(1:1500)+binoc_contra_sem(1:1500),'b')
plot(XplotAxis(1:1500),binoc_contra_avg(1:1500)-binoc_contra_sem(1:1500),'b')

plot(XplotAxis(1:1500),binoc_both_avg(1:1500),'g')
plot(XplotAxis(1:1500),binoc_both_avg(1:1500)+binoc_both_sem(1:1500),'g')
plot(XplotAxis(1:1500),binoc_both_avg(1:1500)-binoc_both_sem(1:1500),'g')
colorbar
set(gca,'fontSize',15,'FontName','Arial');
ylim([-10 30])

line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on

figname = 'LEDRLB_binoc_OverlayAvgs.fig';
saveas(gcf,figname,'fig');
figname = 'LEDRLB_binoc_OverlayAvgs.pdf';
orient(gcf,'landscape')
print('-dpdf','-painters','-loose','-fillpage',figname);


% set(gca,'fontSize',15,'FontName','Arial');
% line([xticks(2) xticks(2)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([xticks(2)+20 xticks(2)+20],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% box on;



