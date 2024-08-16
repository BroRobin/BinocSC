%% SC_EC_RLB_looming_groupAnalysis_type1
% Analyse spike responses to looming stimuli to left, right and both eyes.
% by R. Broersen; 03-07-2019
close all;
clear all;


binoc_ipsi=[];
binoc_contra=[];
binoc_both=[];

binoc_baselineSpkrate_ipsi = [];
binoc_baselineSpkrate_contra = [];
binoc_baselineSpkrate_both = [];

classification = [0
    0
    0
    0
    14
    0
    13
    0
    0
    16
    10
    11
    10
    16
    0
    15
    11
    0
    0
    11
    0
    0
    0
    0
    0
    0
    11
    0
    0
    0
    0
    0
    0
    10
    0
    0
    0
    10
    0
    0
    0
    0
    0
    0
    0
    0
    0
    13
    11
    10
    0
    0
    13
    0
    0
    0
    11
    13
    0
    0
    0
    0
    0
    0
    0
    0
    11
    12
    11
    15
    0
    0
    0
    0
    0
    0
    0
    0
    0
    11
    0
    0
    0
    0
    0
    14
    0
    10
    13
    15
    0
    0
    11
    0
    0
    10
    0];

for kk =1:97
    kk
    clearvars -except kk classification binoc_ipsi binoc_contra binoc_both binoc_baselineSpkrate_ipsi binoc_baselineSpkrate_contra binoc_baselineSpkrate_both

    if kk==1
        %% 200804_1
        P.datapath = [path to files] '/200804';
        P.fileNums = [2];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_1';
        P.pksThreshold = -0.015; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==2
        %% 200804_2
        P.datapath = [path to files] '/200804';
        P.fileNums = [4];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_2';
        P.pksThreshold = -0.015; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==3
        %% 200804_3
        P.datapath = [path to files] '/200804';
        P.fileNums = [5];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_3';
        P.pksThreshold = -0.015; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==4
        %% 200804_4
        P.datapath = [path to files] '/200804';
        P.fileNums = [6];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_4';
        P.pksThreshold = -0.015; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==5
        %% 200804_5
        P.datapath = [path to files] '/200804';
        P.fileNums = [7];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_5';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==6
        %% 200804_6
        P.datapath = [path to files] '/200804';
        P.fileNums = [8];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_6';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==7
        %% 200804_7
        P.datapath = [path to files] '/200804';
        P.fileNums = [9];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_7';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==8
        %% 200804_8
        P.datapath = [path to files] '/200804';
        P.fileNums = [10];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_8';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==9
        %% 200804_9
        P.datapath = [path to files] '/200804';
        P.fileNums = [11];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_9';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==10
        %% 200804_10
        P.datapath = [path to files] '/200804';
        P.fileNums = [12];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_10';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==11
        %% 200804_11 (USE COMBINED ONE)
        P.datapath = [path to files] '/200804';
        P.fileNums = [15];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_11';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==12
        %% 200804_12 (USE COMBINED ONE)
        P.datapath = [path to files] '/200804';
        P.fileNums = [17];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_12';
        P.pksThreshold = -0.015; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==13
        %% 200804_13
        P.datapath = [path to files] '/200804';
        P.fileNums = [18];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_13';
        P.pksThreshold = -0.015; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==14
        %% 200804_14
        P.datapath = [path to files] '/200804';
        P.fileNums = [21];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_14';
        P.pksThreshold = -0.06; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==15
        %% 200804_15
        P.datapath = [path to files] '/200804';
        P.fileNums = [22];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_15';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==16
        %% 200804_16
        P.datapath = [path to files] '/200804';
        P.fileNums = [23];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_16';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==17
        %% 200804_17
        P.datapath = [path to files] '/200804';
        P.fileNums = [24];
        P.sweepExclude = [];
        P.fileNamePrefix = '04Aug20 ';
        P.cellID = '200804_17';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==18
        %% 200805_1
        P.datapath = [path to files] '/200805';
        P.fileNums = [1];
        P.sweepExclude = [];
        P.fileNamePrefix = '05Aug20 ';
        P.cellID = '200805_1';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==19
        %% 200805_2
        P.datapath = [path to files] '/200805';
        P.fileNums = [12];
        P.sweepExclude = [];
        P.fileNamePrefix = '05Aug20 ';
        P.cellID = '200805_2';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==20
        %% 200805_3
        P.datapath = [path to files] '/200805';
        P.fileNums = [13];
        P.sweepExclude = [];
        P.fileNamePrefix = '05Aug20 ';
        P.cellID = '200805_3';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==21
        %% 200805_4
        P.datapath = [path to files] '/200805';
        P.fileNums = [14];
        P.sweepExclude = [];
        P.fileNamePrefix = '05Aug20 ';
        P.cellID = '200805_4';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.

    elseif kk==22
        %% 200805_6
        P.datapath = [path to files] '/200805';
        P.fileNums = [17];
        P.sweepExclude = [];
        P.fileNamePrefix = '05Aug20 ';
        P.cellID = '200805_6';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==23
        %% 200805_8
        P.datapath = [path to files] '/200805';
        P.fileNums = [19];
        P.sweepExclude = [];
        P.fileNamePrefix = '05Aug20 ';
        P.cellID = '200805_8';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 45;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==24
        %% 200805_9
        P.datapath = [path to files] '/200805';
        P.fileNums = [20];
        P.sweepExclude = [];
        P.fileNamePrefix = '05Aug20 ';
        P.cellID = '200805_9';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==25
        %% 200805_11
        P.datapath = [path to files] '/200805';
        P.fileNums = [22];
        P.sweepExclude = [];
        P.fileNamePrefix = '05Aug20 ';
        P.cellID = '200805_11';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 32;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==26
        %% 200805_12
        P.datapath = [path to files] '/200805';
        P.fileNums = [24];
        P.sweepExclude = [];
        P.fileNamePrefix = '05Aug20 ';
        P.cellID = '200805_12';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==27
        %% 200805_13
        P.datapath = [path to files] '/200805';
        P.fileNums = [26];
        P.sweepExclude = [];
        P.fileNamePrefix = '05Aug20 ';
        P.cellID = '200805_13';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==28
        %% 200813_1
        P.datapath = [path to files] '/200813';
        P.fileNums = [1];
        P.sweepExclude = [];
        P.fileNamePrefix = '13Aug20 ';
        P.cellID = '200813_1';
        P.pksThreshold = -0.015; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==29
        %% 200813_2 (USE COMBINED SCRIPT 231)
        P.datapath = [path to files] '/200813';
        P.fileNums = [3];
        P.sweepExclude = [];
        P.fileNamePrefix = '13Aug20 ';
        P.cellID = '200813_2';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==30
        %% 200813_3
        P.datapath = [path to files] '/200813';
        P.fileNums = [4];
        P.sweepExclude = [];
        P.fileNamePrefix = '13Aug20 ';
        P.cellID = '200813_3';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==31
        %% 200813_4
        P.datapath = [path to files] '/200813';
        P.fileNums = [5];
        P.sweepExclude = [];
        P.fileNamePrefix = '13Aug20 ';
        P.cellID = '200813_4';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==32
        %% 200813_5
        P.datapath = [path to files] '/200813';
        P.fileNums = [6];
        P.sweepExclude = [];
        P.fileNamePrefix = '13Aug20 ';
        P.cellID = '200813_5';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==33
        %% 200813_6
        P.datapath = [path to files] '/200813';
        P.fileNums = [7];
        P.sweepExclude = [];
        P.fileNamePrefix = '13Aug20 ';
        P.cellID = '200813_6';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==34
        %% 200813_7
        P.datapath = [path to files] '/200813';
        P.fileNums = [8];
        P.sweepExclude = [];
        P.fileNamePrefix = '13Aug20 ';
        P.cellID = '200813_7';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==35
        %% 200813_8
        P.datapath = [path to files] '/200813';
        P.fileNums = [10];
        P.sweepExclude = [];
        P.fileNamePrefix = '13Aug20 ';
        P.cellID = '200813_8';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==36
        %% 200813_10
        P.datapath = [path to files] '/200813';
        P.fileNums = [12];
        P.sweepExclude = [];
        P.fileNamePrefix = '13Aug20 ';
        P.cellID = '200813_10';
        P.pksThreshold = -0.06; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==37
        %% 200813_11
        P.datapath = [path to files] '/200813';
        P.fileNums = [13];
        P.sweepExclude = [];
        P.fileNamePrefix = '13Aug20 ';
        P.cellID = '200813_11';
        P.pksThreshold = -0.06; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==38
        %% 200813_12
        P.datapath = [path to files] '/200813';
        P.fileNums = [15];
        P.sweepExclude = [];
        P.fileNamePrefix = '13Aug20 ';
        P.cellID = '200813_12';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==39
        %% 200814_1
        P.datapath = [path to files] '/200814';
        P.fileNums = [1];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_1';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==40
        %% 200814_2
        P.datapath = [path to files] '/200814';
        P.fileNums = [3];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_2';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==41
        %% 200814_3
        P.datapath = [path to files] '/200814';
        P.fileNums = [4];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_3';
        P.pksThreshold = -0.15; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==42
        %% 200814_4
        P.datapath = [path to files] '/200814';
        P.fileNums = [5];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_4';
        P.pksThreshold = -0.08; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==43
        %% 200814_5
        P.datapath = [path to files] '/200814';
        P.fileNums = [6];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_5';
        P.pksThreshold = -0.08; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==44
        %% 200814_6
        P.datapath = [path to files] '/200814';
        P.fileNums = [7];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_6';
        P.pksThreshold = -0.08; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==45
        %% 200814_7
        P.datapath = [path to files] '/200814';
        P.fileNums = [8];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_7';
        P.pksThreshold = -0.08; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==46
        %% 200814_8
        P.datapath = [path to files] '/200814';
        P.fileNums = [9];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_8';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==47
        %% 200814_9
        P.datapath = [path to files] '/200814';
        P.fileNums = [10];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_9';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==48
        %% 200814_10
        P.datapath = [path to files] '/200814';
        P.fileNums = [11];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_10';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==49
        %% 200814_11
        P.datapath = [path to files] '/200814';
        P.fileNums = [14];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_11';
        P.pksThreshold = -0.01; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==50
        %% 200814_12 (USE MERGED SCRIPT)
        P.datapath = [path to files] '/200814';
        P.fileNums = [16];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_12';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==51
        %% 200814_13
        P.datapath = [path to files] '/200814';
        P.fileNums = [17];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_13';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==52
        %% 200814_14
        P.datapath = [path to files] '/200814';
        P.fileNums = [18];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_14';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==53
        %% 200814_15
        P.datapath = [path to files] '/200814';
        P.fileNums = [19];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_15';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==54
        %% 200814_16
        P.datapath = [path to files] '/200814';
        P.fileNums = [20];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_16';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==55
        %% 200814_17
        P.datapath = [path to files] '/200814';
        P.fileNums = [21];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_17';
        P.pksThreshold = -0.075; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==56
        %% 200814_18
        P.datapath = [path to files] '/200814';
        P.fileNums = [22];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_18';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==57
        %% 200814_19 (USE COMBINED SCRIPT)
        P.datapath = [path to files] '/200814';
        P.fileNums = [24];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_19';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==58
        %% 200814_20
        P.datapath = [path to files] '/200814';
        P.fileNums = [25];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_20';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 34;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==59

        %% 200814_21
        P.datapath = [path to files] '/200814';
        P.fileNums = [26];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_21';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==60
        %% 200814_22
        P.datapath = [path to files] '/200814';
        P.fileNums = [27];
        P.sweepExclude = [];
        P.fileNamePrefix = '14Aug20 ';
        P.cellID = '200814_22';
        P.pksThreshold = -0.025; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==61
        %% 200819_18
        P.datapath = [path to files] '/200819';
        P.fileNums = [21];
        P.sweepExclude = [];
        P.fileNamePrefix = '19Aug20 ';
        P.cellID = '200819_18';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 40;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.

    elseif kk==62
        %% 200827_1
        P.datapath = [path to files] '/200827';
        P.fileNums = [6];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Aug20 ';
        P.cellID = '200827_1';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==63
        %% 200827_2
        P.datapath = [path to files] '/200827';
        P.fileNums = [8];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Aug20 ';
        P.cellID = '200827_2';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==64
        %% 200827_3
        P.datapath = [path to files] '/200827';
        P.fileNums = [10];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Aug20 ';
        P.cellID = '200827_3';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==65
        %% 200827_4
        P.datapath = [path to files] '/200827';
        P.fileNums = [12];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Aug20 ';
        P.cellID = '200827_4';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==66
        %% 200827_5
        P.datapath = [path to files] '/200827';
        P.fileNums = [14];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Aug20 ';
        P.cellID = '200827_5';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==67
        %% 200827_6
        P.datapath = [path to files] '/200827';
        P.fileNums = [16];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Aug20 ';
        P.cellID = '200827_6';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==68
        %% 200827_7
        P.datapath = [path to files] '/200827';
        P.fileNums = [18];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Aug20 ';
        P.cellID = '200827_7';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==69
        %% 200827_8
        P.datapath = [path to files] '/200827';
        P.fileNums = [24];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Aug20 ';
        P.cellID = '200827_8';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==70
        %% 200827_9
        P.datapath = [path to files] '/200827';
        P.fileNums = [26];
        P.sweepExclude = [];
        P.fileNamePrefix = '27Aug20 ';
        P.cellID = '200827_9';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==71
        %% 200903_14
        P.datapath = [path to files] '/200903';
        P.fileNums = [16];
        P.sweepExclude = [];
        P.fileNamePrefix = '03Sep20 ';
        P.cellID = '200903_14';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==72
        %% 200903_15
        P.datapath = [path to files] '/200903';
        P.fileNums = [18];
        P.sweepExclude = [];
        P.fileNamePrefix = '03Sep20 ';
        P.cellID = '200903_15';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==73
        %% 200903_16
        P.datapath = [path to files] '/200903';
        P.fileNums = [20];
        P.sweepExclude = [];
        P.fileNamePrefix = '03Sep20 ';
        P.cellID = '200903_16';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==74
        %% 200903_17
        P.datapath = [path to files] '/200903';
        P.fileNums = [22];
        P.sweepExclude = [];
        P.fileNamePrefix = '03Sep20 ';
        P.cellID = '200903_17';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==75
        %% 200903_18
        P.datapath = [path to files] '/200903';
        P.fileNums = [25];
        P.sweepExclude = [];
        P.fileNamePrefix = '03Sep20 ';
        P.cellID = '200903_18';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==76
        %% 200903_19
        P.datapath = [path to files] '/200903';
        P.fileNums = [28];
        P.sweepExclude = [];
        P.fileNamePrefix = '03Sep20 ';
        P.cellID = '200903_19';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==77
        %% 200903_20
        P.datapath = [path to files] '/200903';
        P.fileNums = [30];
        P.sweepExclude = [];
        P.fileNamePrefix = '03Sep20 ';
        P.cellID = '200903_20';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==78
        %% 200903_21
        P.datapath = [path to files] '/200903';
        P.fileNums = [32];
        P.sweepExclude = [];
        P.fileNamePrefix = '03Sep20 ';
        P.cellID = '200903_21';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==79
        %% 200903_22
        P.datapath = [path to files] '/200903';
        P.fileNums = [36];
        P.sweepExclude = [];
        P.fileNamePrefix = '03Sep20 ';
        P.cellID = '200903_22';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==80
        %% 200909_5
        P.datapath = [path to files] '/200909';
        P.fileNums = [6];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_5';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.

    elseif kk==81
        %% 200909_6
        P.datapath = [path to files] '/200909';
        P.fileNums = [8];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_6';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.

    elseif kk==82
        %% 200909_7
        P.datapath = [path to files] '/200909';
        P.fileNums = [10];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_7';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.

    elseif kk==83
        %% 200909_8
        P.datapath = [path to files] '/200909';
        P.fileNums = [12];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_8';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.

    elseif kk==84
        %% 200909_9
        P.datapath = [path to files] '/200909';
        P.fileNums = [14];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_9';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==85
        %% 200909_10
        P.datapath = [path to files] '/200909';
        P.fileNums = [16];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_10';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==86
        %% 200909_11
        P.datapath = [path to files] '/200909';
        P.fileNums = [18];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_11';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.

    elseif kk==87
        %% 200909_12
        P.datapath = [path to files] '/200909';
        P.fileNums = [20];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_12';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.

    elseif kk==88
        %% 200909_13
        P.datapath = [path to files] '/200909';
        P.fileNums = [22];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_13';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==89
        %% 200909_14
        P.datapath = [path to files] '/200909';
        P.fileNums = [24];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_14';
        P.pksThreshold = -0.15; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==90
        %% 200909_15
        P.datapath = [path to files] '/200909';
        P.fileNums = [26];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_15';
        P.pksThreshold = -0.015; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==91
        %% 200909_16
        P.datapath = [path to files] '/200909';
        P.fileNums = [28];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_16';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==92
        %% 200909_17
        P.datapath = [path to files] '/200909';
        P.fileNums = [30];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_17';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.

    elseif kk==93
        %% 200909_18
        P.datapath = [path to files] '/200909';
        P.fileNums = [33];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_18';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==94
        %% 200909_21
        P.datapath = [path to files] '/200909';
        P.fileNums = [40];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_21';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==95
        %% 200909_22
        P.datapath = [path to files] '/200909';
        P.fileNums = [42];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_22';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==96
        %% 200909_23
        P.datapath = [path to files] '/200909';
        P.fileNums = [44];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_23';
        P.pksThreshold = -0.13; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.
    elseif kk==97
        %% 200909_24
        P.datapath = [path to files] '/200909';
        P.fileNums = [46];
        P.sweepExclude = [];
        P.fileNamePrefix = '09Sep20 ';
        P.cellID = '200909_24';
        P.pksThreshold = -0.04; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.sensorCorrection=0; % Reduce the TTL starttimes with 14.9ms to correct for position of the sensor
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform.

    end

    P.datapath = [path to output folder];
    P.loadpath = [P.datapath '/' P.cellID]
    cd(P.loadpath)

    if P.fileNums<10
        P.fileName = [P.fileNamePrefix '00' num2str(P.fileNums)];
    elseif P.fileNums>=10 && P.fileNums<100
        P.fileName = [P.fileNamePrefix '0' num2str(P.fileNums)];
    elseif P.fileNums>100
        P.fileName = [P.fileNamePrefix num2str(P.fileNums)];
    end

    load(['RLB_EC_loomingdata_' P.fileName '.mat']);




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
    P.fs=20000;
    P.maxFrameDiff = 0.015; % Maximum allowed difference between start stimuli for binocular stimulation


    %% Gather the data for the graphs
    if classification(kk)==10 && length(Spk.kde_left)==1750
        binoc_ipsi= [binoc_ipsi; Spk.kde_left-mean(Spk.kde_left(250:500))];
        binoc_contra = [binoc_contra; Spk.kde_right-mean(Spk.kde_right(250:500))];
        binoc_both = [binoc_both; Spk.kde_both-mean(Spk.kde_both(250:500))];
    elseif classification(kk)==10 && length(Spk.kde_left)<1750
        idx = Spk.kde_left-mean(Spk.kde_left(250:500));
        binoc_ipsi= [binoc_ipsi; [idx NaN(1,1750-length(idx))]];
        idx =Spk.kde_right-mean(Spk.kde_right(250:500));
        binoc_contra = [binoc_contra; [idx NaN(1,1750-length(idx))]];
        idx =Spk.kde_both-mean(Spk.kde_both(250:500));
        binoc_both = [binoc_both; [idx NaN(1,1750-length(idx))]];
    end

    %% Calculate the baseline firing
    binoc_baselineSpkrate_ipsi = [binoc_baselineSpkrate_ipsi;mean(Spk.kde_left(250:500))];
    binoc_baselineSpkrate_contra = [binoc_baselineSpkrate_contra;mean(Spk.kde_right(250:500))];
    binoc_baselineSpkrate_both = [binoc_baselineSpkrate_both;mean(Spk.kde_both(250:500))];

