function result = MouseActivity5edited_v2()
%% Mouse Activity Analyzer 
% Author: Renzhi Han
% Affiliation: The Ohio State University

% Modified by R. Broersen, Australian National University, 2021.

% This code analyzes mice in an open field, each in its own sub-arena.
% It stores the following information:
% Position
% Pathlength
% Accumulative travel distance
% Mouse size (area)
% Major axis length assuming an oval shape for a mouse
% Minor axis length assuming an oval shape for a mouse
% Orientation angle (theta)
% Eccentricity (the ratio of foci distance to major axis length, between 0-1)
%% code starts here

clc; % clear the comman window
close all; % close all figures
clear; % erase all existing variables

    [filename, dirpath] = uigetfile('*.mov;*.wmv;*.mp4;*.avi','Open video');
    
    if isequal(filename, 0) || isequal(dirpath, 0)
        logf('Cancel opening video');
        return;
    end
    
    filepath = [dirpath filename];
    
    [u1, video_name, u2] = fileparts(filepath);
                
    result_name = [video_name '_result.mat'];
    resultpath = [dirpath video_name '/' result_name];
            
if exist(resultpath, 'file') ~= 2
 
    logf('Opening the video: %s', filepath);
                
    try
        video_obj = VideoReader(filepath);  
    catch exception
        close_handle(dialog);
        msgbox(['Error opening video file. Message: ' exception.message], ...
               'Open video', 'error');
        
        set_status('Error when opening video file', 'button_cancel_red', true);
        return;
    end    
        nframes = video_obj.NumberOfFrames;
        frame100 = read(video_obj, round(nframes/2));
        videosize = [video_obj.Width,video_obj.Height];
        frameRate = video_obj.FrameRate;
        duration = video_obj.Duration;
        
        %% Open the movie and analyse the frames
        
        implay(filepath);
        disp('Analyse the frames in the movie. Script paused...');
        pause;
        
        if(~exist([dirpath video_name],'dir'))
            mkdir([dirpath video_name]);
        end
        imgfilename1 = [dirpath video_name '/' video_name '_threshold'];
        
        %figure('Renderer', 'painters', 'Position', [10 10 900 600]) 
        subplot(2,3,1)
        imshow(frame100); 
