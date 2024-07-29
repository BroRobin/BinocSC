%% PSP onset calculation

clear all;
% close all;

analyse = 2%1=Contra, 2=ipsi, 3=binoc
path=(''); % Path to data files
cd(path)

if analyse ==1

    Filenames = {'11Feb21 016_G1_contra_masked_baselined_5msMdnfilt.axgx'
        '17Feb21 016+017_G1_masked_baselined_5msMdnfilt.axgx'
        '24Nov21 010 and 011_G1_masked_filt_basel.axgx'
        '01Mar22 013_G1_masked_mdnfilt_basel.axgx'
        '03Mar22 007_G1_masked_mdnfilt_basel.axgx'
        '11Nov21 016_G1_masked_filt_basel.axgx'
        '03Mar22 016_G1_masked_mdnfilt_basel.axgx'
        '11Feb21 009_G1_masked_mdnfilt_basel.axgx'
        '02Nov21 019 Copy_G1_masked_filt_basel.axgx'
        '11Nov21 007 Copy_G1_masked_filt_basel.axgx'
        '11Nov21 023_G1_masked_filt_basel.axgx'
        '18Nov21 006 Copy_G1_masked_filt_basel.axgx'
        '24Nov21 005 Copy_G1_masked_filt_basel.axgx'
        '25Nov21 006 Copy_G1_masked_filt_basel.axgx'
        '29Nov21 006 Copy_G1_masked_filt_basel.axgx'
        '29Nov21 011 Copy_G1_masked_filt_basel.axgx'
        '02Mar22 007_G1_masked_filt_basel.axgx'
        '02Mar22 013_G1_masked_filt_basel.axgx'
        '02Nov21 009_G1_masked_filt_basel.axgx'
        '01Mar22 008_G1+masked_filt_basel.axgx'
        '20Oct21 007_G1_masked_filt_basel.axgx'
        '30Nov21 005 Copy_G1_masked_filt_basel.axgx'
        '29Sep21 012_G1_masked_filt_basel.axgx'
        '11Mar22 013 Copy_G1_masked_filt_basel.axgx'
        '10Jun21 008_G1_masked_filt_basel.axgx'
        '14Sep21 005_G1_MASKED_filt_basel.axgx'
        '14Sep21 012_G1_masked_filt_basel.axgx'
        '15Sep21 008_G1_masked_filt_basel.axgx'
        '15Sep21 014_G1_masked_filt_basel.axgx'
        '15Sep21 020_G1_masked_filt_basel.axgx'
        '16Feb22 002 Copy_G1_masked_filt_basel.axgx'
        '16Feb22 007 Copy_G1_masked_filt_basel.axgx'
        '18Feb22 005_G1_masked_filt_basel.axgx'
        '15Oct21 009_G1_masked_filt_basel.axtx.axgx'
        '11Mar22 007 Copy_G1_masked_filt_basel.axgx'
        '15Sep21 004_G1_masked_filt_basel.axgx'
        '15Jun21 004_G1_masked_filt_basel.axgx'
        '29Sep21 007_allgroups_filt_basel.axgx'
        '20220317 005 Copy_G1_masked_filt_basel.axgx'
        '20220317 012 Copy_G1_masked_filt_basel.axgx'
        '05Apr22 004 Copy_G1_masked_filt-basel.axgx'
        '05Apr22 011 Copy_G1_masked_filt-basel.axgx'
        '11Apr22 006 Copy_G1_masked_filt-basel.axgx'
        '13Apr22 008 Copy_G1_masked_filt-basel.axgx'
        '13Apr22 017 Copy_G1_masked_filt-basel.axgx'};

    MaskedEpisodes = {[1:3 13:14 17:19 26 29 35:36 40:42 45 49]
        [1 17 20:22 24:26 28:29 33:34 38:40 42 47 51 54 57 63 66 71 74]
        [8 11:12 14 19 21]
        [1 14 16 32:33 36:37 49]
        [2 23 36:37]
        [6 8:9 13:17 19 21 23 26:29 31:32 34 36:37 39:47 49:50]
        [NaN]
        [7 10]
        [NaN]
        [NaN]
        [12 33 35 42]
        [NaN]
        [6:7 11 22 25:26 29 35 39 46]
        [16:18]
        [14:16]
        [6:11 18 27 30 32 34]
        [1:2 5 7 10 12:15 17:22 25:26 29:47 49:50]
        [1 4 10:11 26 45 48:49]
        [19 42 50]
        [4 8 13:14 18 21 23 26 30 33 40 46]
        [33:34 44 53 61 66 69:70 74]
        [20:21 24:25 27 30:31 38 40 42:45 47:48 50]
        [22 50 66]
        [63]
        [1 3 6:11 15 18 20 23]
        [36 39 67 72]
        [1 3 5:6 8:15 17:21 24:25 27 29 32:38 41:46 48:50 53:54 57 59 61 63:65 67 69:71 75]
        [NaN]
        [1:4 6 8 14:20 22:23 25:29 34:35 38 40:44 47:52 54:62 64:66 68 70 72 74:75]
        [25 55 60:63]
        [9:10 22:25 27 30 40:42 50 59 64 66:69]
        [2 10 19 21 38 67]
        [NaN]
        [6:9 11:30 32:45]
        [23 26:27 29 31 33:37 39:41 44:50 54 58 61 64:65]
        [9 11:16]
        [NaN]
        [NaN]
        [NaN]
        [15 19]
        [5 7 33 35]
        [NaN]
        [NaN]
        [NaN]
        [13 22]};

