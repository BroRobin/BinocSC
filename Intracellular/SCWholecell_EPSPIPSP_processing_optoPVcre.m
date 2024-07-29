clear all;
% close all;

analyse = 3%1=ipsi+opto, 2=contra+opto, 3=both+opto
path=(''); %Path to data files
cd(path)

if analyse ==1

    Filenames = {'11Feb21 016_G2_ipsi+opto_masked_baselined_5msMdnfilt.axgx'
        '17Feb21 016+017_G2_masked_baselined_5msMdnfilt.axgx'
        '24Nov21 010 and 011_G2_masked_filt_basel.axgx'
        '01Mar22 013_G2_masked_mdnfilt_basel.axgx'
        '03Mar22 007_G2_masked_mdnfilt_basel.axgx'
        '11Nov21 016_G2_masked_filt_basel.axgx'
        '03Mar22 016_G2_masked_mdnfilt_basel.axgx'
        '11Nov21 007 Copy_G2_masked_filt_basel.axgx'
        '24Nov21 005 Copy_G2_masked_filt_basel.axgx'
        '05Apr22 004 Copy_G2_masked_filt-basel.axgx'
        '05Apr22 011 Copy_G2_masked_filt-basel.axgx'
        '13Apr22 008 Copy_G2_masked_filt-basel.axgx'};

    MaskedEpisodes = {[NaN]
        [NaN]
        [NaN]
        [NaN]
        [10 38 47 48]
        [NaN]
        [31]
        [18 31 41 45]
        [13 23 27 33 40 44]
        [8 9 18 33 34]
        [NaN]
        [26]};

elseif analyse ==2

    Filenames = {'11Feb21 016_G4_masked_baselined_5msMdnfilt.axgx'
        '17Feb21 016+017_G4_masked_baselined_5msMdnFilt.axgx'
        '24Nov21 010 and 011_G4_masked_filt_basel.axgx'
        '01Mar22 013_G4_masked_mdnfilt_basel.axgx'
        '03Mar22 007_G4_masked_mdnfilt_basel.axgx'
        '11Nov21 016_G4_masked_filt_basel.axgx'
        '03Mar22 016_G4_masked_filt_basel.axgx'
        '11Nov21 007 Copy_G4_masked_filt_basel.axgx'
        '24Nov21 005 Copy_G4_masked_filt_basel.axgx'
        '05Apr22 004 Copy_G4_masked_filt-basel.axgx'
        '05Apr22 011 Copy_G4_masked_filt-basel.axgx'
        '13Apr22 008 Copy_G4_masked_filt-basel.axgx'};

    MaskedEpisodes = {[NaN]
        [NaN]
        [NaN]
        [NaN]
        [9 17]
        [4 8 10 11 13:15 18:22 24:29 31:35 37 39:44 47:48]
        [35 43]
        [NaN]
        [1 9 11 13 15 32 42]
        [5 6 34]
        [NaN]
        [NaN]};

elseif analyse ==3

    Filenames = {'11Feb21 016_G6_bilat+opto_masked_baselined_5msMdnfilt.axgx'
        '17Feb21 016+017_G6_masked_baselined_5msMdnFilt.axgx'
        '24Nov21 010 and 011_G6_masked_filt_basel.axgx'
        '01Mar22 013_G6_masked_mdnfilt_basel.axgx'
        '03Mar22 007_G6_masked_mdnfilt_basel.axgx'
        '11Nov21 016_G6_masked_filt_basel.axgx'
        '03Mar22 016_G6_masked_filt_basel.axgx'
        '11Nov21 007 Copy_G6_masked_filt_basel.axgx'
        '24Nov21 005 Copy_G6_masked_filt_basel.axgx'
        '05Apr22 004 Copy_G6_masked_filt-basel.axgx'
        '05Apr22 011 Copy_G6_masked_filt-basel.axgx'
        '13Apr22 008 Copy_G6_masked_filt-basel.axgx'};

    MaskedEpisodes = {[NaN]
        [NaN]
        [NaN]
        [NaN]
        [5:6 8:9 11 20 26 41 46]
        [6:10 13:30 36:50]
        [21 33 36 44]
        [15 32]
        [7 10 12 27 34 41 48]
        [3 10 33:34]
        [NaN]
        [18 25]};

end




A.pos_basel = [NaN(100,size(Filenames,1))];
A.pos = [NaN(100,size(Filenames,1))];
A.neg_basel = [NaN(100,size(Filenames,1))];
A.neg = [NaN(100,size(Filenames,1))];

A.absintegral_basel = [NaN(100,size(Filenames,1))];
A.absintegral = [NaN(100,size(Filenames,1))];