%         text(10, -200,'Please click on the image to choose the threshold','Color','r','FontSize',20,'FontWeight','bold');
        
        
        kk = [0.7, 0.75, 0.8 0.85 0.9];
        
        for k = 1:length(kk)
            subplot(2,3,k+1)
            imshow(bwareaopen(im2bw(255 - frame100, kk(k)),50) * 255);
            set(gca,'tag',num2str(kk(k)))
            title(['Threshold: ' num2str(kk(k))]);            
        end
        set(gcf, 'Position', [0, 0.04, 900, 600]);
        w = waitforbuttonpress;
        if w == 0
            th = get(gca,'tag');
        end        
        %saveas(gcf,[imgfilename1 '.tif']);
        print(gcf,[imgfilename1 '.tif'],'-dtiff','-r300');

        prompt = {'Enter the threshold:','Enter the minimal pixels of object:','Mouse number:', 'StartFrame to be analyzed:', 'LastFrame to be analyzed:', 'Frame steps:'};
        dlg_title = 'Collect movie processing parameters';
        num_lines = 1;
        defaultans = {th,'200','1','1',num2str(nframes),'1'};
        answer = inputdlg(prompt,dlg_title,num_lines,defaultans);
        threshold = str2double(answer{1}); % default 0.70; % the threshold is a key parameter for successful segmentation
        objpixels = floor(str2double(answer{2})); % the minimal pixel size of the mouse, default is 50
        MouseN = floor(str2double(answer{3})); % the number of mouse in the movie, default is 2
        StartFrame = floor(str2double(answer{4})); % the first frame to be analyzed, default is 1
        LastFrame = floor(str2double(answer{5})); % the last frame to be analyzed, default is the maximum frame number
        if LastFrame > nframes
            LastFrame = nframes;
        end
        Step = floor(str2double(answer{6})); % the frame steps to be analyzed (e.g. analyze every 'x' frame), default is 1
        close all;
        
        figure('Position', [10 10 900 900]) 
        imshow(read(video_obj,StartFrame));   
        
        arenaD = cell(MouseN,1);
        xa = cell(MouseN,1);
        ya = cell(MouseN,1);
        arena_w = cell(MouseN,1);
        arena_h = cell(MouseN,1);
        w0 = 639;
        h0 = 300;
        for n = 1:MouseN
            logf(['please draw the arena for mouse' num2str(n)]);
            arena = drawrectangle('Position',[1 1 w0 h0], 'LineWidth',1); 
            position = customWait(arena);
            arenaD{n} = floor(position);
            xa{n} = arenaD{n}(1);
            ya{n} = arenaD{n}(2);
            arena_w{n} = arenaD{n}(3);
            arena_h{n} = arenaD{n}(4); 
            w0 = arena_w{1};
            h0 = arena_h{1};
        end

        f = waitbar(0,'1','Name','Tracking mouse...');
                        
        close all;
        
        result.filepath = filename;
        result.frameRate = frameRate;
        result.duration = duration;
        result.nframes = nframes;
        result.videosize = videosize;
        result.StartFrame = StartFrame;
        result.LastFrame = LastFrame;
        result.arenaD = arenaD;
        result.mouseN = MouseN;
        result.step = Step;
        
        result.positions = [];        

     tic;
     tStart = tic;
     x = StartFrame:Step:floor((LastFrame-StartFrame)/Step)*Step+StartFrame; % floor((LastFrame-StartFrame)/Step)*Step+StartFrame
     %logf(num2str(floor((LastFrame-StartFrame)/Step)*Step+StartFrame));
     %logf(num2str(x));
     %logf(num2str(length(x)));
     
     c1 = cell(MouseN, length(x), 2);
     m1_majl = cell(MouseN, length(x), 1);
     m1_minl = cell(MouseN, length(x), 1);
     m1_ori = cell(MouseN, length(x), 1);
     m1_ecc = cell(MouseN, length(x), 1);
     m1_area = cell(MouseN, length(x), 1);
     
     for jj = 1:length(x)
         
            frame2 = bwareaopen(im2bw(255-read(video_obj,x(jj)), threshold),objpixels) * 255; % remove any object smaller than 50 pixels
            
            for m = 1:MouseN
                %roi = frame2(ya{m}:ya{m}+arena_h{m}, xa{m}:xa{m}+arena_w{m});
                mouse = regionprops(frame2(ya{m}:ya{m}+arena_h{m}, xa{m}:xa{m}+arena_w{m}),'Area','Centroid','MajorAxisLength','MinorAxisLength','Orientation','Eccentricity');

                if ~isempty([mouse.Area])                    
                    areaArray = [mouse.Area];
                    [~,idx] = max(areaArray);
                    c1{m}(jj,:) = floor(mouse(idx).Centroid +[xa{m} ya{m}]);
                    
                    m1_majl{m}(jj,:) = mouse(idx).MajorAxisLength;
                    m1_minl{m}(jj,:) = mouse(idx).MinorAxisLength;
                    m1_ori{m}(jj,:) = mouse(idx).Orientation;
                    m1_ecc{m}(jj,:) = mouse(idx).Eccentricity;
                    m1_area{m}(jj,:) = mouse(idx).Area;                    
                else
                    %the following is needed because mice sometimes jump
                    %up at the edge (out of the ROI).
                    c1{m}(jj,:) = c1{m}(jj-1,:);
                    m1_majl{m}(jj,:) = m1_majl{m}(jj-1);
                    m1_minl{m}(jj,:) = m1_minl{m}(jj-1);
                    m1_ori{m}(jj,:) = m1_ori{m}(jj-1);
                    m1_ecc{m}(jj,:) = m1_ecc{m}(jj-1);
                    m1_area{m}(jj,:) = m1_area{m}(jj-1);
                 end
            end
            %the following three lines greatly accelerate the read
            %videoframe process
            if Step>1 && x(jj)+1<LastFrame
                read(video_obj,[x(jj)+1 min(LastFrame,x(jj)+Step-1)]);            
            end

         waitbar(jj/length(x),f,sprintf(['Tracking Progress: ' num2str(round(jj*10000/length(x))/100) '%%']))
     end      
     delete(f)   
     result.positions = {};
     result.area = {};
     result.orientation = {};
     
     for p = 1:MouseN         
         result.positions = [result.positions c1{p}];
         result.area = [result.area m1_area{p}];
         result.orientation = [result.orientation [m1_majl{p} m1_minl{p} m1_ori{p} m1_ecc{p}]];     
     end
     
     save(resultpath, 'result');
     tElapsed = toc(tStart);   
     logf(['tracking completed and data saved! used: ' num2str(tElapsed) 'seconds']);          