elseif analyse ==2

    Filenames = {'11Feb21 016_G5_masked_baselined_5msMdnfilt.axgx'
        '17Feb21 016+017_G5_masked_baselined_5msMdnfilt.axgx'
        '24Nov21 010 and 011_G5_masked_filt_basel.axgx'
        '01Mar22 013_G5_masked_mdnfilt_basel.axgx'
        '03Mar22 007_G5_masked_mdnfilt_basel.axgx'
        '11Nov21 016_G5_masked_filt_basel.axgx'
        '03Mar22 016_G5_masked_mdnfilt_basel.axgx'
        '11Feb21 009_G5_masked_mdnfilt_basel.axgx'
        '02Nov21 019 Copy_G2_masked_filt_basel.axgx'
        '11Nov21 007 Copy_G5_masked_filt_basel.axgx'
        '11Nov21 023_G5_masked_filt_basel.axgx'
        '18Nov21 006 Copy_G5_masked_filt_basel.axgx'
        '24Nov21 005 Copy_G5_masked_filt_basel.axgx'
        '25Nov21 006 Copy_G5_masked_filt_basel.axgx'
        '29Nov21 006 Copy_G5_masked_filt_basel.axgx'
        '29Nov21 011 Copy_G5_masked_filt_basel.axgx'
        '02Mar22 007_G5_masked_filt-basel.axgx'
        '02Mar22 013_G5_masked_filt_basel.axgx'
        '02Nov21 009_G2_masked_filt_basel.axgx'
        '01Mar22 008_G5_masked_filt_basel.axgx'
        '20Oct21 007_G2_masked_filt_basel.axgx'
        '30Nov21 005 Copy_G2_masked_filt_basel.axgx'
        '29Sep21 012_G2_masked_filt_basel.axgx'
        '11Mar22 013 Copy_G2_masked_filt_basel.axgx'
        '10Jun21 008_G2_masked_filt_basel.axgx'
        '14Sep21 005_G2_masked_filt_basel.axgx'
        '14Sep21 012_G2_masked_filt_basel.axgx'
        '15Sep21 008_G2_masked_filt_basel.axgx'
        '15Sep21 014_G2_masked_filt_basel.axgx'
        '15Sep21 020_G2_masked_filt_basel.axgx'
        '16Feb22 002 Copy_G2_masked_filt_basel.axgx'
        '16Feb22 007 Copy_G2_masked_filt_basel.axgx'
        '18Feb22 005_G2_masked_filt_basel.axgx'
        '15Oct21 009_G2_masked_filt_basel.axgx'
        '11Mar22 007 Copy_G2_masked_filt_basel.axgx'
        '15Sep21 004_G2_masked_filt_basel.axgx'
        '15Jun21 004_G2_masked_filt_basel.axgx'
        '29Sep21 007_G2_filt_basel.axgx'
        '20220317 005 Copy_G2_masked_filt_basel.axgx'
        '20220317 012 Copy_G2_masked_filt_basel.axgx'
        '05Apr22 004 Copy_G5_masked_filt-basel.axgx'
        '05Apr22 011 Copy_G5_masked_filt-basel.axgx'
        '11Apr22 006 Copy_G5_masked_filt-basel.axgx'
        '13Apr22 008 Copy_G5_masked_filt-basel.axgx'
        '13Apr22 017 Copy_G5_masked_filt-basel.axgx'};

    MaskedEpisodes = {[1 6 10 15:17 19 24 26:27 31 38 40:41 47:48]
        [1 4:8 10 12 15 20 24:27 29 33 35:36 43:45 47 50:52 54 56:59 64 66 68 70 74]
        [9:11 18:19]
        [3 7 20 28 37 41 44 50]
        [4 6 9 11:12 25 27 34 38 47]
        [NaN]
        [38]
        [3 8 10]
        [NaN]
        [32 34]
        [12 26 36:37 40:41 47]
        [26]
        [6 10 14 22 25 27 29 35 42]
        [16:17]
        [14:16]
        [NaN]
        [8 12 16:18 23 27 34 37:38 44 49:50]
        [6 11:12 14 17 19 34 39:40 46:47 50]
        [9 28:30 46 50]
        [3:6 9 13 18:22 26:30 35 37:38 46:50]
        [22 34 40 42 50 54 56:57 61 64:66 72:73]
        [27]
        [NaN]
        [61]
        [NaN]
        [2 9 22:24 26:27 35 46 48 56 60 63 66 73 75]
        [1 6 33 75]
        [9 29]
        [6 15:16 30 32 34:35 40 49 59:60 63 65 70]
        [NaN]
        [17 24 32 51 56 59:60 62 64 66:69]
        [20 29 31 54 66 74]
        [33]
        [2 4 8 12 18 20 25 27 33 41:45]
        [31 35 38 40 42:43 46:47 49:50 60 64:66]
        [10:15]
        [NaN]
        [NaN]
        [NaN]
        [17]
        [2 5 8 34]
        [NaN]
        [NaN]
        [3 5]
        [4 16:17 21 26:27]};

