%% SC_EC_RLB_looming
% Analyse spike responses to looming stimuli to Right Left and Both eyes
% by R. Broersen; 03-07-2019
close all;
clear all;


binoc_ipsi=[];
binoc_contra=[];
binoc_both=[];

monoipsi_ipsi=[];
monoipsi_contra=[];
monoipsi_both=[];

monocontra_ipsi=[];
monocontra_contra=[];
monocontra_both=[];

noresp_ipsi=[];
noresp_contra=[];
noresp_both=[];

classification = [4
    4
    4
    2
    2
    4
    1
    4
    2
    1
    1
    4
    1
    1
    4
    4
    4
    3
    2
    1
    3
    4
    3
    3
    2
    3
    4
    2
    2
    4
    2
    4
    1
    1
    4
    4
    3
    4
    4
    1
    4
    2
    4
    3
    4
    4
    4
    1
    4
    1
    4
    4
    1
    4
    4
    4
    4
    1
    4
    4
    4
    4
    4
    4
    3
    4
    1
    1
    1
    3
    4
    4
    4
    3
    2
    4
    4
    4
    4
    1
    3
    4
    3
    4
    3
    2
    4
    1
    1
    3
    4
    4
    4
    3
    3
    1
    3];

for kk =1:61
    kk
    clearvars -except kk classification binoc_ipsi binoc_contra binoc_both monoipsi_ipsi monoipsi_contra monoipsi_both monocontra_ipsi monocontra_contra monocontra_both noresp_ipsi noresp_contra noresp_both

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

    end


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
    cd(P.datapath)
    P.outputpath = ['/Users/u1072913/stack/ANU/Data analysis/SC extracellular/' P.cellID];
    try
        cd(P.outputpath)
    catch
        mkdir(['/Users/u1072913/stack/ANU/Data analysis/SC extracellular/' P.cellID]);
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
    [D.stimData,D.timestamps,D.metaData]=importaxo([P.fileName '.axgd']); % actually import the data
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
    if save_plot_data==1
        fig(1) = figure;
    end
    idx = index;
    if P.spikeDetMode==1
        idx_pks = index; idx_pks(idx_pks<P.pksThreshold)=NaN;
        [D.pks, D.locs] = findpeaks(idx_pks);
        if numel(D.pks)>0
            if save_plot_data==1
                figure(fig(1)); hold on; plot(idx), plot(idx_pks,'g'); plot(D.locs,D.pks,'r*');hold off
            end
            if spkpause==1
                disp('Paused for Spk check'); pause;
            end
        end
    elseif P.spikeDetMode==2
        idx_pks = index; idx_pks(idx_pks>P.pksThreshold)=NaN;
        idx_pks=idx_pks*-1;
        [D.pks, D.locs] = findpeaks(idx_pks);
        if numel(D.pks)>0
            if save_plot_data==1
                figure(fig(1)); hold on; plot(idx), plot(idx_pks*-1,'g'); plot(D.locs,D.pks*-1,'r*');hold off
            end
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
            idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(2*D.metaData.fs)];
            Spk.spktimes_left{count_left}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

        elseif D.trialID(ii)==2
            count_right=count_right+1;
            idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(2*D.metaData.fs)];
            Spk.spktimes_right{count_right}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

        elseif D.trialID(ii)==3
            count_both=count_both+1;
            idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(2*D.metaData.fs)];
            Spk.spktimes_both{count_both}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;

        elseif isnan(D.trialID(ii))==1 % If jitter between screens exceeds margin
            count_both=count_both+1;
            Spk.spktimes_both{count_both}=NaN;
        end
    end

    % Make PSTH
    count_left = 0; count_right = 0;
    count_both = 0;
    if save_plot_data==1
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

    if classification(kk)==1
        binoc_ipsi= [binoc_ipsi; Spk.kde_left-mean(Spk.kde_left(250:500))];
        binoc_contra = [binoc_contra; Spk.kde_right-mean(Spk.kde_right(250:500))];
        binoc_both = [binoc_both; Spk.kde_both-mean(Spk.kde_both(250:500))];
    elseif classification(kk)==2
        monoipsi_ipsi=[monoipsi_ipsi; Spk.kde_left-mean(Spk.kde_left(250:500))];
        monoipsi_contra=[monoipsi_contra;Spk.kde_right-mean(Spk.kde_right(250:500))];
        monoipsi_both=[monoipsi_both;Spk.kde_both-mean(Spk.kde_both(250:500))];
    elseif classification(kk)==3
        monocontra_ipsi=[monocontra_ipsi;Spk.kde_left-mean(Spk.kde_left(250:500))];
        monocontra_contra=[monocontra_contra;Spk.kde_right-mean(Spk.kde_right(250:500))];
        monocontra_both=[monocontra_both;Spk.kde_both-mean(Spk.kde_both(250:500))];
    elseif classification(kk)==4
        noresp_ipsi=[noresp_ipsi;Spk.kde_left-mean(Spk.kde_left(250:500))];
        noresp_contra=[noresp_contra;Spk.kde_right-mean(Spk.kde_right(250:500))];
        noresp_both=[noresp_both;Spk.kde_both-mean(Spk.kde_both(250:500))];
    end