end
               
    if exist(resultpath, 'file') == 2 && exist([dirpath video_name '/' [video_name '_result.xls']], 'file') ~= 2
        logf('Tracking has been done, running analysis...');
        analysis(filename, dirpath);
    end
    
        logf('Tracking and analysis have been done');

         prompt = sprintf('Tracking and anlysis completed, check the tracking results?');
         button = questdlg(prompt,'Check the results','Yes','No','Yes');

         trackmovie_name = [video_name '_result.avi'];
         trackmoviepath = [dirpath video_name '/' trackmovie_name];
         
         if strcmp(button,'Yes')
            if exist(trackmoviepath, 'file') ~= 2
                close all;
                video_obj = VideoReader(filepath);
                R = load(resultpath);
                MouseN = R.result.mouseN;
                nframes = R.result.nframes;
                startframe = R.result.StartFrame;
                lastframe = R.result.LastFrame;
                c1 = R.result.positions;
                ori = R.result.orientation;
                area = R.result.area;
                step = R.result.step;
                x = startframe:step:floor((lastframe-startframe)/step)*step+startframe;
                
                F(min(length(x),900)) = struct('cdata',[],'colormap',[]);

                colors = ['b', 'r', 'g', 'm', 'y'];

                for i=1:min(length(x),900) %here you can change to for i=1:length(x)

                    vframe = read(video_obj,x(i));               
                    image(vframe);
                    hold on

                    for mn=1:MouseN
                        m1_majl{mn} = ori{mn}(:,1);
                        m1_minl{mn} = ori{mn}(:,2);
                        m1_ori{mn} = ori{mn}(:,3);
                        m1_area{mn} = area{mn}(:,1);
                        m1_ecc{mn} = ori{mn}(:,4);
                        p1 = calculateEllipse(c1{mn}(i,1),c1{mn}(i,2),m1_majl{mn}(i,1)./2,m1_minl{mn}(i,1)./2,m1_ori{mn}(i,1));
                        plot(p1(:,1), p1(:,2), ['.-' colors(mn)])
                        text(c1{mn}(i,1),c1{mn}(i,2),num2str(mn),'Color',colors(mn),'FontSize',20,'FontWeight','bold')
    %                     text(40+270*(mn-1),400,['mouse area: ' num2str(m1_area{mn}(i,1)) ' ecc: ' num2str(m1_ecc{mn}(i,1))],'Color','r','FontSize',12,'FontWeight','bold')
                    end

                    title(['Frame ' num2str(x(i))])
                    hold off
                    F(i) = getframe;
                end

                v = VideoWriter(trackmoviepath);
                open(v);
                writeVideo(v,F);
                close(v);
                logf('Video saved.');
            else
                h=implay(trackmoviepath);
                play(h.DataSource.Controls);
            end
        end
        
end        