elseif analyse ==3

    Filenames = {'11Feb21 016_G3_bilat_masked_baselined_5msMdnfilt.axgx'
        '17Feb21 016+017_G3_masked_baselined_5msMdnfilt.axgx'
        '24Nov21 010 and 011_G3_masked_filt_basel.axgx'
        '01Mar22 013_G3_masked_mdnfilt_basel.axgx'
        '03Mar22 007_G3_masked_mdnfilt_basel.axgx'
        '11Nov21 016_G3_masked_filt_basel.axgx'
        '03Mar22 016_G3_masked_filt_basel.axgx'
        '11Feb21 009_G3_masked_mdnfilt_basel.axgx'
        'NaN'
        '11Nov21 007 Copy_G3_masked_filt_basel.axgx'
        '11Nov21 023_G3_masked_filt_basel.axgx'
        '18Nov21 006 Copy_G3_masked_filt_basel.axgx'
        '24Nov21 005 Copy_G3_masked_filt_basel.axgx'
        '25Nov21 006 Copy_G3_masked_filt_basel.axgx'
        '29Nov21 006 Copy_G3_masked_filt_basel.axgx'
        '29Nov21 011 Copy_G3_mask_filt_basel.axgx'
        '02Mar22 007_G3_masked_filt_basel.axgx'
        '02Mar22 013_G3_masked_filt_basel.axgx'
        'NaN'
        '01Mar22 008_G3_masked_filt_basel.axgx'
        '20Oct21 007_G3_masked_filt_basel.axgx'
        '30Nov21 005 Copy_G3_masked_filt_basel.axgx'
        '29Sep21 012_G3_masked_filt_basel.axgx'
        '11Mar22 013 Copy_G3_masked_filt_basel.axgx'
        '10Jun21 008_G3_masked_filt_basel.axgx'
        '14Sep21 005_G3_masked_filt_basel.axgx'
        '14Sep21 012_G3_masked_filt_basel.axgx'
        '15Sep21 008_G3_masked_filt_basel.axgx'
        '15Sep21 014_G3_masked_filt_basel.axgx'
        '15Sep21 020_G3_masked_filt_basel.axgx'
        '16Feb22 002 Copy_G3_masked_filt_basel.axgx'
        '16Feb22 007 Copy_G3_masked_filt_basel.axgx'
        '18Feb22 005_G3_masked_filt_basel.axgx'
        '15Oct21 009_G3_masked_filt_basel.axtx.axgx'
        '11Mar22 007 Copy_G3_masked_filt_basel.axgx'
        '15Sep21 004_G3_masked_filt_basel.axgx'
        '15Jun21 004_G3_masked_filt_basel.axgx'
        '29Sep21 007_G3_filt_basel.axgx'
        '20220317 005 Copy_G3_masked_filt_basel.axgx'
        '20220317 012 Copy_G3_masked_filt_basel.axgx'
        '05Apr22 004 Copy_G3_masked_filt-basel.axgx'
        '05Apr22 011 Copy_G3_masked_filt-basel.axgx'
        '11Apr22 006 Copy_G3_masked_filt-basel.axgx'
        '13Apr22 008 Copy_G3_masked_filt-basel.axgx'
        '13Apr22 017 Copy_G3_masked_filt-basel.axgx'};

    MaskedEpisodes = {[1:2 4:5 8 12:13 15 18 21:24 27:28 31 39:40 42:43 46:49]
        [4 14 18:20 28:29 31 43 50 52:53 60 68 70]
        [11:12 18:19]
        [2 5 29:30 36 38:39 48]
        [3 6 17 30]
        [7 9:10 13:14 16:17 19 22 24:27 29:31 35 37:50]
        [10 27 48]
        [5:6 12]
        [NaN]
        [NaN]
        [12 22 26:27 45]
        [NaN]
        [4 7 11 13 16 18 21 24 26 30 34 43:44 50]
        [16:18]
        [10 13:16]
        [5 7:11 14:15 20:21 32:34 39]
        [5:6 11:13 15:20 22 24:33 35:40 42:47 49:50]
        [5:6 8 18 22:23 32 36 44:45 48]
        [NaN]
        [1 4:5 13 20 31 44 48:49]
        [10 14 25 31 48 51 56:59 65 67:68 71:74]
        [5 7 9 14 16 26 29:30 32 38:44 46 48 50]
        [NaN]
        [50]
        [1:4 6:7 9 11:12 15:17 19 21:24]
        [48]
        [NaN]
        [50 66]
        [3:4 6:8 11:12 24 26 29:30 35:36 39:40 43:44 46:48 50:52 56:57 59:62 65:67 73:74]
        [20 25:26 33 38:40 43 46 52:53 56 58:62]
        [8 19:20 25 33:34 40:41 46:47 52 56 58 65 67]
        [11 30 39 55 57:58 62 68 74:75]
        [NaN]
        [5:9 11:16 19:22 24:27 30:44]
        [19 23:24 26 31:32 34 37:44 46:49 55:56 59:60 67 75]
        [6 10:15]
        [NaN]
        [NaN]
        [24 50]
        [9 14]
        [2 4 7 33:34]
        [NaN]
        [20]
        [3]
        [26:27]};