end

% Save the data manually + run other script with remaining looming cells.

%% build the graphs
%mean
binoc_ipsi_avg = mean(binoc_ipsi);
binoc_contra_avg= mean(binoc_contra);
binoc_both_avg= mean(binoc_both);

monoipsi_ipsi_avg= mean(monoipsi_ipsi);
monoipsi_contra_avg= mean(monoipsi_contra);
monoipsi_both_avg= mean(monoipsi_both);

monocontra_ipsi_avg= mean(monocontra_ipsi);
monocontra_contra_avg= mean(monocontra_contra);
monocontra_both_avg= mean(monocontra_both);

noresp_ipsi_avg=mean(noresp_ipsi);
noresp_contra_avg=mean(noresp_contra);
noresp_both_avg=mean(noresp_both);

%SEM
binoc_ipsi_sem = std(binoc_ipsi)/sqrt(size(binoc_ipsi,1));
binoc_contra_sem= std(binoc_contra)/sqrt(size(binoc_contra,1));
binoc_both_sem= std(binoc_both)/sqrt(size(binoc_both,1));

monoipsi_ipsi_sem= std(monoipsi_ipsi)/sqrt(size(monoipsi_ipsi,1));
monoipsi_contra_sem= std(monoipsi_contra)/sqrt(size(monoipsi_contra,1));
monoipsi_both_sem= std(monoipsi_both)/sqrt(size(monoipsi_both,1));

monocontra_ipsi_sem= std(monocontra_ipsi)/sqrt(size(monocontra_ipsi,1));
monocontra_contra_sem= std(monocontra_contra)/sqrt(size(monocontra_contra,1));
monocontra_both_sem= std(monocontra_both)/sqrt(size(monocontra_both,1));

noresp_ipsi_sem=std(noresp_ipsi)/sqrt(size(noresp_ipsi,1));
noresp_contra_sem=std(noresp_contra)/sqrt(size(noresp_contra,1));
noresp_both_sem=std(noresp_both)/sqrt(size(noresp_both,1));

%% graphs
cd([path to output folder])
%binocular ipsi
fig(1)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,1250);
plot(XplotAxis,binoc_ipsi_avg,'r')
plot(XplotAxis,binoc_ipsi_avg+binoc_ipsi_sem,'k')
plot(XplotAxis,binoc_ipsi_avg-binoc_ipsi_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10]); % MODIFY TO FIT FIGURES
ylim([-5 10]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
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
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10]); % MODIFY TO FIT FIGURES
ylim([-5 10]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
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
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10]); % MODIFY TO FIT FIGURES
ylim([-5 10]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.75 0.75],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_binocular_both.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_binocular_both.pdf';
print('-dpdf','-painters','-loose',figname);

%% Monocular ipsi