A.Xpos_basel = [NaN(100,size(Filenames,1))];
A.Xpos = [NaN(100,size(Filenames,1))];
A.Xneg_basel = [NaN(100,size(Filenames,1))];
A.Xneg = [NaN(100,size(Filenames,1))];

A.ROCresult_pos= [NaN(size(Filenames,1),2)];
A.ROCresult_neg= [NaN(size(Filenames,1),2)];

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
        [A.pos_basel(kk,ii) A.Xpos_basel(kk,ii)]= nanmax(D.stimData{kk}(0.824*D.metaData.fs:0.999*D.metaData.fs));
        A.Xpos_basel(kk,ii) = ((A.Xpos_basel(kk,ii)/D.metaData.fs)+(0.824));
        [A.pos(kk,ii) A.Xpos(kk,ii)] = nanmax(D.stimData{kk}(1.025*D.metaData.fs:1.2*D.metaData.fs));
        A.Xpos(kk,ii) = ((A.Xpos(kk,ii)/D.metaData.fs)+(1.025));

        [A.neg_basel(kk,ii) A.Xneg_basel(kk,ii)]= nanmin(D.stimData{kk}(0.824*D.metaData.fs:0.999*D.metaData.fs));
        A.Xneg_basel(kk,ii) = ((A.Xneg_basel(kk,ii)/D.metaData.fs)+(0.824));
        [A.neg(kk,ii) A.Xneg(kk,ii)] = nanmin(D.stimData{kk}(1.025*D.metaData.fs:1.2*D.metaData.fs));
        A.Xneg(kk,ii) = ((A.Xneg(kk,ii)/D.metaData.fs)+(1.025));

        A.absintegral_basel(kk,ii) = sum(abs(D.stimData{kk}(0.824*D.metaData.fs:0.999*D.metaData.fs)));
        A.absintegral(kk,ii) = sum(abs(D.stimData{kk}(1.025*D.metaData.fs:1.2*D.metaData.fs)));


        % plot(D.stimData{kk}(0.9*D.metaData.fs:1.2*D.metaData.fs));
    end

    %% Perform ROC analysis - EPSP
    % positive (vs baseline)
    % figure; hold on; plot(A.pos_basel(isnan(A.pos_basel(:,ii))==0,ii),'k'); plot(A.pos(isnan(A.pos(:,ii))==0,ii),'r');
    [lightFA,lightHit,lightAUROC] = calcAUROC_EPSP(A.pos_basel(isnan(A.pos_basel(:,ii))==0,ii),A.pos(isnan(A.pos(:,ii))==0,ii));

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
        tempshuffle = Shuffle([A.pos_basel(isnan(A.pos_basel(:,ii))==0,ii) A.pos(isnan(A.pos(:,ii))==0,ii)]);
        SAcountsShuffle{s} = tempshuffle (1:2:end);
        lightCountsShuffle{s} = tempshuffle (2:2:end);

        clear lightFAShuffle lightHitShuffle lightAUROCShuffle
        [lightFAShuffle,lightHitShuffle,lightAUROCShuffle] = calcAUROC_EPSP(SAcountsShuffle{s},lightCountsShuffle{s});
        allLightAUROCShuffle(s)  =   lightAUROCShuffle;
    end
    % Test the significance
    diffRealShuffle = allLightAUROCShuffle - lightAUROC; % Get difference between observed and shuffled ROC
    significanceLightEnhancement_left = sum(diffRealShuffle>0)/nShuffles; % Find fraction of shuffled greater than observed
    significanceLightDepression_left = sum(diffRealShuffle<0)/nShuffles; % Find fraction of shuffled greater than observed
    close(gcf);

    A.ROCresult_pos(ii,1)=significanceLightEnhancement_left;
    if significanceLightEnhancement_left<0.05;
        A.ROCresult_pos(ii,2)=1;
    elseif significanceLightEnhancement_left>=0.05;
        A.ROCresult_pos(ii,2)=0;
    end

    %% Perform ROC analysis - IPSP
    % negitive (vs baseline)
    % figure; hold on; plot(A.neg_basel(isnan(A.neg_basel(:,ii))==0,ii),'k'); plot(A.neg(isnan(A.neg(:,ii))==0,ii),'r');
    [lightFA,lightHit,lightAUROC] = calcAUROC_EPSP(A.neg_basel(isnan(A.neg_basel(:,ii))==0,ii),A.neg(isnan(A.neg(:,ii))==0,ii));

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
        tempshuffle = Shuffle([A.neg_basel(isnan(A.neg_basel(:,ii))==0,ii) A.neg(isnan(A.neg(:,ii))==0,ii)]);
        SAcountsShuffle{s} = tempshuffle (1:2:end);
        lightCountsShuffle{s} = tempshuffle (2:2:end);

        clear lightFAShuffle lightHitShuffle lightAUROCShuffle
        [lightFAShuffle,lightHitShuffle,lightAUROCShuffle] = calcAUROC_EPSP(SAcountsShuffle{s},lightCountsShuffle{s});
        allLightAUROCShuffle(s)  =   lightAUROCShuffle;
    end
    % Test the significance
    diffRealShuffle = allLightAUROCShuffle - lightAUROC; % Get difference between observed and shuffled ROC
    significanceLightEnhancement_left = sum(diffRealShuffle>0)/nShuffles; % Find fraction of shuffled greater than observed
    significanceLightDepression_left = sum(diffRealShuffle<0)/nShuffles; % Find fraction of shuffled greater than observed
    close(gcf);

    A.ROCresult_neg(ii,1)=significanceLightDepression_left;
    if significanceLightDepression_left<0.05
        A.ROCresult_neg(ii,2)=1;
    elseif significanceLightDepression_left>=0.05
        A.ROCresult_neg(ii,2)=0;
    end
