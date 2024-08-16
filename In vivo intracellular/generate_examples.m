%% Generate example EPSP: 211124_2
close all; clear all;
path=('');

%contra
[D.stimData,D.timestamps,D.metaData]=importaxo([path '24Nov21 010 and 011_G1_masked.axgx']);
MaskedEpisodes = [8 11:12 14 19 20 21];
h(1)=figure; hold on;
% Filter out the masked trials
for xx=1:size(MaskedEpisodes,2)
    D.stimData{MaskedEpisodes(xx)}(1:length(D.timestamps))= NaN;
end
counter = 0;
for ii=1:size(D.stimData,1)
    if counter<15
        ind_trace(ii,:) = D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000));
        plot(D.timestamps-1,D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000)),'Color',[0.5 0.5 0.5]);
    end
    if isnan(D.stimData{ii}(1))==0
        counter = counter+1;
    end
end

[D.stimData,D.timestamps,D.metaData]=importaxo([path '24Nov21 010 and 011_G1_masked_filt_basel Average.axgx']);
plot(D.timestamps-1,D.stimData{1},'k');
xlim([-0.1 0.3]); ylim([-0.01 0.025]);

%ipsi
[D.stimData,D.timestamps,D.metaData]=importaxo([path '24Nov21 010 and 011_G5_masked.axgx']);
MaskedEpisodes = [9:11 18:19];
h(2)=figure; hold on;
% Filter out the masked trials
for xx=1:size(MaskedEpisodes,2)
    D.stimData{MaskedEpisodes(xx)}(1:length(D.timestamps))= NaN;
end
counter = 0;
for ii=1:size(D.stimData,1)
    if counter<15
        ind_trace(ii,:) = D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000));
        plot(D.timestamps-1,D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000)),'Color',[0.5 0.5 0.5]);
    end
    if isnan(D.stimData{ii}(1))==0
        counter = counter+1;
    end
end

[D.stimData,D.timestamps,D.metaData]=importaxo([path '24Nov21 010 and 011_G5_masked_filt_basel Average.axgx']);
plot(D.timestamps-1,D.stimData{1},'k');
xlim([-0.1 0.3]); ylim([-0.01 0.025]);

%both
[D.stimData,D.timestamps,D.metaData]=importaxo([path '24Nov21 010 and 011_G3_masked.axgx']);
MaskedEpisodes = [11:12 18:19];
h(3)=figure; hold on;
% Filter out the masked trials
for xx=1:size(MaskedEpisodes,2)
    D.stimData{MaskedEpisodes(xx)}(1:length(D.timestamps))= NaN;
end
counter = 0;
for ii=1:size(D.stimData,1)
    if counter<15
        ind_trace(ii,:) = D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000));
        plot(D.timestamps-1,D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000)),'Color',[0.5 0.5 0.5]);
    end
    if isnan(D.stimData{ii}(1))==0
        counter = counter+1;
    end
end

[D.stimData,D.timestamps,D.metaData]=importaxo([path '24Nov21 010 and 011_G3_masked_filt_basel Average.axgx']);
plot(D.timestamps-1,D.stimData{1},'k');
xlim([-0.1 0.3]); ylim([-0.01 0.025]);

cd(path)
figure(h(1));
figname = sprintf('EPSPexample_211124_2_contra.fig');
saveas(gcf,figname,'fig');
figname = sprintf('EPSPexample_211124_2_contra.pdf');
print('-dpdf','-painters','-loose',figname);

figure(h(2));
figname = sprintf('EPSPexample_211124_2_ipsi.fig');
saveas(gcf,figname,'fig');
figname = sprintf('EPSPexample_211124_2_ipsi.pdf');
print('-dpdf','-painters','-loose',figname);

figure(h(3));
figname = sprintf('EPSPexample_211124_2_both.fig');
saveas(gcf,figname,'fig');
figname = sprintf('EPSPexample_211124_2_both.pdf');
print('-dpdf','-painters','-loose',figname);