function result = analysis(filename1, dirpath1)
   
    filepath = [dirpath1 filename1];
    
    [u1 video_name u2] = fileparts(filepath);
                
    result_name = [video_name '_result.mat'];
    resultpath = [dirpath1 video_name '/' result_name];

    R = load(resultpath);
    startframe = R.result.StartFrame;
    lastframe = R.result.LastFrame;
    step = R.result.step;
    totalframe = floor((lastframe-startframe)/step)+1;
    frameRate = R.result.frameRate;
    videosize = R.result.videosize;
    arena = R.result.arenaD;
    pos = R.result.positions;
    ori = R.result.orientation;
    area = R.result.area;
    mouseN = R.result.mouseN;
    colors = ['b', 'r', 'g', 'm'];

    for i=1:mouseN
        m1_majl{i} = ori{i}(:,1);
        m1_ecc{i} = ori{i}(:,4);
        m_area{i} = area{i}(:,1);
    end
% subplot(3,2,1)
% hold on
% plot(m1_ecc,area(:,1),'r',m2_ecc,area(:,2),'b');
% xlabel('Eccentricity','FontSize',16);
% ylabel('Mouse Area','FontSize',16);
% set(gca,'fontsize',16,'linewidth',2,'box','on')
% hold off
% 
% subplot(3,2,2)
% hold on
% plot(m1_ecc,m1_majl,'r',m2_ecc,m2_majl,'b');
% xlabel('Eccentricity','FontSize',16);
% ylabel('Major Axis Length','FontSize',16);
% set(gca,'fontsize',16,'linewidth',2,'box','on')
% hold off

    subplot(3,1,1)
    for i=1:mouseN
        ecc1{i} = histfit(m1_ecc{i},20,'gamma');
        ecc1{i}(1).FaceColor = [i./mouseN 0.8 1./i];
        ecc1{i}(2).Color = [1./i 0.2 i./mouseN];
        set(ecc1{i}(1),'facealpha',0.5)
        hold on
    end    
        xlabel('Eccentricity','FontSize',16);
        ylabel('Distribution','FontSize',16);
        yt = get(gca, 'YTick');
        set(gca, 'YTick', yt, 'YTickLabel', round(100*yt/numel(m1_ecc{1}))/100)
        set(gca,'fontsize',16,'linewidth',2,'box','on')
        hold off

    subplot(3,1,2)
    for i=1:mouseN
        h1{i} = histfit(area{i}(:,1),20,'Normal');
        h1{i}(1).FaceColor = [i./mouseN 0.8 1./i];
        h1{i}(2).Color = [1./i 0.2 i./mouseN];
        set(h1{i}(1),'facealpha',0.5)
        %n1{i} = sum(area{i}(:,1)<600);
        %text(200,400-i*50,['mouse' num2str(i) ' standing up: ' num2str(n1{i})]);    
        hold on
    end
    xlabel('Mouse Area','FontSize',16);
    ylabel('Distribution','FontSize',16);
    set(gca,'fontsize',16,'linewidth',2,'box','on')
    hold off

    subplot(3,1,3)
    for i=1:mouseN
        majl1{i} = histfit(m1_majl{i},40,'Normal');
        majl1{i}(1).FaceColor = [i./mouseN 0.8 1./i];
        majl1{i}(2).Color = [1./i 0.2 i./mouseN];        
        set(majl1{i}(1),'facealpha',0.5)
        hold on
    end
    xlabel('Major Axis Length','FontSize',16);
    ylabel('Distribution','FontSize',16);
    set(gca,'fontsize',16,'linewidth',2,'box','on')

    imgfilename1 = [dirpath1 video_name '/' video_name '_orientation'];

    % set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]);
    set(gcf, 'Position', [0, 0.04, 450, 900]);
    print(gcf,[imgfilename1 '.tif'],'-dtiff','-r300');

    hold off

    x = startframe:step:lastframe;
    ctimearray=zeros(length(x),1);
    for j=1:length(x)
        ctimearray(j) = (j-1).*step./frameRate;
    end

    xlsfilename = [video_name '_result.xls'];
    savefilename = [video_name '_resultQuantifications.mat'];
    logf('Saving Results into Excel and TIFF files, please wait...', [dirpath1 video_name '/' xlsfilename]);

    for i=1:mouseN

        arenaW = arena{i}(:,3);
        arenaH = arena{i}(:,4);
        pixels = 467/(arenaW*0.895); %pixel size in mm; 0.895 is the ratio of the middle of arena to the lower edge of the arena (0.7899 is the ratio for bottom to top). 0.92 is a middle way, .
        %arena is 467mm x 273mm
        peripheral = floor(arenaW./12.*2); % 2 inches
        x1 = arena{i}(:,1) + peripheral;
        x2 = arena{i}(:,1) + arenaW - peripheral;
        y1 = arena{i}(:,2) + peripheral;
        y2 = arena{i}(:,2) + arenaH - peripheral;
        xa = [arena{i}(:,1),arena{i}(:,1)+arenaW,arena{i}(:,1)+arenaW,arena{i}(:,1),arena{i}(:,1)];
        ya = [arena{i}(:,2)+arenaH,arena{i}(:,2)+arenaH,arena{i}(:,2),arena{i}(:,2),arena{i}(:,2)+arenaH];
        xv = [x1 x2 x2 x1 x1];
        yv = [y2 y2 y1 y1 y2];

        mouse = ['mouse' num2str(i)]; 
        xq1 = pos{i}(:,1);
        yq1 = pos{i}(:,2);
        in1 = inpolygon(xq1,yq1,xv,yv);  
        timesin1 = numel(xq1(in1));
        pathl1 =[0];
        dd1 = 0;
        distance1 = [0];
        speed1 = [NaN];
        sp1=[];

        for k = 2:length(pos{i})
              D1 = sqrt((pos{i}(k,1)-pos{i}(k-1,1))^2+(pos{i}(k,2)-pos{i}(k-1,2))^2);
              D1 = D1.* pixels; % path length in mm
              sp1 = (D1*10^-1)*75; % convert speed to cm, and timebase to sec (75 fps camera)
              pathl1 = [pathl1; D1];
              dd1 = dd1 + D1./10; % travel distance in cm
              distance1 = [distance1; dd1];
              speed1 = [speed1; sp1];
        end
        if (sum(isnan(speed1(2:end)))>0)==0  
