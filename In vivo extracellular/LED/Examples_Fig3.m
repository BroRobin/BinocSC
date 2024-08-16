%% Create example trace

%% 191016_2 EXAMPLE (100ms)
P.datapath = ''; % Path to data files
P.fs = 20000;
cd(P.datapath)

load('RLB_EC_LEDdata_28Feb20 001.mat')

trialnums_ipsi = linspace(1,223,75);
trialnums_contra = linspace(2,224,75);
trialnums_both = linspace(3,225,75);

% Select trial for ipsi
figure; 
for ii=1:length(trialnums_ipsi)
    trialnums_ipsi(ii)
figure; plot(D.stimData{trialnums_ipsi(ii),1})
pause;
end
Trial_ipsi = 54;
% ylim([-0.5 1]);

% Select trial for contra
figure; 
for ii=1:length(trialnums_contra)
    trialnums_contra(ii)
plot(D.stimData{trialnums_contra(ii),1})
pause;
end
Trial_contra = 77;
% ylim([-0.5 1]);

% Select trial for both
figure; 
for ii=1:length(trialnums_both)
    trialnums_both(ii)
plot(D.stimData{trialnums_both(ii),1})
pause;
end
Trial_both = 69;
% ylim([-0.5 1]);

xaxis = linspace(-1,2,60000);
% P.cutoff  =   1000;  % gaussian filter cutoff
% stdsmooth=sqrt(2*log(2))./(P.cutoff.*2.*pi);
% index = gfilt(D.stimData{Trial_ipsi*3,1}',P.fs,stdsmooth);

% Ipsi trace
figure; plot(xaxis,D.stimData{Trial_ipsi,1}); xlim([-0.5 1]); 
ylim([-5*10^-3 5*10^-3]);
% hold on; plot(index,'r')

% Contra trace
figure; plot(xaxis,D.stimData{Trial_contra,1}); xlim([-0.5 1]); 
ylim([-5*10^-3 5*10^-3]);

% Both trace
figure; plot(xaxis,D.stimData{Trial_both,1}); xlim([-0.5 1]); 
ylim([-5*10^-3 5*10^-3]);