%monoipsi ipsi
fig(4)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,monoipsi_ipsi_avg,'r')
plot(XplotAxis,monoipsi_ipsi_avg+monoipsi_ipsi_sem,'k')
plot(XplotAxis,monoipsi_ipsi_avg-monoipsi_ipsi_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10]); % MODIFY TO FIT FIGURES
ylim([-5 10]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_monoipsi_ipsi.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_monoipsi_ipsi.pdf';
print('-dpdf','-painters','-loose',figname);

%monoipsiular contra
fig(5)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,monoipsi_contra_avg,'b')
plot(XplotAxis,monoipsi_contra_avg+monoipsi_contra_sem,'k')
plot(XplotAxis,monoipsi_contra_avg-monoipsi_contra_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10]); % MODIFY TO FIT FIGURES
ylim([-5 10]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_monoipsi_contra.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_monoipsi_contra.pdf';
print('-dpdf','-painters','-loose',figname);

%monoipsiular both
fig(6)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,monoipsi_both_avg,'g')
plot(XplotAxis,monoipsi_both_avg+monoipsi_both_sem,'k')
plot(XplotAxis,monoipsi_both_avg-monoipsi_both_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10]); % MODIFY TO FIT FIGURES
ylim([-5 10]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_monoipsi_both.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_monoipsi_both.pdf';
print('-dpdf','-painters','-loose',figname);

%% Monocular contra

%monocontra ipsi
fig(7)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,monocontra_ipsi_avg,'r')
plot(XplotAxis,monocontra_ipsi_avg+monocontra_ipsi_sem,'k')
plot(XplotAxis,monocontra_ipsi_avg-monocontra_ipsi_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10 15 20]); % MODIFY TO FIT FIGURES
ylim([-5 20]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_monocontra_ipsi.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_monocontra_ipsi.pdf';
print('-dpdf','-painters','-loose',figname);

%monocontraular contra
fig(8)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,monocontra_contra_avg,'b')
plot(XplotAxis,monocontra_contra_avg+monocontra_contra_sem,'k')
plot(XplotAxis,monocontra_contra_avg-monocontra_contra_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10 15 20]); % MODIFY TO FIT FIGURES
ylim([-5 20]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_monocontra_contra.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_monocontra_contra.pdf';
print('-dpdf','-painters','-loose',figname);

%monocontraular both
fig(9)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,monocontra_both_avg,'g')
plot(XplotAxis,monocontra_both_avg+monocontra_both_sem,'k')
plot(XplotAxis,monocontra_both_avg-monocontra_both_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10 15 20]); % MODIFY TO FIT FIGURES
ylim([-5 20]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_monocontra_both.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_monocontra_both.pdf';
print('-dpdf','-painters','-loose',figname);

%% Noresp

%noresp ipsi
fig(10)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,noresp_ipsi_avg,'r')
plot(XplotAxis,noresp_ipsi_avg+noresp_ipsi_sem,'k')
plot(XplotAxis,noresp_ipsi_avg-noresp_ipsi_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10]); % MODIFY TO FIT FIGURES
ylim([-5 10]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_noresp_ipsi.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_noresp_ipsi.pdf';
print('-dpdf','-painters','-loose',figname);

%norespular contra
fig(11)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,noresp_contra_avg,'b')
plot(XplotAxis,noresp_contra_avg+noresp_contra_sem,'k')
plot(XplotAxis,noresp_contra_avg-noresp_contra_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10]); % MODIFY TO FIT FIGURES
ylim([-5 10]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_noresp_contra.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_noresp_contra.pdf';
print('-dpdf','-painters','-loose',figname);

%norespular both
fig(12)=figure; hold on
% subplot(5,1,1);
XplotAxis = linspace(-0.5,2,2500);
plot(XplotAxis,noresp_both_avg,'g')
plot(XplotAxis,noresp_both_avg+noresp_both_sem,'k')
plot(XplotAxis,noresp_both_avg-noresp_both_sem,'k')
ylabel('Norm. spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');
xlabel('Time (s)','fontSize',35,'fontName','Arial','Color','k');
xlim([-0.5 1.25]); xticks([-0.5 -0.25 0 0.25 0.5 0.75 1 1.25]); set(gca,'fontSize',35,'FontName','Arial');

yticks([-5 0 5 10]); % MODIFY TO FIT FIGURES
ylim([-5 10]);

set(gca,'fontSize',35,'FontName','Arial');
line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
line([0.02 0.02],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
box on
% yyaxis right
% yticklabels([0 100 200 300 400]); ylabel('Spike rate (Hz)','fontSize',35,'fontName','Arial','Color','k');set(gca,'fontSize',35,'FontName','Arial','YColor','k')

figname = 'loomingRLB_groupAvg_noresp_both.fig';
saveas(gcf,figname,'fig');
figname = 'loomingRLB_groupAvg_noresp_both.pdf';
print('-dpdf','-painters','-loose',figname);