%% Generate example EPSP-IPSP: 211111_2

close all; clear all;
path=('');

%contra
[D.stimData,D.timestamps,D.metaData]=importaxo([path '11Nov21 016_G1_masked.axgx']);
MaskedEpisodes = [6 8:9 13:17 19 21 23 26:29 31:32 34 36:37 39:47 49:50];
h(1)=figure; hold on;
% Filter out the masked trials
for xx=1:size(MaskedEpisodes,2)
    D.stimData{MaskedEpisodes(xx)}(1:length(D.timestamps))= NaN;
end
counter = 0;
for ii=1:size(D.stimData,1)
    if counter<15
        ind_trace(ii,:) = D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000));
        plot(D.timestamps-1,D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000)),'Color',[0.5 0.5 0.5]);
    end
    if isnan(D.stimData{ii}(1))==0
        counter = counter+1;
    end
end

[D.stimData,D.timestamps,D.metaData]=importaxo([path '11Nov21 016_G1_masked_filt_basel Average.axgx']);
plot(D.timestamps-1,D.stimData{1},'k');
xlim([-0.1 0.3]); ylim([-0.01 0.01]);

%ipsi
[D.stimData,D.timestamps,D.metaData]=importaxo([path '11Nov21 016_G5_masked.axgx']);
MaskedEpisodes = [1];
h(2)=figure; hold on;
% Filter out the masked trials
for xx=1:size(MaskedEpisodes,2)
    D.stimData{MaskedEpisodes(xx)}(1:length(D.timestamps))= NaN;
end
counter = 0;
for ii=1:size(D.stimData,1)
    if counter<15
        ind_trace(ii,:) = D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000));
        plot(D.timestamps-1,D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000)),'Color',[0.5 0.5 0.5]);
    end
    if isnan(D.stimData{ii}(1))==0
        counter = counter+1;
    end
end

[D.stimData,D.timestamps,D.metaData]=importaxo([path '11Nov21 016_G5_masked_filt_basel Average.axgx']);
plot(D.timestamps-1,D.stimData{1},'k');
xlim([-0.1 0.3]); ylim([-0.01 0.01]);

%both
[D.stimData,D.timestamps,D.metaData]=importaxo([path '11Nov21 016_G3_masked.axgx']);
MaskedEpisodes = [7 9:10 13:14 16:17 19 22 24:27 29:31 35 37:50];
h(3)=figure; hold on;
% Filter out the masked trials
for xx=1:size(MaskedEpisodes,2)
    D.stimData{MaskedEpisodes(xx)}(1:length(D.timestamps))= NaN;
end
counter = 0;
for ii=1:size(D.stimData,1)
    if counter<15
        ind_trace(ii,:) = D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000));
        plot(D.timestamps-1,D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000)),'Color',[0.5 0.5 0.5]);
    end
    if isnan(D.stimData{ii}(1))==0
        counter = counter+1;
    end
end

[D.stimData,D.timestamps,D.metaData]=importaxo([path '11Nov21 016_G3_masked_filt_basel Average.axgx']);
plot(D.timestamps-1,D.stimData{1},'k');
xlim([-0.1 0.3]); ylim([-0.01 0.01]);

cd(path)
figure(h(1));
figname = sprintf('EPSP-IPSPexample_211111_2_contra.fig');
saveas(gcf,figname,'fig');
figname = sprintf('EPSP-IPSPexample_211111_2_contra.pdf');
print('-dpdf','-painters','-loose',figname);

figure(h(2));
figname = sprintf('EPSP-IPSPexample_211111_2_ipsi.fig');
saveas(gcf,figname,'fig');
figname = sprintf('EPSP-IPSPexample_211111_2_ipsi.pdf');
print('-dpdf','-painters','-loose',figname);

figure(h(3));
figname = sprintf('EPSP-IPSPexample_211111_2_both.fig');
saveas(gcf,figname,'fig');
figname = sprintf('EPSP-IPSPexample_211111_2_both.pdf');
print('-dpdf','-painters','-loose',figname);