end

% Save the data manually

%% build the graphs
%mean
binoc_ipsi_avg = nanmean(binoc_ipsi);
binoc_contra_avg= nanmean(binoc_contra);
binoc_both_avg= nanmean(binoc_both);


%SEM
binoc_ipsi_sem = nanstd(binoc_ipsi)/sqrt(size(binoc_ipsi,1));
binoc_contra_sem= nanstd(binoc_contra)/sqrt(size(binoc_contra,1));
binoc_both_sem= nanstd(binoc_both)/sqrt(size(binoc_both,1));


%% graphs
cd([path to output folder])
%binocular ipsi
fig(1)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,1750);
plot(XplotAxis,binoc_ipsi_avg,'r')
plot(XplotAxis,binoc_ipsi_avg+binoc_ipsi_sem,'k')
plot(XplotAxis,binoc_ipsi_avg-binoc_ipsi_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 0 0.25 0.75 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-10 0 10 20 30 40]); % MODIFY TO FIT FIGURES
ylim([-10 40]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.25 0.25],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.75 0.75],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_binocular_ipsi.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_binocular_ipsi.pdf';
print('-dpdf','-painters','-loose',figname);

%Binocular contra
fig(2)=figure; hold on
% subplot(5,1,1);

plot(XplotAxis,binoc_contra_avg,'b')
plot(XplotAxis,binoc_contra_avg+binoc_contra_sem,'k')
plot(XplotAxis,binoc_contra_avg-binoc_contra_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 0 0.25 0.75 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-10 0 10 20 30 40]); % MODIFY TO FIT FIGURES
ylim([-10 40]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.25 0.25],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.75 0.75],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_binocular_contra.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_binocular_contra.pdf';
print('-dpdf','-painters','-loose',figname);

%binocular both
fig(3)=figure; hold on
% subplot(5,1,1);

plot(XplotAxis,binoc_both_avg,'g')
plot(XplotAxis,binoc_both_avg+binoc_both_sem,'k')
plot(XplotAxis,binoc_both_avg-binoc_both_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 0 0.25 0.75 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-10 0 10 20 30 40]); % MODIFY TO FIT FIGURES
ylim([-10 40]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.25 0.25],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.75 0.75],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_binocular_both.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_binocular_both.pdf';
print('-dpdf','-painters','-loose',figname);







