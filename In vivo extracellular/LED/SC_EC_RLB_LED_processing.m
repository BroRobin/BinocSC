%% SC_EC_RLB_LED
% Analyse spike responses to LEDs to Right Left and Both eyes
% by R. Broersen; 03-07-2019

close all;
clear all;
outputVars=[];
outputVars_SDcomparison=[];
outputVars_ROC=[];
for kk =1:79
    clearvars -except kk outputVars outputVars_SDcomparison outputVars_ROC
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


    %% Parameters definition
    spkpause=0; % 1 for pausing for checking spikes
    save_plot_data=1;
    P.stimOrder = [2 1 3]; %Right, left, both
    P.trialDur = 0.02; % trial length in sec
    P.medianFiltWindow = 0.01; % 2.5 ms window median filter
    P.filtCutLow = 100; %low cut frequency in Hz
    P.filtOrder = 1; %Order of the filter
    P.cutoff  =   500;  % gaussian filter cutoff
    P.TTLThreshold = 0.025;
    ROC_window = 0.5; % window before and after start stimulus (time=0) for ROC analysis
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
    [D.stimData,D.timestamps,D.metaData]=importaxo([P.fileName '.axgd']); % actually import the data
    P.numStim = size(D.stimData,1);
    D.metaData.fs = 1/D.metaData.SampInt;

    %% Create vector of all data, filter
    %Exclude timetrace for combined files
    if kk==16 || kk==18|| kk==23|| kk==25|| kk==26|| kk==27|| kk==28|| kk==30|| kk==31|| kk==32
        D.stimData{151}=[];
    end

    D.fullDataVector = [];
    for jj=1:1:P.numStim
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
    % % Replace spikes by NaN
    % fig(2)=figure; hold on; plot(D.fullDataVector(1:500000))
    % for ii = 1:size(D.locs,1)
    %     D.fullDataVector(D.locs(ii)-(P.spkMargin(1)*D.metaData.fs):D.locs(ii)+(P.spkMargin(2)*D.metaData.fs)) = NaN;
    % end
    % plot(D.fullDataVector(1:500000),'r')
    %
    % % Linear interpolation of edges
    % nanx = isnan(D.fullDataVector);
    % t    = 1:numel(D.fullDataVector);
    % D.fullDataVector(nanx) = interp1(t(~nanx), D.fullDataVector(~nanx), t(nanx));
    % %replace NaNs at the beginning with first non-NaN value
    % if isnan(D.fullDataVector(1))==1
    %     D.fullDataVector(1:(find(isnan(D.fullDataVector)==0,1,'first')-1))=D.fullDataVector(find(isnan(D.fullDataVector)==0,1,'first'));
    % end
    % %replace NaNs at the end with last non-NaN value
    % if isnan(D.fullDataVector(end))==1
    %     D.fullDataVector(find(isnan(D.fullDataVector)==0,1,'last')+1:end)=D.fullDataVector(find(isnan(D.fullDataVector)==0,1,'last'));
    % end
    % if sum(isnan(D.fullDataVector))>0
    %     disp('Still NaNs in D.fullDataVector... paused')
    % end
    %
    % % Apply gaussian lowpass filter to remove sharp edges
    % %  index = gfilt(D.fullDataVector',D.metaData.fs,1.8739e-04); %cutoff=1000Hz
    % index = gfilt(D.fullDataVector',D.metaData.fs,9.3695e-05); %cutoff=1000Hz
    % fig(3)=figure; hold on; plot(D.fullDataVector); plot(index,'r');

    % %% Process TTL trial data

    % D.leftScreenData = [];
    % D.rightScreenData = [];
    % D.PTBoutputData = [];
    % for jj=2:4:P.numStim
    %     D.leftScreenData = [D.leftScreenData D.stimData{jj}];
    % end
    % D.leftScreenData= gfilt(D.leftScreenData',D.metaData.fs,9.3695e-05);
    %
    % for jj=3:4:P.numStim
    %     D.rightScreenData = [D.rightScreenData D.stimData{jj}];
    % end
    % D.rightScreenData= gfilt(D.rightScreenData',D.metaData.fs,9.3695e-05);
    % %
    % % for jj=4:4:P.numStim
    % %     D.PTBoutputData = [D.PTBoutputData D.stimData{jj}];
    % % end
    % % D.PTBoutputData= gfilt(D.PTBoutputData',D.metaData.fs,9.3695e-05);
    %
    % % Calculate baseline parameters. Detect where the TTL signal increases
    % % >3*SD of baseline
    % P.leftScreenProps.mean = mean(D.leftScreenData(1:2*10^4));
    % P.leftScreenProps.SD = std(D.leftScreenData(1:2*10^4));
    % P.leftScreenProps.threshold = (3*P.leftScreenProps.SD)+P.leftScreenProps.mean;
    %
    % idx=[];
    % P.leftScreenProps.locs=[];
    % try
    %     for ii=1:(size(P.stimOrder,2)*P.numReps)
    %         if isempty(idx)==1
    %             idx = D.leftScreenData;
    %         else
    %             idx(1:(P.leftScreenProps.locs(ii-1)+(2*D.metaData.fs))) = 0;
    %         end
    %         [P.leftScreenProps.locs(ii)] = find(idx>P.leftScreenProps.threshold,1,'first');
    %     end
    % end
    %
    % P.rightScreenProps.mean = mean(D.rightScreenData(1:2*10^4));
    % P.rightScreenProps.SD = std(D.rightScreenData(1:2*10^4));
    % P.rightScreenProps.threshold = (5*P.rightScreenProps.SD)+P.rightScreenProps.mean;
    %
    % idx=[];
    % P.rightScreenProps.locs=[];
    % try
    %     for ii=1:(size(P.stimOrder,2)*P.numReps)
    %         if isempty(idx)==1
    %             idx = D.rightScreenData;
    %         else
    %             idx(1:(P.rightScreenProps.locs(ii-1)+(2*D.metaData.fs))) = 0;
    %         end
    %         [P.rightScreenProps.locs(ii)] = find(idx>P.rightScreenProps.threshold,1,'first');
    %         try
    %         if P.sensorCorrection==1
    %             P.rightScreenProps.locs(ii) = P.rightScreenProps.locs(ii)-round(0.0149*D.metaData.fs);
    %         end
    %         end
    %     end
    %
    % end
    % if numel(P.leftScreenProps.locs)~=numel(P.rightScreenProps.locs)
    %     disp('Error in number of TTL events detected, right and left screen are not equal number')
    % end

    D.trialID = repmat(P.stimOrder,1,P.numReps);
    D.trial_timestamps = []; %500ms baseline - 1.5s grating - 500 ms after

    % generate timestamps for the LED onsets
    P.leftScreenProps.locs=[];
    P.rightScreenProps.locs=[];
    counter=1*D.metaData.fs;
    for ii=1:size(D.trialID,2)
        if ii>1
            counter=counter+(3*D.metaData.fs);
        end
        if D.trialID(ii)==2
            P.rightScreenProps.locs=[P.rightScreenProps.locs counter];
        elseif D.trialID(ii)==1
            P.leftScreenProps.locs=[P.leftScreenProps.locs counter];
        elseif D.trialID(ii)==3
            P.rightScreenProps.locs=[P.rightScreenProps.locs counter];
            P.leftScreenProps.locs=[P.leftScreenProps.locs counter];
        end
    end
    %% Gather the trialdata

    % D.trialdata_left=[];
    % D.trialdata_right=[];
    % D.trialdata_both=[];
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

    % % Gather the trial data
    % for ii = 1:length(D.trialID)
    %     if D.trialID(ii)==2
    %         try
    %             D.trialdata_right = [D.trialdata_right; D.fullDataVector(D.trial_timestamps(ii):D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1*D.metaData.fs)-1)];
    %         catch
    %             idxPadded = [D.fullDataVector(D.trial_timestamps(ii):end) NaN(1,D.metaData.fs)];
    %             D.trialdata_right = [D.trialdata_right; idxPadded(1:size(D.trialdata_right(end,:),2))];
    %         end
    %
    %     elseif D.trialID(ii)==1
    %         try
    %             D.trialdata_left = [D.trialdata_left; D.fullDataVector(D.trial_timestamps(ii):D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1*D.metaData.fs)-1)];
    %         catch
    %             idxPadded = [D.fullDataVector(D.trial_timestamps(ii):end) NaN(1,D.metaData.fs)];
    %             D.trialdata_left = [D.trialdata_left; idxPadded(1:size(D.trialdata_left(end,:),2))];
    %         end
    %
    %     elseif D.trialID(ii)==3
    %         try
    %             D.trialdata_both = [D.trialdata_both; D.fullDataVector(D.trial_timestamps(ii):D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1*D.metaData.fs)-1)];
    %         catch
    %             idxPadded = [D.fullDataVector(D.trial_timestamps(ii):end) NaN(1,D.metaData.fs)];
    %             D.trialdata_both = [D.trialdata_both; idxPadded(1:size(D.trialdata_both(end,:),2))];
    %         end
    %     end
    % end

    %% Average the trials per stimulus

    % % Normalize trials to baseline
    % for ii = 1:size(D.trialdata_left,1)
    %     D.trialdata_left(ii,:) = D.trialdata_left(ii,:)-mean(D.trialdata_left(ii,(0.50*D.metaData.fs):(0.5*D.metaData.fs)));
    %     D.trialdata_right(ii,:) = D.trialdata_right(ii,:)-mean(D.trialdata_right(ii,(0.50*D.metaData.fs):(0.5*D.metaData.fs)));
    %     D.trialdata_both(ii,:) = D.trialdata_both(ii,:)-mean(D.trialdata_both(ii,(0.50*D.metaData.fs):(0.5*D.metaData.fs)));
    % end
    % R.avg_left = nanmean(D.trialdata_left,1);
    % R.avg_right = nanmean(D.trialdata_right,1);
    % R.avg_both = nanmean(D.trialdata_both,1);

    %% Plot the traces
    D.plotXaxis = D.timestamps(0.5*D.metaData.fs:end-1)-1;
    D.plotXaxis = D.timestamps(0.5*D.metaData.fs:60000-1)-1;

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

    %% Plot/adjust subplots
    % ipsilateral
    if save_plot_data==1
        subplot(4,1,1);
        title('Ipsilateral screen','FontSize',20);
        % ylim([0 P.numReps]);set(gca,'FontSize',14)
        ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
        line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
        % line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
        % line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
        line([0.002 0.002],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
        yyaxis right
        % plot(Spk.kde_left_X,(max(get(gca, 'Ylim'))/max(Spk.kde_left))*Spk.kde_left,'r','LineWidth',2);
        if P.side ==1;
            plot(Spk.kde_left_X,Spk.kde_left,'r','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]); ylabel('FF (Hz)')
            % ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
        elseif P.side ==2;
            plot(Spk.kde_right_X,Spk.kde_right,'r','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both])]); ylabel('FF (Hz)')
            % ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
        end
        xlim([-0.5 1])

        % contralateral
        subplot(4,1,2);
        title('Contralateral screen','FontSize',20);
        % ylim([0 50]);set(gca,'FontSize',14)
        ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
        line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
        % line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
        % line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
        line([0.002 0.002],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
        yyaxis right
        % plot(Spk.kde_right_X,(max(get(gca, 'Ylim'))/max(Spk.kde_right))*Spk.kde_right,'b','LineWidth',2);
        if P.side ==2;
            plot(Spk.kde_left_X,Spk.kde_left,'b','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]); ylabel('FF (Hz)')
            % ylim([0 size(Spk.spktimes_left,2)]);set(gca,'FontSize',14)
        elseif P.side ==1;
            plot(Spk.kde_right_X,Spk.kde_right,'b','LineWidth',2); ylim([0 max([Spk.kde_right Spk.kde_right Spk.kde_both])]); ylabel('FF (Hz)')
            % ylim([0 size(Spk.spktimes_right,2)]);set(gca,'FontSize',14)
        end
        xlim([-0.5 1])

        %both
        subplot(4,1,3); title('Both screens','FontSize',20);
        % ylim([0 50]);set(gca,'FontSize',14)
        ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
        line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
        % line([0.5 0.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
        % line([1 1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
        line([0.002 0.002],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
        yyaxis right;
        % plot(Spk.kde_both_X,(max(get(gca, 'Ylim'))/max(Spk.kde_both))*Spk.kde_both,'k','LineWidth',2);
        plot(Spk.kde_both_X,Spk.kde_both,'k','LineWidth',2);ylim([0 max([Spk.kde_right Spk.kde_left Spk.kde_both])]); ylabel('FF (Hz)')
        xlim([-0.5 1])

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
        line([0.002 0.002],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
        xlim([-0.5 1])
    end
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
    %
    % %Peakamp stats OFF responses after the stimulus (till 0.25s after)
    % if P.side ==1
    %     Spkstats.peakamp_contra_OFF=max(Spk.kde_right(P.trialDur<Spk.kde_right_X&Spk.kde_right_X<(P.trialDur+0.25)));
    %     Spkstats.peakamp_ipsi_OFF=max(Spk.kde_left(P.trialDur<Spk.kde_left_X&Spk.kde_left_X<(P.trialDur+0.25)));
    % elseif P.side ==2
    %     Spkstats.peakamp_ipsi_OFF=max(Spk.kde_right(P.trialDur<Spk.kde_right_X&Spk.kde_right_X<(P.trialDur+0.25)));
    %     Spkstats.peakamp_contra_OFF=max(Spk.kde_left(P.trialDur<Spk.kde_left_X&Spk.kde_left_X<(P.trialDur+0.25)));
    % end
    % Spkstats.peakamp_both_OFF=max(Spk.kde_both(P.trialDur<Spk.kde_both_X&Spk.kde_both_X<(P.trialDur+0.25)));
    % Spkstats.peakamp_sum_OFF=max(Spk.kde_sum(P.trialDur<Spk.kde_both_X&Spk.kde_both_X<(P.trialDur+0.25)));
    %

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
    % sprintf('Average jitter between screens is: %5f seconds',mean(P.screenJitter)/P.fs)
    Spkstats.outputVars = [Spont.FF, Spont.ISI_stats(1,1), Spont.ISI_stats(1,2),Spont.CV, Spkstats.peakamp_contra_ON, Spkstats.peakamp_ipsi_ON, Spkstats.peakamp_both_ON, Spkstats.peakamp_sum_ON, Spkstats.latency_ipsi, Spkstats.latency_contra, Spkstats.latency_both, Spkstats.spkprob_contra, Spkstats.spkprob_ipsi, Spkstats.spkprob_both,Spkstats.AUC_contra_ON, Spkstats.AUC_ipsi_ON, Spkstats.AUC_both_ON, Spkstats.AUC_sum_ON, Spkstats.latency_ipsi_median, Spkstats.latency_contra_median, Spkstats.latency_both_median,Spkstats.ipsi_resp_3,Spkstats.contra_resp_3,Spkstats.both_resp_3,Spkstats.ipsi_resp_5,Spkstats.contra_resp_5,Spkstats.both_resp_5,Spkstats.peakamp_X_contra_ON, Spkstats.peakamp_X_ipsi_ON, Spkstats.peakamp_X_both_ON, Spkstats.peakamp_X_sum_ON, Spkstats.peakamp_sumContraIpsi];
    outputVars(kk,:) = [Spont.FF, Spont.ISI_stats(1,1), Spont.ISI_stats(1,2),Spont.CV, Spkstats.peakamp_contra_ON, Spkstats.peakamp_ipsi_ON, Spkstats.peakamp_both_ON, Spkstats.peakamp_sum_ON, Spkstats.latency_ipsi, Spkstats.latency_contra, Spkstats.latency_both, Spkstats.spkprob_contra, Spkstats.spkprob_ipsi, Spkstats.spkprob_both,Spkstats.AUC_contra_ON, Spkstats.AUC_ipsi_ON, Spkstats.AUC_both_ON, Spkstats.AUC_sum_ON, Spkstats.latency_ipsi_median, Spkstats.latency_contra_median, Spkstats.latency_both_median,Spkstats.ipsi_resp_3,Spkstats.contra_resp_3,Spkstats.both_resp_3,Spkstats.ipsi_resp_5,Spkstats.contra_resp_5,Spkstats.both_resp_5,Spkstats.peakamp_X_contra_ON, Spkstats.peakamp_X_ipsi_ON, Spkstats.peakamp_X_both_ON, Spkstats.peakamp_X_sum_ON, Spkstats.peakamp_sumContraIpsi];
    outputVars_SDcomparison(kk,:) = [Spkstats.ipsi_resp_2,Spkstats.contra_resp_2,Spkstats.both_resp_2,Spkstats.ipsi_resp_3,Spkstats.contra_resp_3,Spkstats.both_resp_3,Spkstats.ipsi_resp_4,Spkstats.contra_resp_4,Spkstats.both_resp_4,Spkstats.ipsi_resp_5,Spkstats.contra_resp_5,Spkstats.both_resp_5,Spkstats.ipsi_resp_6,Spkstats.contra_resp_6,Spkstats.both_resp_6,Spkstats.ipsi_resp_7,Spkstats.contra_resp_7,Spkstats.both_resp_7,Spkstats.ipsi_resp_8,Spkstats.contra_resp_8,Spkstats.both_resp_8];
    outputVars_ROC(kk,:) = [significanceLightEnhancement_left significanceLightDepression_left significanceLightEnhancement_right significanceLightDepression_right significanceLightEnhancement_both significanceLightDepression_both significanceLightEnhancement_leftvsboth significanceLightDepression_leftvsboth significanceLightEnhancement_rightvsboth significanceLightDepression_rightvsboth];

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
    if save_plot_data==1
        try
            close(fig(1))
        end
        figure(fig(5));
        figname = sprintf('Spikes_LEDRLB_%s.fig',P.fileName);
        saveas(gcf,figname,'fig');
        figname = sprintf('Spikes_LEDRLB_%s.pdf',P.fileName);
        print('-dpdf','-painters','-loose',figname);

        savename = sprintf('RLB_EC_LEDdata_%s.mat',P.fileName)
        save(savename,'D','P','Spk','Spkstats','Spont');
    end
end

