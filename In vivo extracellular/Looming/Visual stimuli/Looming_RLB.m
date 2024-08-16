%% Exp_Looming_RLB script
% Run experiment to identify binocular interaction  during a looming
% stimulus

% R.Broersen, 2019
% ANU, JCSMR
close; clear all;

%% Define parameters of function
RF_pos_left = [540 960] % Position of the RF center in [X Y] coordinates- Determine based on RFmap_moving script
RF_pos_right = [540 960] % Position of the RF center in [X Y] coordinates- Determine based on RFmap_moving script

loomingSpeed = 35.4732; % in pixels/frames for 0-50deg in 0.25sec

stimDuration = 0.75; % stim duration in s

%% Grating properties
drawmask = 1 % By default, we mask the grating by a transparency mask in circular shape
cyclespersecond = 2  % Temporal resolution (Hz). Default SC literature: 2Hz
numRepeats = 50 % how many times repeat per stim size
stimOrder = [2 1 3] % 1=left, 2=right, 3=both
angle_left = 90 % Angles of the grating relative to vertical downward angle.
angle_right = 90  % Angles of the grating relative to vertical downward angle.
cycles_per_degree_left = 0.075  % Spatial resolution of gratings (cycl/deg)
cycles_per_degree_right = 0.075  % Spatial resolution of gratings (cycl/deg)