%% Generate example IPSP: : 210929_2

close all; clear all;
path=('');

%contra
[D.stimData,D.timestamps,D.metaData]=importaxo([path '29Sep21 012_G1_masked.axgx']);
MaskedEpisodes = [22 50 66];
h(1)=figure; hold on;
% Filter out the masked trials
for xx=1:size(MaskedEpisodes,2)
    D.stimData{MaskedEpisodes(xx)}(1:length(D.timestamps))= NaN;
end
counter = 0;
for ii=1:size(D.stimData,1)
    if counter<15
        ind_trace(ii,:) = D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000));
        plot(D.timestamps-1,D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000)),'Color',[0.5 0.5 0.5]);
    end
    if isnan(D.stimData{ii}(1))==0
        counter = counter+1;
    end
end

[D.stimData,D.timestamps,D.metaData]=importaxo([path '29Sep21 012_G1_masked_filt_basel Average.axgx']);
plot(D.timestamps-1,D.stimData{1},'k');
xlim([-0.1 0.3]); ylim([-0.01 0.01]);

%ipsi
[D.stimData,D.timestamps,D.metaData]=importaxo([path '29Sep21 012_G2_masked.axgx']);
MaskedEpisodes = [1];
h(2)=figure; hold on;
% Filter out the masked trials
for xx=1:size(MaskedEpisodes,2)
    D.stimData{MaskedEpisodes(xx)}(1:length(D.timestamps))= NaN;
end
counter = 0;
for ii=1:size(D.stimData,1)
    if counter<15
        ind_trace(ii,:) = D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000));
        plot(D.timestamps-1,D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000)),'Color',[0.5 0.5 0.5]);
    end
    if isnan(D.stimData{ii}(1))==0
        counter = counter+1;
    end
end

[D.stimData,D.timestamps,D.metaData]=importaxo([path '29Sep21 012_G2_masked_filt_basel Average.axgx']);
plot(D.timestamps-1,D.stimData{1},'k');
xlim([-0.1 0.3]); ylim([-0.01 0.01]);

%both
[D.stimData,D.timestamps,D.metaData]=importaxo([path '29Sep21 012_G3_masked.axgx']);
MaskedEpisodes = [1];
h(3)=figure; hold on;
% Filter out the masked trials
for xx=1:size(MaskedEpisodes,2)
    D.stimData{MaskedEpisodes(xx)}(1:length(D.timestamps))= NaN;
end
counter = 0;
for ii=1:size(D.stimData,1)
    if counter<15
        ind_trace(ii,:) = D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000));
        plot(D.timestamps-1,D.stimData{ii}-nanmean(D.stimData{ii}(0.9*20000:0.999*20000)),'Color',[0.5 0.5 0.5]);
    end
    if isnan(D.stimData{ii}(1))==0
        counter = counter+1;
    end
end

[D.stimData,D.timestamps,D.metaData]=importaxo([path '29Sep21 012_G3_masked_filt_basel Average.axgx']);
plot(D.timestamps-1,D.stimData{1},'k');
xlim([-0.1 0.3]); ylim([-0.01 0.01]);

cd(path)
figure(h(1));
figname = sprintf('IPSPexample_210929_2_contra.fig');
saveas(gcf,figname,'fig');
figname = sprintf('IPSPexample_210929_2_contra.pdf');
print('-dpdf','-painters','-loose',figname);

figure(h(2));
figname = sprintf('IPSPexample_210929_2_ipsi.fig');
saveas(gcf,figname,'fig');
figname = sprintf('IPSPexample_210929_2_ipsi.pdf');
print('-dpdf','-painters','-loose',figname);

figure(h(3));
figname = sprintf('IPSPexample_210929_2_both.fig');
saveas(gcf,figname,'fig');
figname = sprintf('IPSPexample_210929_2_both.pdf');
print('-dpdf','-painters','-loose',figname);