%          filt_speed1 = [NaN; gfilt(speed1(2:end),75,0.0075)]; % cutoff freq gauss = 25Hz
 %        filt_speed1 = [NaN; gfilt(speed1(2:end),75,0.0094)]; % cutoff freq gauss = 20Hz
%            filt_speed1 = [NaN; movmean(speed1(2:end),5)]; % moving mean, window of 66.667ms
           filt_speed1 = [NaN; movmean(speed1(2:end),4)]; % moving mean, window of 53.3332ms
        else  
            disp('Error filtering the speed signal... stopping script');
            return
        end
        titlerow = horzcat({'Time (s)'},{[mouse '_X']},{[mouse '_Y']},{[mouse '_PathL (mm)']},{[mouse '_Distance(cm)']},{[mouse '_Speed(cm/s)']},{[mouse '_Speed Gaussian Filtered (cm/s)']});
        finaldata = horzcat(ctimearray,xq1,yq1,pathl1,distance1,speed1,filt_speed1);

        result.distance = distance1;
        result.speed = speed1;
        result.filt_speed = filt_speed1;
        
        % Quantifications
        result.baseline_avgSpeed = mean(result.filt_speed(round(27*75):round(30*75)));
        
        result.stimulus_peakSpeed_sweep = max(result.filt_speed(round(30*75):round(34*75)));
        result.stimulus_peakSpeed_loom = max(result.filt_speed(round(30*75):round(30.75*75)));
        result.stimulus_peakSpeed_sweeploom = max(result.filt_speed(round(30*75):round(32.75*75)));
        
        result.afterStimulus_avgSpeed_sweep = mean(result.filt_speed(round(34*75):round(49*75)));
        result.afterStimulus_avgSpeed_loom = mean(result.filt_speed(round(30.75*75):round(45.75*75)));
        result.afterStimulus_avgSpeed_sweeploom = mean(result.filt_speed(round(32.75*75):round(47.75*75)));
        
        result.LSI_duringStim_sweep = log10(result.stimulus_peakSpeed_sweep/result.baseline_avgSpeed);
        result.LSI_duringStim_loom = log10(result.stimulus_peakSpeed_loom/result.baseline_avgSpeed);
        result.LSI_duringStim_sweeploom = log10(result.stimulus_peakSpeed_loom/result.baseline_avgSpeed);
        
        result.LSI_afterStim_sweep = log10(result.afterStimulus_avgSpeed_sweep/result.baseline_avgSpeed);
        result.LSI_afterStim_loom = log10(result.afterStimulus_avgSpeed_loom/result.baseline_avgSpeed);
        result.LSI_afterStim_sweeploom = log10(result.afterStimulus_avgSpeed_sweeploom/result.baseline_avgSpeed);
        
        result.excel_sweep = [result.baseline_avgSpeed result.stimulus_peakSpeed_sweep result.afterStimulus_avgSpeed_sweep result.LSI_duringStim_sweep result.LSI_afterStim_sweep];
        result.excel_loom = [result.baseline_avgSpeed result.stimulus_peakSpeed_loom result.afterStimulus_avgSpeed_loom result.LSI_duringStim_loom result.LSI_afterStim_loom];
        result.excel_sweeploom = [result.baseline_avgSpeed result.stimulus_peakSpeed_sweeploom result.afterStimulus_avgSpeed_sweeploom result.LSI_duringStim_sweeploom result.LSI_afterStim_sweeploom];
        
        TimeInner1 = timesin1.*step./ frameRate;
        TimeOuter1 = totalframe.*step./frameRate - TimeInner1;
        Thigmotaxis1 = 1-timesin1./length(x);
        summarytitle = [{'FileName'},{[mouse '_Outer (s)']},{[mouse '_Inner (s)']},{[mouse '_Thigmotaxis']}];
        summaryresults = [{[dirpath1 video_name '.mov']},TimeOuter1,TimeInner1,Thigmotaxis1];

        xlwrite([dirpath1 video_name '/' xlsfilename],titlerow,mouse,'A1');
        xlwrite([dirpath1 video_name '/' xlsfilename],finaldata,mouse,'A2');
        xlwrite([dirpath1 video_name '/' xlsfilename],summarytitle,mouse,'M1');
        xlwrite([dirpath1 video_name '/' xlsfilename],summaryresults,mouse,'M2');

        save([dirpath1 video_name '/' savefilename],'result');
        
        xv1{i} = xv;
        yv1{i} = yv;
        xa1{i} = xa;
        ya1{i} = ya;
        finaldata1{i} = finaldata;

    end


    hsum=figure('Visible','on'); 
    Bkg = 230 * ones(videosize(2), videosize(1), 3, 'uint8');

    subplot(3,1,1); image(Bkg); axis image
    %freezeColors;