end


A.onset = [NaN(100,size(Filenames,1))];

for ii=1:size(Filenames,1)

    clearvars -except A analyse ii path Filenames MaskedEpisodes
    try
        loadfile= cell2str(Filenames(ii))
        [D.stimData,D.timestamps,D.metaData]=importaxo([path loadfile(3:end-3)]); % actually import the data

        P.numStim = size(D.stimData,1);
        D.metaData.fs = 1/D.metaData.SampInt;
    catch
        ii
        %         pause
        disp('error loading file')
        continue
    end
    % h=figure; hold on;

    %% Filter out the masked trials
    if isnan(MaskedEpisodes{ii}(1))==0
        for xx=1:size(MaskedEpisodes{ii},2)
            D.stimData{MaskedEpisodes{ii}(xx)}(1:length(D.timestamps))= NaN;
        end
    end
    %% Calculate amplitudes for baseline and after stim
    for kk=1:size(D.stimData,1)

        [A.pos(kk,ii) A.Xpos(kk,ii)] = nanmax(D.stimData{kk}(1.025*20000:1.2*20000));
        A.pos(kk,ii)=A.pos(kk,ii)-D.stimData{kk}(1.025*20000);
        A.Xpos(kk,ii) = ((A.Xpos(kk,ii)/D.metaData.fs)+(1.025));


        [A.neg(kk,ii) A.Xneg(kk,ii)] = nanmin(D.stimData{kk}(1.025*20000:1.2*20000));
        A.neg(kk,ii)=A.neg(kk,ii)--D.stimData{kk}(1.025*20000);
        A.Xneg(kk,ii) = ((A.Xneg(kk,ii)/D.metaData.fs)+(1.025));

        idx = D.stimData{kk}(1.025*20000:1.2*20000);
        if abs(A.neg(kk,ii))<abs(A.pos(kk,ii))
            A.onset(kk,ii)= (find(logical(idx>(0.05*A.pos(kk,ii))),1,'first')/D.metaData.fs)*1000;
        elseif abs(A.neg(kk,ii))<abs(A.pos(kk,ii))
            A.onset(kk,ii)= (find(logical(idx<(0.05*A.neg(kk,ii))),1,'first')/D.metaData.fs)*1000;
        end
        if A.onset(kk,ii)==0.05
            A.onset(kk,ii)=NaN;
        end
        A.onset(kk,ii)=A.onset(kk,ii)+25; % correct for dist to start stim
    end
end


%% Calculate averages
A.mean_onset = nanmean(A.onset)';
A.std_onset = nanstd(A.onset)';
for ii=1:length(A.mean_onset)
    A.sem_onset(ii) = A.std_onset(ii)/sqrt(sum(isnan(A.onset(:,ii))==0));
end
A.sem_onset=A.sem_onset';
A.median_onset = nanmedian(A.onset)';

