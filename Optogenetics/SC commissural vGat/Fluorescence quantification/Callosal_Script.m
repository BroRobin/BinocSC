%% Analysis intensity over depth

figure; hold on; plot(Depth_X,MeanY9415_100)
plot(Depth_X,MeanY9416_100)
plot(Depth_X,MeanY9417_100)
plot(Depth_X,MeanY9419_100)

% Normalize to min-max values

MeanY9415_100_norm = MeanY9415_100-min(MeanY9415_100);
MeanY9415_100_norm = MeanY9415_100_norm/max(MeanY9415_100_norm);

MeanY9416_100_norm = MeanY9416_100-min(MeanY9416_100);
MeanY9416_100_norm = MeanY9416_100_norm/max(MeanY9416_100_norm);

MeanY9417_100_norm = MeanY9417_100-min(MeanY9417_100);
MeanY9417_100_norm = MeanY9417_100_norm/max(MeanY9417_100_norm);

MeanY9419_100_norm = MeanY9419_100-min(MeanY9419_100);
MeanY9419_100_norm = MeanY9419_100_norm/max(MeanY9419_100_norm);

MeanY9415_50_norm = MeanY9415_50-min(MeanY9415_50);
MeanY9415_50_norm = MeanY9415_50_norm/max(MeanY9415_50_norm);

MeanY9416_50_norm = MeanY9416_50-min(MeanY9416_50);
MeanY9416_50_norm = MeanY9416_50_norm/max(MeanY9416_50_norm);

MeanY9417_50_norm = MeanY9417_50-min(MeanY9417_50);
MeanY9417_50_norm = MeanY9417_50_norm/max(MeanY9417_50_norm);

MeanY9419_50_norm = MeanY9419_50-min(MeanY9419_50);
MeanY9419_50_norm = MeanY9419_50_norm/max(MeanY9419_50_norm);

% Plot
figure; hold on; plot(Depth_X,MeanY9415_100_norm)
plot(Depth_X,MeanY9416_100_norm)
plot(Depth_X,MeanY9417_100_norm)
plot(Depth_X,MeanY9419_100_norm)

figure; hold on; plot(Depth_X,MeanY9415_50_norm)
plot(Depth_X,MeanY9416_50_norm)
plot(Depth_X,MeanY9417_50_norm)
plot(Depth_X,MeanY9419_50_norm)

% Calculate avg/sd/sem

MeanY_100_avg = mean([MeanY9415_100_norm MeanY9416_100_norm MeanY9417_100_norm MeanY9419_100_norm],2);
MeanY_50_avg = mean([MeanY9415_50_norm MeanY9416_50_norm MeanY9417_50_norm MeanY9419_50_norm],2);

MeanY_100_sem = std([MeanY9415_100_norm MeanY9416_100_norm MeanY9417_100_norm MeanY9419_100_norm],0,2)/sqrt(4);
MeanY_50_sem = std([MeanY9415_50_norm MeanY9416_50_norm MeanY9417_50_norm MeanY9419_50_norm],0,2)/sqrt(4);

figure; hold on; shadedErrorBar(Depth_X,MeanY_100_avg,MeanY_100_sem)

ylabel('Normalized fluorescence','fontSize',20,'fontName','Arial','Color','k');
ylim([0 1]); yticks([0 0.25 0.5 0.75 1]); set(gca,'Color','k','fontSize',20,'FontName','Arial')
xlim([0 1500]); xticks([0 250 500 750 1000 1250 1500]); set(gca,'Color','k','fontSize',20,'FontName','Arial')
xlabel('Depth from SC surface (um)','fontSize',20,'fontName','Arial','Color','k');
% box on;

cd([path to output folder)
figname = 'Callosal_fluorescence_100um.fig';
saveas(gcf,figname,'fig');
figname = 'Callosal_fluorescence_100um.pdf';
print('-dpdf','-painters','-loose',figname);