end

%% Calculate Averages

% positive abs integral
A.mean_abs_integral = nanmean(A.absintegral);
A.std_abs_integral = nanstd(A.absintegral);
for ii=1:length(A.mean_abs_integral)
    A.sem_abs_integral(ii) = A.std_abs_integral(ii)/sqrt(sum(isnan(A.absintegral(:,ii))==0));
end
A.median_abs_integral = nanmedian(A.absintegral);

% positive abs integral
A.mean_abs_integral_basel = nanmean(A.absintegral_basel);
A.std_abs_integral_basel = nanstd(A.absintegral_basel);
for ii=1:length(A.mean_abs_integral_basel)
    A.sem_abs_integral_basel(ii) = A.std_abs_integral_basel(ii)/sqrt(sum(isnan(A.absintegral_basel(:,ii))==0));
end
A.median_abs_integral_basel = nanmedian(A.absintegral_basel);

% positive
A.mean_pos = nanmean(A.pos);
A.std_pos = nanstd(A.pos);
for ii=1:length(A.mean_pos)
    A.sem_pos(ii) = A.std_pos(ii)/sqrt(sum(isnan(A.pos(:,ii))==0));
end
A.median_pos = nanmedian(A.pos);

% positive baseline
A.mean_pos_basel = nanmean(A.pos_basel);
A.std_pos_basel = nanstd(A.pos_basel);
for ii=1:length(A.mean_pos_basel)
    A.sem_pos_basel(ii) = A.std_pos_basel(ii)/sqrt(sum(isnan(A.pos_basel(:,ii))==0));
end
A.median_pos_basel = nanmedian(A.pos_basel);


% negative
A.mean_neg = nanmean(A.neg);
A.std_neg = nanstd(A.neg);
for ii=1:length(A.mean_neg)
    A.sem_neg(ii) = A.std_neg(ii)/sqrt(sum(isnan(A.neg(:,ii))==0));
end
A.median_neg = nanmedian(A.neg);

% negative baseline
A.mean_neg_basel = nanmean(A.neg_basel);
A.std_neg_basel = nanstd(A.neg_basel);
for ii=1:length(A.mean_neg_basel)
    A.sem_neg_basel(ii) = A.std_neg_basel(ii)/sqrt(sum(isnan(A.neg_basel(:,ii))==0));
end
A.median_neg_basel = nanmedian(A.neg_basel);

%% Average time of peak

% positive
A.mean_Xpos = nanmean(A.Xpos);
A.std_Xpos = nanstd(A.Xpos);
for ii=1:length(A.mean_Xpos)
    A.sem_Xpos(ii) = A.std_Xpos(ii)/sqrt(sum(isnan(A.Xpos(:,ii))==0));
end
A.median_Xpos = nanmedian(A.Xpos);

% negative
A.mean_Xneg = nanmean(A.Xneg);
A.std_Xneg = nanstd(A.Xneg);
for ii=1:length(A.mean_Xneg)
    A.sem_Xneg(ii) = A.std_Xneg(ii)/sqrt(sum(isnan(A.Xneg(:,ii))==0));
end
A.median_Xneg = nanmedian(A.Xneg);

%% output
excel = [A.mean_pos'*1000 A.sem_pos'*1000 A.median_pos'*1000 A.mean_neg'*1000 A.sem_neg'*1000 A.median_neg'*1000 (A.mean_Xpos'-1)*1000 (A.sem_Xpos')*1000 (A.median_Xpos'-1)*1000 (A.mean_Xneg'-1)*1000 (A.sem_Xneg')*1000 (A.median_Xneg'-1)*1000 A.mean_abs_integral' A.median_abs_integral'];