%% Parameter setup
try
    AssertOpenGL;
    %         Screen('Preference', 'VisualDebugLevel', 1);
    %     Screen('Preference', 'SkipSyncTests', 1);
    % Get the list of screens and choose the one with the highest screen number.
    screens = Screen('Screens');
    %     screenNumber= max(Screen('Screens'));
    %     altScreenNumber=max(Screen('Screens'));
    screenNumber= max(Screen('Screens'));

    %% Calc displ angle
    % Vertical
    dimScreen = 475; % Dimension of the screen (height = 475mm, width - 270mm)
    ScreenDistEye = 300; % Distance screen to eye in mm
    display_angle = (2*(atan((dimScreen/2)/ScreenDistEye)))*60; %Degrees that the monitor covers

    % Horizontal
    dimScreen = 270; % Dimension of the screen (height = 475mm, width - 270mm)
    ScreenDistEye = 300; % Distance screen to eye in mm
    display_angle_H = (2*(atan((dimScreen/2)/ScreenDistEye)))*60; %Degrees that the monitor covers

    %% Calc additional parameters (use the horizontal axis to calculate the pixel/vis deg density)
    screenProps = Screen('Resolution', screenNumber);
    display_resolution = screenProps.width;
    display_resolution_H = screenProps.height;
    pixels_per_degree = mean([display_resolution/display_angle display_resolution_H/display_angle_H]); % Calculate pixel/deg
    %     pixels_per_degree = display_resolution/display_angle; % Calculate pixel/deg


    f_left = cycles_per_degree_left / pixels_per_degree; % Calculate cycles/pixel
    f_right = cycles_per_degree_right / pixels_per_degree; % Calculate cycles/pixel
    texsize_left = 50;
    texsize_right=50;
    texsize_left = texsize_left*pixels_per_degree ; % transform texsize from vis deg into pixels
    texsize_left = round(texsize_left/2); % calculate the half-diameter of the patch
    texsize_right = texsize_right*pixels_per_degree ; % transform texsize from vis deg into pixels
    texsize_right = round(texsize_right/2); % calculate the half-diameter of the patch

    RF_pos_right = [RF_pos_right(1) RF_pos_right(2)+1920]; % adjust the Y coordinate so that it is positioned on the right screen
    %% Set up Labjack
    lj = MyLJ2([], [6, 7], [], [0]); %No digital, digital out FIO6, digital out FIO7, analog out DAC0
    lj.config_counter(); %Configure Counter on FIO4
    count = 0;

    %% Setup the psychtoolbox textures

    % Find the color values which correspond to white and black. Do this
    % for only one, since the screens are the same
    white=WhiteIndex(screenNumber);
    black=BlackIndex(screenNumber);
    gray=round((white+black)/2);

    if gray == white
        gray=white / 2;
    end
    inc=white-gray;
    %         Screen('Preference','DebugMakeTexture',1)
    %         Screen('NominalFrameRate',0,1,60)
    [w, screenRect]=Screen('OpenWindow',screenNumber,gray);
    Screen('BlendFunction', w, GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    %     [z, screenRectz]=Screen('OpenWindow',altScreenNumber, gray);    % Open a double buffered fullscreen window with a gray background:
    %     [w, screenRect]=Screen('OpenWindow',screenNumber, gray);    % Open a double buffered fullscreen window with a gray background:
    topPriorityLevel = MaxPriority(w);
    %% Determine parameters
    % left screen
    p_left=ceil(1/f_left); % calculate pixels/cycle, rounded up.
    fr_left=f_left*2*pi; % calculate number of frames per cycle

    % left screen
    p_right=ceil(1/f_right); % calculate pixels/cycle, rounded up.
    fr_right=f_right*2*pi; % calculate number of frames per cycle

    % Create a grayframe for the end
    grayframe=Screen('MakeTexture', w, gray);
    %     grayframez=Screen('MakeTexture', z, gray);

    % Query duration of monitor refresh interval:
    ifi=Screen('GetFlipInterval', w);

    waitframes = 1;
    waitduration = waitframes * ifi;

    % Recompute p, this time without the ceil() operation from above.
    % Otherwise we will get wrong drift speed due to rounding!
    p_left=1/f_left; % pixels/cycle
    p_right=1/f_right; % pixels/cycle
    % Translate requested speed of the grating (in cycles per second)
    % into a shift value in "pixels per frame", assuming given
    % waitduration: This is the amount of pixels to shift our "aperture" at
    % each redraw:
    shiftperframe_left= cyclespersecond * p_left * waitduration;
    shiftperframe_right= cyclespersecond * p_right * waitduration;
    % Perform initial Flip to sync us to the VBL and for getting an initial
    % VBL-Timestamp for our "WaitBlanking" emulation:

    stimOrder_running = repmat(stimOrder,[1 numRepeats]);
    %     stimOrder_running = repmat(3,[1 numRepeats]);
    %% Looming stimulus
    %    loomingSpeed = pixels_per_degree*(loomingSpeed/(1/ifi)); % Calculate loomingSpeed in pixels/frame
    % loomingSpeed = pixels_per_degree*(loomingSpeed); % Calculate loomingSpeed in pixels/frame




    %% Prepare the screens
    Screen('DrawTexture', w, grayframe);
    Screen('Flip',w);
    %     Screen('DrawTexture', z, grayframez);
    %     Screen('Flip',z);

    disp('Ready for start exp; waiting...')
    loop_n = 0;
    running = true;
    HideCursor;
    Priority(topPriorityLevel);
    %% Start the run
    while running
        if loop_n == 0;
            % tic
        end

        [~, ~, keyCode] = KbCheck; % Stop the script by pressing 2 keyboard buttons simultaneously
        if sum(keyCode) > 1
            break;
        end
        new_count = lj.read_count();
        screen_bool = false(1,2);
        if new_count > count
            count = new_count;
            loop_n = loop_n+1;
            screen_bool = true(1,2);
            %% Position and size of stimuli
            curr_stim = stimOrder_running(loop_n);

            curr_texsize_left = texsize_left;
            curr_texsize_right = texsize_right;

            curr_angle_left = angle_left;
            curr_angle_right = angle_right;

            visiblesize_left=round(2*curr_texsize_left+1); %Calculate visible size of the patch in pix
            visiblesize_right=round(2*curr_texsize_right+1); %Calculate visible size of the patch in pix

            % Create one single static grating image:
            % MK: We only need a single texture row (i.e. 1 pixel in height) to
            % define the whole grating! If srcRect in the Drawtexture call below is
            % "higher" than that (i.e. visibleSize >> 1), the GPU will
            % automatically replicate pixel rows. This 1 pixel height saves memory
            % and memory bandwith, ie. potentially faster.
            [x_left,y_left]=meshgrid(-curr_texsize_left:curr_texsize_left + p_left, 1);
            grating_left=zeros(length(x_left));

            [x_right,y_right]=meshgrid(-curr_texsize_right:curr_texsize_right + p_right, 1);
            grating_right=zeros(length(x_right));

            %             [x_left,y_left]=meshgrid(-(display_resolution_H/2):(display_resolution_H/2) + p_left, 1);
            %             grating_left=gray + inc*cos(fr_left*x_left);
            %
            %             [x_right,y_right]=meshgrid(-(display_resolution_H/2):(display_resolution_H/2) + p_right, 1);
            %             grating_right=gray + inc*cos(fr_right*x_right);

            % Store grating in texture:
            gratingtex_left=Screen('MakeTexture', w, grating_left);
            gratingtex_right=Screen('MakeTexture', w, grating_right);

            % Create a single  binary transparency mask and store it to a texture:
            mask_left=ones(2*curr_texsize_left+1, 2*curr_texsize_left+1, 2) * gray;
            [x_left,y_left]=meshgrid(-1*curr_texsize_left:1*curr_texsize_left,-1*curr_texsize_left:1*curr_texsize_left);
            mask_left(:, :, 2) = white * (1-(x_left.^2 + y_left.^2 <= curr_texsize_left^2));
            masktex_left=Screen('MakeTexture', w, mask_left);

            mask_right=ones(2*curr_texsize_right+1, 2*curr_texsize_right+1, 2) * gray;
            [x_right,y_right]=meshgrid(-1*curr_texsize_right:1*curr_texsize_right,-1*curr_texsize_right:1*curr_texsize_right);
            mask_right(:, :, 2) = white * (1-(x_right.^2 + y_right.^2 <= curr_texsize_right^2));
            masktex_right=Screen('MakeTexture', w, mask_right);




            %% Prepare running the loop
            vbl = Screen('Flip', w);
            %             vbl_2 = vbl;

            vblendtime = GetSecs+stimDuration;

            %             vblendtime = GetSecs + stimDuration;
            i=0;
            %                 grayframe=Screen('MakeTexture', window, gray);% Make a frame to blank out grating at end
            statusText = sprintf('Running loop %.f of %.f: stimScreen %.f...',loop_n,size(stimOrder_running,2),stimOrder_running(loop_n));
            disp(statusText)

            %% Send a signal to Arduino.
            % StimScreen determines the voltage
            ljVoltageSpacing = 5/size(stimOrder,2);
            lj.write_analog(ljVoltageSpacing*find(stimOrder==curr_stim));
            lj.write_digital( screen_bool );
            disp(sprintf('TTL voltage: %.3f',ljVoltageSpacing*find(stimOrder==curr_stim)))
            %% Start the actual loop
            if curr_stim==2
                while (GetSecs < vblendtime)
                    %                     if i==0; tic; end
                    % Shift the grating by "shiftperframe" pixels per frame:

                    xoffset_right = mod(i*shiftperframe_right,p_right);
                    i=i+1;
                    %% Calculate the patch dimensions and position

                    dstRect_right = [round(RF_pos_right(2)-(loomingSpeed*i)) round(RF_pos_right(1)-(loomingSpeed*i)) round(RF_pos_right(2)+(loomingSpeed*i)) round(RF_pos_right(1)+(loomingSpeed*i))];

                    if dstRect_right(2)<0
                        dstRect_right = dstRect_last;
                    end

                    dstRect_last = dstRect_right;

                    % Define shifted srcRect that cuts out the properly shifted rectangular
                    % area from the texture:
                    srcRect_right=[xoffset_right 0 xoffset_right + visiblesize_right visiblesize_right];
                    %         src2Rect=[xoffset 0 xoffset + visible2size visible2size];

                    % Draw grating texture, rotated by "angle":
                    Screen('DrawTexture', w, gratingtex_right, srcRect_right, dstRect_right, curr_angle_right);

                    %                     if drawmask==1
                    % Draw aperture over grating:
                    Screen('DrawTexture', w, masktex_right, [0 0 visiblesize_right visiblesize_right], dstRect_right, curr_angle_right);
                    %                     end;
                    Screen('FillOval', w, uint8(white),[(display_resolution/2) 0 80+(display_resolution/2) 80]); % this is a small white circle on the bottom right corner of the right monitor


                    % Disable alpha-blending, restrict following drawing to alpha channel:
                    %                     Screen('Blendfunction', w, GL_ONE, GL_ZERO, [0 0 0 1]);

                    % Clear 'dstRect' region of framebuffers alpha channel to zero:
                    %                         Screen('FillRect', w, [0 0 0 0], dst2Rect);

                    % Fill circular 'dstRect' region with an alpha value of 255:
                    %         Screen('FillOval', w, [0 0 0 255], dst2Rect);

                    % Enable DeSTination alpha blending and reenable drawing to all
                    % color channels. Following drawing commands will only draw there
                    % the alpha value in the framebuffer is greater than zero, ie., in
                    % our case, inside the circular 'dst2Rect' aperture where alpha has
                    % been set to 255 by our 'FillOval' command:
                    %                     Screen('Blendfunction', w, GL_DST_ALPHA, GL_ONE_MINUS_DST_ALPHA, [1 1 1 1]);

                    % Restore alpha blending mode for next draw iteration:
                    %                     Screen('Blendfunction', w, GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
                    Screen('DrawingFinished',w);
                    %                     Screen('WaitBlanking',w,2)
                    % Flip 'waitframes' monitor refresh intervals after last redraw.
                    %                     vbl = Screen('Flip', w);
                    %if i==1; tic;end
                    vbl = Screen('Flip', w, vbl + (waitframes - 0.5) * ifi);
                    %if i==1; toc;end
                    %                     if i==1; toc; end
                end
                % Draw grey frame to blank grating.
                % Make a frame to blank out grating at end
                lj.write_analog(0);
                lj.write_digital(logical([0, 0]));

                Screen('DrawTexture', w, grayframe);
                Screen('Flip',w);
                %                 Screen('DrawTexture', z, grayframez);
                %                 Screen('Flip',z);
                pause(0.1)
                if loop_n>=size(stimOrder_running,2)
                    running=false;
                end

            elseif curr_stim==1
                while (GetSecs < vblendtime)
                    %                     if i==0; tic; end
                    % Shift the grating by "shiftperframe" pixels per frame:

                    xoffset_left = mod(i*shiftperframe_left,p_left);
                    i=i+1;

                    dstRect_left = [round(RF_pos_left(2)-(loomingSpeed*i)) round(RF_pos_left(1)-(loomingSpeed*i)) round(RF_pos_left(2)+(loomingSpeed*i)) round(RF_pos_left(1)+(loomingSpeed*i))];

                    if dstRect_left(2)<0
                        dstRect_left = dstRect_last;
                    end
                    dstRect_last = dstRect_left;
                    % Define shifted srcRect that cuts out the properly shifted rectangular
                    % area from the texture:
                    srcRect_left=[xoffset_left 0 xoffset_left + visiblesize_left visiblesize_left];
                    %         src2Rect=[xoffset 0 xoffset + visible2size visible2size];

                    % Draw grating texture, rotated by "angle":
                    Screen('DrawTexture', w, gratingtex_left, srcRect_left, dstRect_left, curr_angle_left);

                    %                     if drawmask==1
                    % Draw aperture over grating:
                    Screen('DrawTexture', w, masktex_left, [0 0 visiblesize_left visiblesize_left], dstRect_left, curr_angle_left);
                    %                     end;
                    Screen('FillOval', w, uint8(white),[0 0 80 80]); % this is a small white circle on the bottom right corner of the left monitor


                    % Disable alpha-blending, restrict following drawing to alpha channel:
                    %                     Screen('Blendfunction', w, GL_ONE, GL_ZERO, [0 0 0 1]);

                    % Clear 'dstRect' region of framebuffers alpha channel to zero:
                    %                         Screen('FillRect', w, [0 0 0 0], dst2Rect);

                    % Fill circular 'dstRect' region with an alpha value of 255:
                    %         Screen('FillOval', w, [0 0 0 255], dst2Rect);

                    % Enable DeSTination alpha blending and reenable drawing to all
                    % color channels. Following drawing commands will only draw there
                    % the alpha value in the framebuffer is greater than zero, ie., in
                    % our case, inside the circular 'dst2Rect' aperture where alpha has
                    % been set to 255 by our 'FillOval' command:
                    %                     Screen('Blendfunction', w, GL_DST_ALPHA, GL_ONE_MINUS_DST_ALPHA, [1 1 1 1]);

                    % Restore alpha blending mode for next draw iteration:
                    %                     Screen('Blendfunction', w, GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
                    Screen('DrawingFinished',w);
                    %                     Screen('WaitBlanking',w,2)
                    % Flip 'waitframes' monitor refresh intervals after last redraw.
                    % if i==1; tic;end
                    vbl = Screen('Flip', w, vbl + (waitframes - 0.5) * ifi);
                    % if i==1; toc;end
                    %                     vbl = Screen('Flip', w);
                end
                % Draw grey frame to blank grating.
                % Make a frame to blank out grating at end
                lj.write_analog(0);
                lj.write_digital(logical([0, 0]));
                Screen('DrawTexture', w, grayframe);
                Screen('Flip',w);
                %                 Screen('DrawTexture', z, grayframez);
                %                 Screen('Flip',z);
                pause(0.1)
                if loop_n>=size(stimOrder_running,2)
                    running=false;
                end

            elseif curr_stim==3
                while (GetSecs < vblendtime)

                    xoffset_right = mod(i*shiftperframe_right,p_right);
                    xoffset_left = mod(i*shiftperframe_left,p_left);
                    i=i+1;

                    dstRect_right = [round(RF_pos_right(2)-(loomingSpeed*i)) round(RF_pos_right(1)-(loomingSpeed*i)) round(RF_pos_right(2)+(loomingSpeed*i)) round(RF_pos_right(1)+(loomingSpeed*i))];
                    dstRect_left = [round(RF_pos_left(2)-(loomingSpeed*i)) round(RF_pos_left(1)-(loomingSpeed*i)) round(RF_pos_left(2)+(loomingSpeed*i)) round(RF_pos_left(1)+(loomingSpeed*i))];

                    if dstRect_right(2)<0
                        dstRect_right = dstRect_last_right;
                    end
                    dstRect_last_right = dstRect_right;

                    if dstRect_left(2)<0
                        dstRect_left = dstRect_last_left;
                    end
                    dstRect_last_left = dstRect_left;


                    srcRect_right=[xoffset_right 0 xoffset_right + visiblesize_right visiblesize_right];
                    srcRect_left=[xoffset_left 0 xoffset_left + visiblesize_left visiblesize_left];

                    Screen('DrawTexture', w, gratingtex_right, srcRect_right, dstRect_right, curr_angle_right);
                    %                     if drawmask==1
                    % Draw aperture over grating:
                    Screen('DrawTexture', w, masktex_right, [0 0 visiblesize_right visiblesize_right], dstRect_right, curr_angle_right);
                    %                     end;
                    % Disable alpha-blending, restrict following drawing to alpha channel:
                    %                     Screen('Blendfunction', w, GL_ONE, GL_ZERO, [0 0 0 1]);
                    %                     Screen('Blendfunction', w, GL_DST_ALPHA, GL_ONE_MINUS_DST_ALPHA, [1 1 1 1]);
                    % Restore alpha blending mode for next draw iteration:
                    %                     Screen('Blendfunction', w, GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
                    % Flip 'waitframes' monitor refresh intervals after last redraw.


                    Screen('DrawTexture', w, gratingtex_left, srcRect_left, dstRect_left, curr_angle_left);
                    Screen('DrawTexture', w, masktex_left, [0 0 visiblesize_left visiblesize_left], dstRect_left, curr_angle_left);
                    %                     Screen('Blendfunction', w, GL_ONE, GL_ZERO, [0 0 0 1]);
                    %                     Screen('Blendfunction', w, GL_DST_ALPHA, GL_ONE_MINUS_DST_ALPHA, [1 1 1 1]);
                    %                     Screen('Blendfunction', w, GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
                    Screen('FillOval', w, uint8(white),[0 0 80 80]); % this is a small white circle on the bottom right corner of the left monitor
                    Screen('FillOval', w, uint8(white),[(display_resolution/2) 0 80+(display_resolution/2) 80]); % this is a small white circle on the bottom right corner of the right monitor



                    Screen('DrawingFinished',w);
                    %                     if i==1; tic; end
                    % Screen('WaitBlanking',w,2)
                    %if i==1; tic;end
                    vbl = Screen('Flip',w, vbl + (waitframes - 0.5)* ifi);
                    % if i==1; toc;end
                    %                     vbl = Screen('Flip', w);
                    %                     vbl_2 = Screen('Flip',w, vbl_2 + (waitframes - 0.5)* ifi);
                    %                     vbl = Screen('Flip',w,vbl + (waitframes - 0.5)* ifi,[],2);
                    %                     vbl_2 = Screen('Flip',z,vbl_2 + (waitframes - 0.5)* ifi,[],2);
                    %                     vbl = Screen('Flip',w, vbl + (waitframes - 0.5)* ifi,[],[],1);
                    %                     vbl = Screen('Flip',z, vbl + (waitframes - 0.5)* ifi,[],1);
                    %                                         vbl = Screen('Flip',w);
                    %                                         vbl = Screen('Flip',z);
                    %                     if i==1; toc; end

                end
                % Draw grey frame to blank grating.
                % Make a frame to blank out grating at end
                lj.write_analog(0);
                lj.write_digital(logical([0, 0]));
                Screen('DrawTexture', w, grayframe);
                Screen('Flip',w);
                %                 Screen('DrawTexture', z, grayframez);
                %                 Screen('Flip',z);
                pause(0.1)
                if loop_n>=size(stimOrder_running,2)
                    running=false;
                end
            end
        end
    end


    Screen('CloseAll');
    ShowCursor;
    % toc;
    %% Save the datafile
    %     save([datestr(now,'yyyymmmmdd_HH.MM.SS') '_Exp_OptimalStim_RLB' '.mat'])
    %     diary off
    Priority(0);
catch
    %this "catch" section executes in case of an error in the "try" section
    %above. Importantly, it closes the onscreen window if its open.
    Screen('CloseAll');
    Priority(0);
    psychrethrow(psychlasterror);
    toc
    %% Save the datafile
    %     save([datestr(now,'yyyymmmmdd_HH.MM.SS') '_Exp_OptimalStim_RLB' '.mat'])
    %     diary off
end %try..catch..

