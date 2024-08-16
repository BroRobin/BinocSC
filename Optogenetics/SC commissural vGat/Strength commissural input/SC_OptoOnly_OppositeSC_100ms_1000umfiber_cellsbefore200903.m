%% SC_OptoOnly_OppositeSC_100ms_1000umfiber_cellsbefore200903
% Analyse spike responses to optogenetic activation of SC neurons opposite to the SC injected with ChR2.
% by R. Broersen; 03-07-2019
close all;
clear all;
outputVars=[];


for kk=1:45
    close all;
    clearvars -except kk outputVars
    if kk==1
        %% 200220_1
        P.datapath = [path to files] '200220';
        P.fileNums = [3];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_1';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==2
        %% 200220_2
        P.datapath = [path to files] '200220';
        P.fileNums = [5];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_2';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 30;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==3
        %% 200220_3
        P.datapath = [path to files] '200220';
        P.fileNums = [9];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_3';
        P.pksThreshold = -0.2; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==4
        %% 200220_4
        P.datapath = [path to files] '200220';
        P.fileNums = [13];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_4';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==5
        %% 200220_5
        P.datapath = [path to files] '200220';
        P.fileNums = [16];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_5';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==6
        %% 200220_6
        P.datapath = [path to files] '200220';
        P.fileNums = [23];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_6';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==7
        %% 200220_7
        P.datapath = [path to files] '200220';
        P.fileNums = [29];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_7';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==8
        %% 200220_8
        P.datapath = [path to files] '200220';
        P.fileNums = [32];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_8';
        P.pksThreshold = -0.01; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==9
        %% 200220_9
        P.datapath = [path to files] '200220';
        P.fileNums = [39];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_9';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==10
        %% 200220_10
        P.datapath = [path to files] '200220';
        P.fileNums = [42];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_10';
        P.pksThreshold = -0.05 ; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==11
        %% 200220_11
        P.datapath = [path to files] '200220';
        P.fileNums = [46];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_11';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==12
        %% 200220_12
        P.datapath = [path to files] '200220';
        P.fileNums = [48];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_12';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==13
        %% 200220_13
        P.datapath = [path to files] '200220';
        P.fileNums = [51];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_13';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==14
        %% 200220_14
        P.datapath = [path to files] '200220';
        P.fileNums = [53];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_14';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==15
        %% 200220_15
        P.datapath = [path to files] '200220';
        P.fileNums = [55];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_15';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==16
        %% 200220_16
        P.datapath = [path to files] '200220';
        P.fileNums = [57];
        P.sweepExclude = [];
        P.fileNamePrefix = '20Feb20 ';
        P.cellID = '200220_16';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==17
        %% 200221_1
        P.datapath = [path to files] '200221';
        P.fileNums = [2];
        P.sweepExclude = [];
        P.fileNamePrefix = '21Feb20 ';
        P.cellID = '200221_1';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 28;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==18
        %% 200221_2
        P.datapath = [path to files] '200221';
        P.fileNums = [3];
        P.sweepExclude = [];
        P.fileNamePrefix = '21Feb20 ';
        P.cellID = '200221_2';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==19
        %% 200221_3
        P.datapath = [path to files] '200221';
        P.fileNums = [12];
        P.sweepExclude = [];
        P.fileNamePrefix = '21Feb20 ';
        P.cellID = '200221_3';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==20
        %% 200221_4
        P.datapath = [path to files] '200221';
        P.fileNums = [15];
        P.sweepExclude = [];
        P.fileNamePrefix = '21Feb20 ';
        P.cellID = '200221_4';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==21
        %% 200221_5
        P.datapath = [path to files] '200221';
        P.fileNums = [17];
        P.sweepExclude = [];
        P.fileNamePrefix = '21Feb20 ';
        P.cellID = '200221_5';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==22
        %% 200221_6
        P.datapath = [path to files] '200221';
        P.fileNums = [19];
        P.sweepExclude = [];
        P.fileNamePrefix = '21Feb20 ';
        P.cellID = '200221_6';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==23
        %% 200224_1
        P.datapath = [path to files] '200224';
        P.fileNums = [2];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_1';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==24
        %% 200224_2
        P.datapath = [path to files] '200224';
        P.fileNums = [4];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_2';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==25
        %% 200224_3
        P.datapath = [path to files] '200224';
        P.fileNums = [6];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_3';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==26
        %% 200224_4
        P.datapath = [path to files] '200224';
        P.fileNums = [8];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_4';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==27
        %% 200224_5
        P.datapath = [path to files] '200224';
        P.fileNums = [10];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_5';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==28
        %% 200224_6
        P.datapath = [path to files] '200224';
        P.fileNums = [12];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_6';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==29
        %% 200224_7
        P.datapath = [path to files] '200224';
        P.fileNums = [14];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_7';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==30
        %% 200224_8
        P.datapath = [path to files] '200224';
        P.fileNums = [16];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_8';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==31
        %% 200224_9
        P.datapath = [path to files] '200224';
        P.fileNums = [19];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_9';
        P.pksThreshold = -0.1; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==32
        %% 200224_10
        P.datapath = [path to files] '200224';
        P.fileNums = [21];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_10';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==33
        %% 200224_11
        P.datapath = [path to files] '200224';
        P.fileNums = [23];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_11';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==34
        %% 200224_12
        P.datapath = [path to files] '200224';
        P.fileNums = [26];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_12';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==35
        %% 200224_13
        P.datapath = [path to files] '200224';
        P.fileNums = [28];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_13';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==36
        %% 200224_14
        P.datapath = [path to files] '200224';
        P.fileNums = [30];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_14';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==37
        %% 200224_15
        P.datapath = [path to files] '200224';
        P.fileNums = [32];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_15';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==38
        %% 200224_16
        P.datapath = [path to files] '200224';
        P.fileNums = [34];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_16';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==39
        %% 200224_17
        P.datapath = [path to files] '200224';
        P.fileNums = [37];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_17';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==40
        %% 200224_18
        P.datapath = [path to files] '200224';
        P.fileNums = [39];
        P.sweepExclude = [];
        P.fileNamePrefix = '24Feb20 ';
        P.cellID = '200224_18';
        P.pksThreshold = -0.05; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==41
        %% 200225_1
        P.datapath = [path to files] '200225';
        P.fileNums = [2];
        P.sweepExclude = [];
        P.fileNamePrefix = '25Feb20 ';
        P.cellID = '200225_1';
        P.pksThreshold = -0.03; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==42
        %% 200225_2
        P.datapath = [path to files] '200225';
        P.fileNums = [4];
        P.sweepExclude = [];
        P.fileNamePrefix = '25Feb20 ';
        P.cellID = '200225_2';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==43
        %% 200225_3
        P.datapath = [path to files] '200225';
        P.fileNums = [8];
        P.sweepExclude = [];
        P.fileNamePrefix = '25Feb20 ';
        P.cellID = '200225_3';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==44
        %% 200225_4
        P.datapath = [path to files] '200225';
        P.fileNums = [10];
        P.sweepExclude = [];
        P.fileNamePrefix = '25Feb20 ';
        P.cellID = '200225_4';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform

    elseif kk==45
        %% 200225_5
        P.datapath = [path to files] '200225';
        P.fileNums = [12];
        P.sweepExclude = [];
        P.fileNamePrefix = '25Feb20 ';
        P.cellID = '200225_5';
        P.pksThreshold = -0.02; % intracellular diff
        P.side = 1; % 1=left hemisphere, 2=right hemisphere
        P.numReps = 50;
        P.wavelength = 470;
        P.spikeDetMode=2; %1=upward going waveform, 2=downward going waveform


    end


    %% Parameters definition
    spkpause=0; % 1 for pausing for checking spikes
    P.stimOrder = [4]; %Right, left, both, opto
    P.trialDur = 0.1; % trial length in sec
    P.medianFiltWindow = 0.01; % window median filter
    P.filtCutLow = 100; %low cut frequency in Hz
    P.filtOrder = 1; %Order of the filter
    P.cutoff  =   500;  % gaussian filter cutoff
    P.TTLThreshold = 0.025;
    cd(P.datapath)
    if length(P.fileNums)<6
        P.wavelength470_list = [1.4];
        P.wavelength590_list = [0.6];
    elseif length(P.fileNums)==6
        P.wavelength470_list = [6.94 4.75 3.36 1.60 0.80 6.94];
        P.wavelength590_list = [2.45 1.73 1.17 0.50 0.23 2.45];
    end
    %
    % if P.wavelengthlist==2
    %         P.wavelength470_list = [6.94 4.75 3.36 1.60 0.80 0.15];
    % end

    P.outputpath = [path to output folder] P.cellID];
    try
        cd(P.outputpath)
    catch
        mkdir([path to output folder] P.cellID]);
    end
    cd(P.datapath)
    P.fs=20000;
    P.maxFrameDiff = 0.015;% Maximum allowed difference between start stimuli for binocular stimulation

    %% Load the data
    for xx=1:length(P.fileNums)
        cd(P.datapath)
        % set correct filename
        if P.fileNums(xx)<10
            P.fileName = [P.fileNamePrefix '00' num2str(P.fileNums(xx))];
        elseif P.fileNums(xx)>=10 && P.fileNums(xx)<100
            P.fileName = [P.fileNamePrefix '0' num2str(P.fileNums(xx))];
        elseif P.fileNums(xx)>100
            P.fileName = [P.fileNamePrefix num2str(P.fileNums(xx))];
        end

        % Import the data
        [D.stimData,D.timestamps,D.metaData]=importaxo([P.fileName '.axgd']); % actually import the data
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
        D.OptoTTLData = [];
        for jj=2:5:P.numStim
            D.OptoTTLData = [D.OptoTTLData D.stimData{jj}];
        end
        D.OptoTTLData= gfilt(D.OptoTTLData',D.metaData.fs,9.3695e-05);

        %
        % for jj=4:4:P.numStim
        %     D.PTBoutputData = [D.PTBoutputData D.stimData{jj}];
        % end
        % D.PTBoutputData= gfilt(D.PTBoutputData',D.metaData.fs,9.3695e-05);

        % Calculate baseline parameters. Detect where the TTL signal increases
        % >3*SD of baseline
        P.OptoTTLProps.mean = mean(D.OptoTTLData(1:2*10^4));
        P.OptoTTLProps.SD = std(D.OptoTTLData(1:2*10^4));
        % P.OptoTTLProps.threshold = (3*P.OptoTTLProps.SD)+P.OptoTTLProps.mean;
        if P.wavelength==470
            P.OptoTTLProps.threshold = 1;
        elseif P.wavelength==590
            P.OptoTTLProps.threshold = 0.1;
        end

        idx=[];
        P.OptoTTLProps.locs=[];
        try
            for ii=1:(size(P.stimOrder,2)*P.numReps)
                if isempty(idx)==1
                    idx = D.OptoTTLData;
                else
                    idx(1:(P.OptoTTLProps.locs(ii-1)+(2*D.metaData.fs))) = 0;
                end
                [P.OptoTTLProps.locs(ii)] = find(idx>P.OptoTTLProps.threshold,1,'first');
            end
        end

        %% Gather the trialdata
        D.trialID = repmat(P.stimOrder,1,P.numReps);
        D.trial_timestamps = []; %500ms baseline - 100ms opto - 1.4 s after
        D.trialdata_opto=[];
        count_opto=0;
        idx=[];
        idxPadded=[];
        P.screenJitter = [];

        % Calculate the trial_timestamps
        for ii = 1:length(D.trialID)
            if D.trialID(ii)==4
                count_opto=count_opto+1;
                D.trial_timestamps = [D.trial_timestamps P.OptoTTLProps.locs(count_opto)-(0.5*D.metaData.fs)];
            end
        end

        %Exclude trials if necessary
        if numel(P.sweepExclude)>0
            D.trialID((P.sweepExclude*length(P.stimOrder))+1:end) = [];
            D.trial_timestamps((P.sweepExclude*length(P.stimOrder))+1:end) = [];
        end

        D.plotXaxis = [-0.5:(1/P.fs):1.5-(1/P.fs)];


        %% Spike analysis
        %Gather the spikedata per trial

        Spk.spktimes_opto={};
        idx=[];
        count_opto = 0;
        for ii = 1:length(D.trialID)
            if D.trialID(ii)==4
                count_opto=count_opto+1;
                idx=[D.trial_timestamps(ii) D.trial_timestamps(ii)+(P.trialDur*D.metaData.fs)+(1.9*D.metaData.fs)];
                Spk.spktimes_opto{count_opto}=((D.locs(D.locs>idx(1)&D.locs<idx(2))-D.trial_timestamps(ii))/D.metaData.fs)-0.5;
            end
        end

        % Make PSTH
        count_opto = 0;
        if xx==1
            fig(5) = figure; hold on;
        else
            figure(fig(5))
        end
        for ii=1:length(D.trialID)
            if D.trialID(ii)==4
                count_opto=count_opto+1;
                subplot(length(P.fileNums),1,xx);
                plot(Spk.spktimes_opto{count_opto},repmat(count_opto,numel(Spk.spktimes_opto{count_opto}),1),'k.');hold on;
            end
        end
        % Adjust the Yaxis of PSTH to fit #trials
        ylim([0 size(Spk.spktimes_opto,2)]);set(gca,'FontSize',14)

        %% Calculate KDE
        [Spk.kde_opto(xx,:),Spk.kde_opto_X(xx,:)]= gauss_kde(Spk.spktimes_opto,[-0.5 max(D.plotXaxis)]);
        [Spk.kde_opto_5ms(xx,:),Spk.kde_opto_X_5ms(xx,:)]= gauss_kde_5ms(Spk.spktimes_opto,[-0.5 max(D.plotXaxis)]);

        %% Plot/adjust subplots
        % ipsilateral
        subplot(length(P.fileNums),1,xx);
        if P.wavelength==470
            title(sprintf('%.2f mW',P.wavelength470_list(xx)),'FontSize',20);
        elseif P.wavelength==590
            title(sprintf('%.2f mW',P.wavelength590_list(xx)),'FontSize',20);
        end
        % ylim([0 P.numReps]);set(gca,'FontSize',14)
        ylabel('Trials','fontSize',16); xlabel('Time (sec)','fontSize',16)
        line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
        line([0.1 0.1],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
        yyaxis right
        if P.wavelength==470
            if xx<6
                plot(Spk.kde_opto_X(xx,:),Spk.kde_opto(xx,:),'b','LineWidth',2); ylim([0 max([Spk.kde_opto(xx,:)])]); ylabel('FF (Hz)')
            elseif xx==6 && P.wavelengthlist==2
                plot(Spk.kde_opto_X(xx,:),Spk.kde_opto(xx,:),'b','LineWidth',2); ylim([0 max([Spk.kde_opto(xx,:)])]); ylabel('FF (Hz)')
            elseif xx==6
                plot(Spk.kde_opto_X(xx,:),Spk.kde_opto(xx,:),'g','LineWidth',2); ylim([0 max([Spk.kde_opto(xx,:)])]); ylabel('FF (Hz)')
            end
        elseif P.wavelength==590
            if xx<6
                plot(Spk.kde_opto_X(xx,:),Spk.kde_opto(xx,:),'r','LineWidth',2); ylim([0 max([Spk.kde_opto(xx,:)])]); ylabel('FF (Hz)')
            elseif xx==6
                plot(Spk.kde_opto_X(xx,:),Spk.kde_opto(xx,:),'g','LineWidth',2); ylim([0 max([Spk.kde_opto(xx,:)])]); ylabel('FF (Hz)')
            end
        end




        %%  Detect significant responses
        Spkstats=[];
        %3x SD of baseline
        Spkstats.opto_resp_3 = [];

        if sum(Spk.kde_opto(501:550)>(mean(Spk.kde_opto(1:450))+3*std(Spk.kde_opto(1:450))))>0
            Spkstats.opto_resp_3(1)=1;
        else
            Spkstats.opto_resp_3(1)=0;
        end
        if sum(Spk.kde_opto(501:550)<(mean(Spk.kde_opto(1:450))-3*std(Spk.kde_opto(1:450))))>0
            Spkstats.opto_resp_3(2)=2;
        else
            Spkstats.opto_resp_3(2)=0;
        end


        Spkstats.peakamp=max(Spk.kde_opto(Spk.kde_opto_X>0&Spk.kde_opto_X<0.2));

        for ii = 1:size(Spk.spktimes_opto,2)
            try
                Spkstats.latency_opto_list(ii)=Spk.spktimes_opto{ii}(find(Spk.spktimes_opto{ii}>0,1));
            catch
                Spkstats.latency_opto_list(ii)=NaN;
            end

        end

        Spkstats.latency_opto_list = Spkstats.latency_opto_list(Spkstats.latency_opto_list<0.2);
        Spkstats.latency_opto = median(Spkstats.latency_opto_list);

        %% Spontaneous parameters
        Spont.dur=0;
        Spont.baselineData=[];
        % Spont.ISI=[];
        for ii=1:P.numReps
            try
                Spont.baselineData=[Spont.baselineData reshape(Spk.spktimes_opto{ii}(Spk.spktimes_opto{ii}<0),1,[])];
                Spont.dur=Spont.dur+0.5;
                Spont.ISI = [Spont.ISI reshape(diff(Spk.spktimes_opto{ii}(Spk.spktimes_opto{ii}<0)),1,[])];
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


        Spont.FF(xx) = size(Spont.baselineData,2)/Spont.dur;

        Spkstats.outputVars(kk,:) = [Spkstats.opto_resp_3 Spkstats.peakamp Spkstats.latency_opto Spont.FF];
        outputVars(kk,:) = [Spkstats.opto_resp_3 Spkstats.peakamp Spkstats.latency_opto Spont.FF];

        %% Save figure/data

        cd(P.outputpath)
        close(fig(1))
        savename = sprintf('OptoOnly_data_%s_%s.mat',num2str(xx),P.fileName);
        save(savename,'D','P','Spk','Spkstats');

    end

    figure(fig(5));
    figname = sprintf('PSTH_allIntensities.fig');
    saveas(gcf,figname,'fig');
    figname = sprintf('PSTH_allIntensities.pdf');
    print('-dpdf','-painters','-loose','-fillpage',figname);
end