%     title([video_name '.mov'],'Interpreter','none');
    hold all
    %traveldistanceplot = [];
    for i=1:mouseN
        plot(pos{i}(:,1),pos{i}(:,2),'Color',colors(i));
        plot(xv1{i},yv1{i},'--k','LineWidth',2); % plot inner arena for each mouse
        plot(xa1{i},ya1{i},'k','LineWidth',2); % plot the entire arena
        %traveldistanceplot = [traveldistanceplot finaldata1{i}(:,5)];
    end
    set(gca,'fontsize',20)
    ymax = 0;

    subplot(3,1,2);
    for i=1:mouseN 
        ymax = max(ymax, max(finaldata1{i}(:,5)));
        plot(finaldata1{1}(:,1),finaldata1{i}(:,5),'Color',colors(i),'LineWidth',2);
        hold on
    end
    hold off
%     plot(finaldata1{1}(:,1),traveldistanceplot,'LineWidth',2);
    xlim([0 length(x).*step./frameRate]);
    ylim([0 ymax]);
    line([30 30],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r');
    xlabel('Times (s)');
    ylabel('Travel Distance (cm)');
    set(gca,'linewidth',2,'fontsize',20,'box', 'off');
    set(gcf,'Units','Normalized','Position',[0 0 1 0.5],'PaperPositionMode','auto','PaperSize',[14 14]);
    % title(sprintf(video_name));
     title([video_name '.mov'],'Interpreter','none');
    
    subplot(3,1,3);
    for i=1:mouseN 
        hold on
        ymax_speed = max(max(finaldata1{i}(:,6)));
        plot(finaldata1{1}(:,1),finaldata1{i}(:,6),'Color',colors(i),'LineWidth',2);
        plot(finaldata1{1}(:,1),finaldata1{i}(:,7),'Color','r','LineWidth',2);
        
    end
    hold off
%     plot(finaldata1{1}(:,1),traveldistanceplot,'LineWidth',2);
    xlim([0 length(x).*step./frameRate]);
    ylim([0 ymax_speed+3]);
    line([30 30],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r');
    xlabel('Times (s)');
    ylabel('Travel Speed (cm/s)');
    set(gca,'linewidth',2,'fontsize',20,'box', 'off');
    set(gcf,'Units','Normalized','Position',[0 0 1 0.5],'PaperPositionMode','auto','PaperSize',[14 14]);
    % title(sprintf(video_name));
%     title([video_name '.mov'],'Interpreter','none');

    imgfilename = [dirpath1 video_name '/' video_name '_summary'];
    print(gcf,[imgfilename '.tif'],'-dtiff','-r300');
    hold off
    %delete(hsum);

    logf('Results saved to folder %s', [dirpath1 video_name '/']);

end    

function pos = customWait(hROI)

    % Listen for mouse clicks on the ROI
    l = addlistener(hROI,'ROIClicked',@clickCallback);

    % Block program execution
    uiwait;

    % Remove listener
    delete(l);

    % Return the current position
    pos = hROI.Position;

end

function clickCallback(~,evt)

    if strcmp(evt.SelectionType,'double')
        uiresume;
    end

end

function  th=clicksubplot  
    w = waitforbuttonpress;
    if w == 0
        th = get(gca,'tag');
    end
end    

function logf(varargin)
    message = sprintf(varargin{1}, varargin{2:end});
    str = ['[' datestr(now(), 'HH:MM:SS') '] ' message];
    disp(str);
end

function [X,Y]=calculateEllipse(x, y, a, b, angle, steps)
%     %# This functions returns points to draw an ellipse
%     %#  @param x     X coordinate
%     %#  @param y     Y coordinate
%     %#  @param a     Semimajor axis
%     %#  @param b     Semiminor axis
%     %#  @param angle Angle of the ellipse (in degrees)

    narginchk(5, 6);
    if nargin<6, steps = 36; end

    beta = -angle * (pi / 180);
    sinbeta = sin(beta);
    cosbeta = cos(beta);

    alpha = linspace(0, 360, steps)' .* (pi / 180);
    sinalpha = sin(alpha);
    cosalpha = cos(alpha);

    X = x + (a * cosalpha * cosbeta - b * sinalpha * sinbeta);
    Y = y + (a * cosalpha * sinbeta + b * sinalpha * cosbeta);

    if nargout==1, X = [X Y]; end

end

function y = gfilt(x,fs,sd,sdextra)
if nargin<4, sdextra=5; end
%  Gaussian smoothing filter
%
%  x = input data
% fs = sample frequency (Hz)
% sd = standard deviation
% sdextra = number of sd's added to data edges (5 = default), 
% signal is mirrored
%
% should be samples x dimensions matrix
% (c) Beerend Winkelman 2005


% x=x(:)';
nextra=round(sdextra/2*sd*fs);
[nx,dim]=size(x);
nfft=nx+2*nextra;
a=1./(2.*sd.^2);
if rem(nfft,2),    % nfft odd
   frq=[0:(nfft-1)/2 -((nfft-1)/2:-1:1)]';
else
   frq=[0:nfft/2 -(nfft/2-1:-1:1)]';
end
frq=repmat(frq.*fs./nfft,1,dim);
x=[x;x(end:-1:end-nextra+1,:);x(nextra+1:-1:2,:)]; % mirror edges to go around boundary effects

y = ifft(fft(x,nfft).*exp(-pi^2.*frq.^2./a));
y=y(1:nx,:);
y=abs(y).*sign(real(y));
%y=real(y);
end
