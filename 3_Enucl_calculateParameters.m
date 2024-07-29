%% Calculate parameters
% clear all;
% close all;

analyse = 4 %1=WT Sweep, 2=enuc Sweep, 3=WT Loom, 4 = Enuc Loom
cd('') % Path to analysis files
if analyse ==1
    random_trials = [1;2;3;4;6;7;9;10;11;12;13;14;16;17;18;20;21;22;23;24;26;27;28;29;30;32;33;34;35;36;37;38;39;40;41;42;44;46;48;50;51;52;53;54;55;56;57;58;59;60;61;62;63;65;66;67;68;69;70;71];

    % WT - sweep - all days
    Filenames = {
        'OpenField_2021-08-03 12-15-09_sweep_21392_resultQuantifications.mat'
        'OpenField_2021-08-03 12-35-50_sweep21393_resultQuantifications.mat'
        'OpenField_2021-08-03 12-59-00_sweep21394_resultQuantifications.mat'
        'OpenField_2021-11-02 11-25-18_25305_Sweep_resultQuantifications.mat'
        'OpenField_2021-11-02 11-46-40_25292_sweep_resultQuantifications.mat'
        'OpenField_2021-11-02 12-12-03_25302_sweep_resultQuantifications.mat'
        'OpenField_2021-11-02 12-41-39_25295_sweep_resultQuantifications.mat'
        'OpenField_2021-09-07 09-25-54_23719_sweep_resultQuantifications.mat'
        'OpenField_2021-09-07 09-56-11_23720_sweep_resultQuantifications.mat'
        'OpenField_2021-09-07 10-24-36_23721_sweep_resultQuantifications.mat'
        'OpenField_2021-09-07 11-12-02_23722_sweep_resultQuantifications.mat'
        'OpenField_2021-09-07 13-00-33_23736_sweep_resultQuantifications.mat'
        'OpenField_2021-09-07 13-25-01_23737_sweep_resultQuantifications.mat'
        'OpenField_2021-09-07 14-13-01_23728_sweep_resultQuantifications.mat'
        'OpenField_2021-09-07 14-37-23_23739_sweep_resultQuantifications.mat'
        'OpenField_2021-08-04 13-09-21_21392_sweep_resultQuantifications.mat'
        'OpenField_2021-08-04 13-40-28_21393_sweep_resultQuantifications.mat'
        'OpenField_2021-08-04 14-13-56_21394_sweep_resultQuantifications.mat'
        'OpenField_2021-11-03 11-05-40_25305_sweeep_resultQuantifications.mat'
        'OpenField_2021-11-03 11-43-14_25294_sweep_resultQuantifications.mat'
        'OpenField_2021-11-03 12-26-05_25302_sweep_resultQuantifications.mat'
        'OpenField_2021-11-03 12-51-15_25295_sweep_resultQuantifications.mat'
        'OpenField_2021-09-08 08-21-01_23719_sweep_resultQuantifications.mat'
        'OpenField_2021-09-08 08-49-47_23720_sweep_resultQuantifications.mat'
        'OpenField_2021-09-08 09-15-44_23721_sweep_resultQuantifications.mat'
        'OpenField_2021-09-08 10-03-36_23722_sweep_resultQuantifications.mat'
        'OpenField_2021-09-08 11-57-41_23736_sweep_resultQuantifications.mat'
        'OpenField_2021-09-08 12-58-22_23737_sweep_resultQuantifications.mat'
        'OpenField_2021-09-08 13-23-27_23728_sweep_resultQuantifications.mat'
        'OpenField_2021-09-08 13-57-08_23739_sweep_resultQuantifications.mat'
        'OpenField_2021-08-05 12-58-20_21392_sweep_resultQuantifications.mat'
        'OpenField_2021-08-05 13-26-20_21393_sweep_resultQuantifications.mat'
        'OpenField_2021-08-05 15-02-51_21394_sweep_resultQuantifications.mat'
        'OpenField_2021-11-05 12-19-44_23505_sweep_resultQuantifications.mat'
        'OpenField_2021-11-05 12-50-00_25294_sweep_resultQuantifications.mat'
        'OpenField_2021-11-05 13-27-34_25302_sweep_resultQuantifications.mat'
        'OpenField_2021-11-05 13-59-06_25295_sweep_resultQuantifications.mat'
        'OpenField_2021-09-09 09-30-14_23719_sweep_resultQuantifications.mat'
        'OpenField_2021-09-09 10-17-49_23720_sweep_resultQuantifications.mat'
        'OpenField_2021-09-09 10-54-27_23721_sweep_resultQuantifications.mat'
        'OpenField_2021-09-09 11-31-59_23722_sweep_resultQuantifications.mat'
        'OpenField_2021-09-10 12-59-55_23736_sweep_resultQuantifications.mat'
        'OpenField_2021-09-10 13-38-17_23737_sweep_resultQuantifications.mat'
        'OpenField_2021-09-10 14-07-07_23738_sweep_resultQuantifications.mat'
        'OpenField_2021-09-10 14-31-17_23739_sweep_resultQuantifications.mat'
        'OpenField_2021-08-06 10-34-18_21392_sweep_resultQuantifications.mat'
        'OpenField_2021-08-06 11-16-51_21393_sweep_resultQuantifications.mat'
        'OpenField_2021-08-06 11-55-29_21394_sweep_resultQuantifications.mat'
        'OpenField_2021-11-08 14-36-01_25305_sweep_resultQuantifications.mat'
        'OpenField_2021-11-08 15-08-19_25294_sweep_resultQuantifications.mat'
        'OpenField_2021-11-08 15-41-52_25302_sweep_resultQuantifications.mat'
        'OpenField_2021-11-08 16-10-03_25295_sweep_resultQuantifications.mat'
        'OpenField_2021-09-10 15-14-19_23719_sweep_resultQuantifications.mat'
        'OpenField_2021-09-10 15-41-19_23720_sweep_resultQuantifications.mat'
        'OpenField_2021-09-10 16-08-20_23721_sweep_resultQuantifications.mat'
        'OpenField_2021-09-10 16-39-45_23722_sweep_resultQuantifications.mat'
        'OpenField_2021-09-13 08-58-56_23726_sweep_resultQuantifications.mat'
        'OpenField_2021-09-13 09-37-46_23737_sweep_resultQuantifications.mat'
        'OpenField_2021-09-13 10-23-01_23738_sweep_resultQuantifications.mat'
        'OpenField_2021-09-13 10-56-09_23739_sweep_resultQuantifications.mat'
        'OpenField_2021-08-09 14-57-26_21392_Sweep_resultQuantifications.mat'
        'OpenField_2021-08-09 15-20-30_21393_sweep_resultQuantifications.mat'
        'OpenField_2021-08-09 15-46-59_21394_sweep_resultQuantifications.mat'
        'NaN'
        'OpenField_2021-11-09 11-01-21_25294_sweep_resultQuantifications.mat'
        'OpenField_2021-11-09 12-36-57_25302_sweep_resultQuantifications.mat'
        'OpenField_2021-11-09 11-28-40_25295_sweep_resultQuantifications.mat'
        'OpenField_2021-09-13 11-29-23_23719_sweep_resultQuantifications.mat'
        'OpenField_2021-09-13 12-28-34_23720_sweep_resultQuantifications.mat'
        'OpenField_2021-09-13 11-56-44_23721_sweep_resultQuantifications.mat'
        'OpenField_2021-09-13 12-55-14_23722_sweep_resultQuantifications.mat'
        'NaN'
        'NaN'
        'NaN'
        'NaN'};

    [C,ia,ic] = unique(Filenames);
    a_counts = accumarray(ic,1);

    refuge_periods = [
        NaN	NaN
        NaN	NaN
        NaN	NaN
        26511	27396
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        28913	25932
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        28133	28212
        NaN	NaN
        NaN	NaN
        NaN	NaN
        30210	32335
        NaN	NaN
        NaN	NaN
        44058	58127
        NaN	NaN
        NaN	NaN
        NaN	NaN
        30659	31378
        NaN	NaN
        85849	87469
        NaN	NaN
        30793	32326
        NaN	NaN
        NaN	NaN
        NaN	NaN
        25774	29062
        26479	27972
        29123	31874
        37655	52655
        29925	31112
        32991	35126
        23096	23794
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        24094	26859
        NaN	NaN
        NaN	NaN
        30821	30999
        24842	24965
        NaN	NaN
        27917	32434
        38824	48325
        29415	30050
        33929	34912
        31216	31792
        NaN	NaN
        NaN	NaN
        32827	32967
        NaN	NaN
        NaN	NaN
        62240	64579
        NaN	NaN
        NaN	NaN
        NaN	NaN
        26987	27406
        27441	27852
        33764	35633
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN];

    startanalysisFrame =[22997
        28300
        32361
        23820
        32541
        26892
        25597
        21537
        43333
        24769
        26614
        21033
        22872
        24925
        28429
        22646
        22339
        20478
        25610
        25359
        32091
        26261
        27653
        21256
        23562
        41751
        21005
        22236
        34565
        28333
        30476
        83378
        24231
        28251
        34538
        29374
        26282
        23512
        24138
        26831
        35302
        27650
        30708
        20812
        22644
        21379
        29966
        23360
        21794
        62248
        49682
        28331
        22395
        32401
        25488
        36536
        27145
        31441
        28741
        29480
        20467
        30262
        24894
        NaN
        59974
        24937
        34409
        24673
        24502
        25022
        31350
        NaN
        NaN
        NaN
        NaN];

    freeze_periods=[25327	25585	NaN	NaN	NaN	NaN
        30570	31814	NaN	NaN	NaN	NaN
        34661	34841	NaN	NaN	NaN	NaN
        26080	26200	26250	26440	NaN	NaN
        34811	35531	NaN	NaN	NaN	NaN
        29158	29401	NaN	NaN	NaN	NaN
        27917	28204	NaN	NaN	NaN	NaN
        23810	24230	NaN	NaN	NaN	NaN
        45632	46402	NaN	NaN	NaN	NaN
        27036	27566	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        23291	23632	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        27257	27841	NaN	NaN	NaN	NaN
        30711	31322	NaN	NaN	NaN	NaN
        24916	24991	NaN	NaN	NaN	NaN
        24592	24898	NaN	NaN	NaN	NaN
        22738	22865	22973	23092	NaN	NaN
        27882	28052	NaN	NaN	NaN	NaN
        27633	28019	NaN	NaN	NaN	NaN
        34360	34571	34661	34920	NaN	NaN
        28530	29112	NaN	NaN	NaN	NaN
        29910	30163	NaN	NaN	NaN	NaN
        23534	23879	NaN	NaN	NaN	NaN
        25822	26082	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        23278	23597	NaN	NaN	NaN	NaN
        24503	24908	NaN	NaN	NaN	NaN
        36834	36934	37005	43536	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        32756	32820	33090	33210	NaN	NaN
        85640	85774	NaN	NaN	NaN	NaN
        26504	26762	NaN	NaN	NaN	NaN
        30516	30738	NaN	NaN	NaN	NaN
        36800	36999	NaN	NaN	NaN	NaN
        31639	31955	NaN	NaN	NaN	NaN
        28544	28944	NaN	NaN	NaN	NaN
        25677	25742	NaN	NaN	NaN	NaN
        26410	26454	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        37560	37624	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        24994	25954	NaN	NaN	NaN	NaN
        23689	23968	NaN	NaN	NaN	NaN
        32302	32815	NaN	NaN	NaN	NaN
        25631	25745	25859	26048	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        64521	64841	NaN	NaN	NaN	NaN
        52055	52305	NaN	NaN	NaN	NaN
        30685	30741	NaN	NaN	NaN	NaN
        24649	24794	NaN	NaN	NaN	NaN
        34699	36751	NaN	NaN	NaN	NaN
        27748	27892	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        33704	33895	NaN	NaN	NaN	NaN
        31010	31136	NaN	NaN	NaN	NaN
        31754	31997	NaN	NaN	NaN	NaN
        22728	22887	22888	23308	NaN	NaN
        32542	32642	32683	32743	NaN	NaN
        27204	27635	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        27231	27628	NaN	NaN	NaN	NaN
        36848	37285	NaN	NaN	NaN	NaN
        26941	27171	NaN	NaN	NaN	NaN
        26763	26956	NaN	NaN	NaN	NaN
        27293	27390	NaN	NaN	NaN	NaN
        33601	33727	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN];

    escape_periods = [NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        26440	26510	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        28868	28912	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	22865	22973
        28053	28132	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	34572	34661
        NaN	NaN	NaN	NaN
        30163	30209	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        44014	44057	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	36935	37004
        30638	30658	NaN	NaN
        NaN	NaN	NaN	NaN
        85777	85849	NaN	NaN
        NaN	NaN	NaN	NaN
        30739	30792	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        25763	25772	NaN	NaN
        26455	26478	NaN	NaN
        29098	29122	NaN	NaN
        37625	37654	NaN	NaN
        29904	29924	NaN	NaN
        32965	32990	NaN	NaN
        23073	23095	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	32248	32302
        NaN	NaN	25746	25858
        24065	24093	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	30742	30821
        24795	24841	NaN	NaN
        NaN	NaN	NaN	NaN
        27893	27916	NaN	NaN
        38799	38823	NaN	NaN
        29405	29414	NaN	NaN
        33896	33928	NaN	NaN
        31137	31216	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        32747	32827	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        62228	62239	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	36707	36847
        NaN	NaN	NaN	NaN
        26956	26986	NaN	NaN
        27391	27440	NaN	NaN
        33728	33763	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN];

elseif analyse ==2
    random_trials = [1;2;3;4;5;6;7;8;9;11;12;13;14;15;16;17;19;20;21;22;23;24;26;27;28;29;30;31;32;33;34;35;36;37;38;39;40;41;42;43;44;45;46;48;49;50;51;52;53;54;55;56;58;59;60;61;62;63;64;65];

    % % enucleated - sweep - all days
    Filenames = {
        'OpenField_2021-07-13 09-25-22_sweep_21916_resultQuantifications.mat'
        'OpenField_2021-07-13 09-42-30_sweep_21917_resultQuantifications.mat'
        'OpenField_2021-07-13 10-07-20_sweep_87_resultQuantifications.mat'
        'OpenField_2021-07-13 10-25-30_sweep_88_resultQuantifications.mat'
        'OpenField_2021-07-13 10-44-45_sweep_89_resultQuantifications.mat'
        'OpenField_2021-08-04 14-41-03_22582_sweep_enuc_resultQuantifications.mat'
        'OpenField_2021-08-04 15-21-02_22583_sweep_resultQuantifications.mat'
        'OpenField_2021-08-19 11-33-54_22584-sweep_resultQuantifications.mat'
        'OpenField_2021-08-19 12-00-48_22585_sweep_resultQuantifications.mat'
        'OpenField_2021-08-19 12-26-00_22734_sweep_resultQuantifications.mat'
        'OpenField_2021-08-19 13-20-18_22735_sweep_resultQuantifications.mat'
        'OpenField_2021-09-01 13-30-22_23387_sweep_resultQuantifications.mat'
        'OpenField_2021-09-01 13-50-32_23388_sweep_resultQuantifications.mat'
        'OpenField_2021-11-02 09-37-03_25303_sweep_resultQuantifications.mat'
        'OpenField_2021-11-02 10-03-22_25292_sweep_resultQuantifications.mat'
        'OpenField_2021-11-02 10-25-41_25304_sweep_resultQuantifications.mat'
        'OpenField_2021-11-02 10-49-08_25293_sweep_resultQuantifications.mat'
        'NaN'
        'OpenField_2021-08-05 15-59-15_22583_sweep_resultQuantifications.mat'
        'OpenField_2021-08-20 12-03-08_22584_sweep_resultQuantifications.mat'
        'OpenField_2021-08-20 12-26-26_22585_sweep_resultQuantifications.mat'
        'OpenField_2021-08-20 12-59-39_22734_sweep_resultQuantifications.mat'
        'OpenField_2021-08-20 13-37-15_22735_sweep_resultQuantifications.mat'
        'OpenField_2021-09-02 13-10-13_23387_sweep_resultQuantifications.mat'
        'OpenField_2021-09-02 13-32-05_23388_sweep_resultQuantifications.mat'
        'OpenField_2021-11-03 09-25-09_25303_sweep_resultQuantifications.mat'
        'OpenField_2021-11-03 09-50-08_25292_sweep_resultQuantifications.mat'
        'OpenField_2021-11-03 10-32-44_25304_sweep_resultQuantifications.mat'
        'OpenField_2021-11-03 10-11-54_25293_sweep_resultQuantifications.mat'
        'OpenField_2021-08-06 12-22-32_22582_sweep_resultQuantifications.mat'
        'OpenField_2021-08-06 12-47-48_22583_sweep_resultQuantifications.mat'
        'OpenField_2021-08-27 13-43-40_22584_sweep_resultQuantifications.mat'
        'OpenField_2021-08-27 14-19-39_22585_sweep_resultQuantifications.mat'
        'OpenField_2021-08-27 15-04-15_22734_sweep_resultQuantifications.mat'
        'OpenField_2021-08-27 15-31-10_22735_sweep_resultQuantifications.mat'
        'OpenField_2021-09-03 11-23-1_23387_sweep_resultQuantifications.mat'
        'OpenField_2021-09-03 11-46-02_23388_sweep_resultQuantifications.mat'
        'OpenField_2021-11-05 10-47-05_25303_sweep_resultQuantifications.mat'
        'OpenField_2021-11-05 11-09-11_25292_sweep_resultQuantifications.mat'
        'OpenField_2021-11-05 11-30-01_25293_sweep_resultQuantifications.mat'
        'OpenField_2021-11-05 11-50-32_25304_sweep_resultQuantifications.mat'
        'OpenField_2021-08-09 16-14-20_22582_sweep_resultQuantifications.mat'
        'OpenField_2021-08-09 16-47-17_22583_sweep_resultQuantifications.mat'
        'OpenField_2021-08-30 11-23-35_22584_sweep_resultQuantifications.mat'
        'OpenField_2021-08-30 12-25-38_22585_sweep_resultQuantifications.mat'
        'OpenField_2021-08-30 12-48-36_22734_sweep_resultQuantifications.mat'
        'OpenField_2021-08-30 13-15-07_22735_sweep_resultQuantifications.mat'
        'OpenField_2021-09-06 11-32-16_23387_sweep_resultQuantifications.mat'
        'OpenField_2021-09-06 11-55-27_23388_sweep_resultQuantifications.mat'
        'OpenField_2021-11-08 12-14-14_25303_sweep_resultQuantifications.mat'
        'OpenField_2021-11-08 12-37-34_25292_sweep_resultQuantifications.mat'
        'OpenField_2021-11-08 13-22-55_25304_sweep_resultQuantifications.mat'
        'OpenField_2021-11-08 13-00-49_25293_sweep_resultQuantifications.mat'
        'OpenField_2021-08-10 15-09-56_22582_sweep_resultQuantifications.mat'
        'OpenField_2021-08-10 15-41-52_22583_sweep_resultQuantifications.mat'
        'OpenField_2021-08-31 10-22-45_22584_sweep_resultQuantifications.mat'
        'OpenField_2021-08-31 10-51-50_22585_sweep_resultQuantifications.mat'
        'OpenField_2021-08-31 11-17-22_22734_sweep_resultQuantifications.mat'
        'OpenField_2021-08-31 11-39-28_22735_sweep_resultQuantifications.mat'
        'OpenField_2021-09-07 15-07-26_23387_sweep_resultQuantifications.mat'
        'OpenField_2021-09-07 15-30-22_23388_sweep_resultQuantifications.mat'
        'OpenField_2021-11-09 08-59-41_25303_sweep_resultQuantifications.mat'
        'OpenField_2021-11-09 09-22-16_25292_sweep_resultQuantifications.mat'
        'OpenField_2021-11-09 10-11-59_25304_sweep_resultQuantifications.mat'
        'OpenField_2021-11-09 09-48-47_25293_sweep_resultQuantifications.mat'};
    [C,ia,ic] = unique(Filenames);
    a_counts = accumarray(ic,1);

    refuge_periods = [NaN NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        35639	43562
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        23343	23618
        24363	27916
        27073	27065
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        29164	30125
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        25156	26646
        32530	33423
        35887	36623
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        24024	25381
        30699	30772
        38516	38927
        NaN	NaN
        31201	31764];

    startanalysisFrame =[22941
        25110
        26265
        33269
        23004
        33274
        23779
        21481
        21720
        90348
        20952
        22712
        21542
        23053
        20837
        25760
        22913
        30900
        24305
        21794
        26474
        23367
        21178
        20687
        21846
        24593
        23362
        23936
        21501
        28071
        20905
        25488
        24512
        25790
        22256
        28853
        26863
        24474
        26722
        22826
        22222
        26850
        22731
        32943
        24222
        25370
        21295
        20957
        22766
        30075
        33464
        33786
        21043
        41921
        22281
        30037
        21530
        21697
        33751
        22453
        21522
        28197
        36159
        28321
        28623];

    freeze_periods = [25242	25548	NaN	NaN	NaN	NaN
        27367	27659	27660	27754	NaN	NaN
        28723	28807	NaN	NaN	NaN	NaN
        35520	35870	NaN	NaN	NaN	NaN
        25304	25444	25445	25494	NaN	NaN
        35534	35598	NaN	NaN	NaN	NaN
        26061	26357	NaN	NaN	NaN	NaN
        23741	24137	NaN	NaN	NaN	NaN
        24002	24387	NaN	NaN	NaN	NaN
        92644	93574	NaN	NaN	NaN	NaN
        23318	23701	NaN	NaN	NaN	NaN
        25082	25372	NaN	NaN	NaN	NaN
        23619	24149	NaN	NaN	NaN	NaN
        25319	25362	25384	25649	NaN	NaN
        23135	23604	NaN	NaN	NaN	NaN
        28084	28372	28373	28604	NaN	NaN
        25202	25662	NaN	NaN	NaN	NaN
        33157	33239	33427	33532	NaN	NaN
        26652	27012	NaN	NaN	NaN	NaN
        24098	24348	NaN	NaN	NaN	NaN
        28744	28834	NaN	NaN	NaN	NaN
        25677	25937	NaN	NaN	NaN	NaN
        23528	23798	NaN	NaN	NaN	NaN
        22953	23203	NaN	NaN	NaN	NaN
        24136	24292	NaN	NaN	NaN	NaN
        26857	26992	NaN	NaN	NaN	NaN
        25659	25899	NaN	NaN	NaN	NaN
        26204	26204	26334	26544	NaN	NaN
        23791	23923	NaN	NaN	NaN	NaN
        30341	30401	NaN	NaN	NaN	NaN
        23208	23498	NaN	NaN	NaN	NaN
        27779	27949	28038	28237	NaN	NaN
        26777	26817	26847	26936	NaN	NaN
        28060	28090	NaN	NaN	NaN	NaN
        24601	24735	NaN	NaN	NaN	NaN
        31136	31367	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        26736	26828	NaN	NaN	NaN	NaN
        28988	29168	29198	29408	NaN	NaN
        25091	25210	NaN	NaN	NaN	NaN
        24473	24663	24693	24793	NaN	NaN
        29130	29200	29221	29349	NaN	NaN
        24991	25101	25128	25338	NaN	NaN
        35208	35287	NaN	NaN	NaN	NaN
        26572	26653	NaN	NaN	NaN	NaN
        27650	27670	27700	27810	27811	28220
        23595	23729	NaN	NaN	NaN	NaN
        23230	23410	NaN	NaN	NaN	NaN
        25036	25116	NaN	NaN	NaN	NaN
        32338	32478	NaN	NaN	NaN	NaN
        35730	25827	NaN	NaN	NaN	NaN
        36126	36359	NaN	NaN	NaN	NaN
        23313	23423	23579	23751	NaN	NaN
        44189	44236	44236	44306	NaN	NaN
        24571	24691	24692	24836	NaN	NaN
        32291	32397	32398	32557	NaN	NaN
        23800	23888	23928	24032	NaN	NaN
        23980	24065	24126	24327	NaN	NaN
        36019	36049	NaN	NaN	NaN	NaN
        24816	24934	NaN	NaN	NaN	NaN
        23781	23983	NaN	NaN	NaN	NaN
        30473	30643	NaN	NaN	NaN	NaN
        38466	38486	NaN	NaN	NaN	NaN
        30631	30661	30711	30825	NaN	NaN
        30883	31065	NaN	NaN	NaN	NaN];

    escape_periods = [NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        35599	35638	NaN	NaN
        NaN	NaN	26043	26060
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	25363	25383
        NaN	NaN	23103	23134
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	33367	33427
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        23303	23342	NaN	NaN
        24293	24362	NaN	NaN
        26993	27072	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	27950	28037
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        29114	29163	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	29169	29198
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        25117	25156	NaN	NaN
        32479	32529	NaN	NaN
        35828	35887	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	23424	23493
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        23983	24023	23782	23780
        30344	30698	NaN	NaN
        38487	38515	NaN	NaN
        NaN	NaN	NaN	NaN
        31101	31201	NaN	NaN];

elseif analyse ==3
    random_trials = [1;2;3;6;7;8;9;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;27;28;29;30;31;32;33;37;38;39;40;43;44;45;46;47;48;50;51;53;54;56;57;58;60;61;62;63;66;67;69;70;71];

    % WT - Loom - all days
    Filenames = {
        'OpenField_2021-08-03 12-24-08_loom_21392_resultQuantifications.mat'
        'OpenField_2021-08-03 12-45-54_loom21393_resultQuantifications.mat'
        'OpenField_2021-08-03 13-09-58_loom21394_resultQuantifications.mat'
        'OpenField_2021-11-02 11-34-27_25305_loom_resultQuantifications.mat'
        'OpenField_2021-11-02 11-57-51_25292_loom_resultQuantifications.mat'
        'OpenField_2021-11-02 12-22-05_25302_loom_resultQuantifications.mat'
        'OpenField_2021-11-02 12-51-02_25295_loom_resultQuantifications.mat'
        'OpenField_2021-09-07 09-34-22_23719_loom_resultQuantifications.mat'
        'OpenField_2021-09-07 10-09-27_23720_loom_resultQuantifications.mat'
        'OpenField_2021-09-07 10-33-54_23721_loom_resultQuantifications.mat'
        'OpenField_2021-09-07 11-22-26_23722_loom_resultQuantifications.mat'
        'OpenField_2021-09-07 13-09-14_23736_loom_resultQuantifications.mat'
        'OpenField_2021-09-07 13-34-18_23737_loom_resultQuantifications.mat'
        'OpenField_2021-09-07 14-22-19_23728_loom_resultQuantifications.mat'
        'OpenField_2021-09-07 14-47-26_23739_loom_resultQuantifications.mat'
        'OpenField_2021-08-04 13-18-12_21962_Loom_resultQuantifications.mat'
        'OpenField_2021-08-04 13-49-06_21393_loom_resultQuantifications.mat'
        'OpenField_2021-08-04 14-22-09_21394_loom_resultQuantifications.mat'
        'OpenField_2021-11-03 11-15-30_25305_loom_resultQuantifications.mat'
        'OpenField_2021-11-03 11-55-27_25294_loom_resultQuantifications.mat'
        'OpenField_2021-11-03 12-36-54_25302_loom_resultQuantifications.mat'
        'OpenField_2021-11-03 13-01-01_25295_loom_resultQuantifications.mat'
        'OpenField_2021-09-08 08-31-03_23719_loom_resultQuantifications.mat'
        'OpenField_2021-09-08 08-58-27_23720_loom_resultQuantifications.mat'
        'OpenField_2021-09-08 09-24-38_23721_loom_resultQuantifications.mat'
        'NaN'
        'OpenField_2021-09-08 12-06-09_23736_loom_resultQuantifications.mat'
        'OpenField_2021-09-08 13-07-00_23737_loom_resultQuantifications.mat'
        'OpenField_2021-09-08 13-34-45_23738_loom_resultQuantifications.mat'
        'OpenField_2021-09-08 14-07-06_23739_loom_resultQuantifications.mat'
        'OpenField_2021-08-05 13-08-49_21392_loom_resultQuantifications.mat'
        'OpenField_2021-08-05 13-48-32_21393_loom_resultQuantifications.mat'
        'OpenField_2021-08-05 15-12-01_21394_loom_resultQuantifications.mat'
        'OpenField_2021-11-05 12-29-45_23505_loom_resultQuantifications.mat'
        'OpenField_2021-11-05 13-01-39_25294_loom_resultQuantifications.mat'
        'OpenField_2021-11-05 13-37-46_25302_loom_resultQuantifications.mat'
        'OpenField_2021-11-05 14-09-03_25295_loom_resultQuantifications.mat'
        'OpenField_2021-09-09 09-39-12_23819_loom_resultQuantifications.mat'
        'OpenField_2021-09-09 10-27-44_23720_loom_resultQuantifications.mat'
        'OpenField_2021-09-09 11-04-52_23721_loom_resultQuantifications.mat'
        'NaN'
        'NaN'
        'OpenField_2021-09-10 13-48-52_23737_loom_resultQuantifications.mat'
        'OpenField_2021-09-10 14-15-30_23738_loom_resultQuantifications.mat'
        'OpenField_2021-09-10 14-40-03_23739_loom_resultQuantifications.mat'
        'OpenField_2021-08-06 10-42-44_21392_loom_resultQuantifications.mat'
        'OpenField_2021-08-06 11-27-55_21393_loom_resultQuantifications.mat'
        'OpenField_2021-08-06 12-04-43_21394_loom_resultQuantifications.mat'
        'NaN'
        'OpenField_2021-11-08 15-25-23_25294_loom_resultQuantifications.mat'
        'OpenField_2021-11-08 15-56-56_25302_loom_resultQuantifications.mat'
        'OpenField_2021-11-08 16-20-19_25295_loom_resultQuantifications.mat'
        'OpenField_2021-09-10 15-23-41_23719_loom_resultQuantifications.mat'
        'OpenField_2021-09-10 15-52-44_23720_loom_resultQuantifications.mat'
        'OpenField_2021-09-10 16-18-09_23721_loom_resultQuantifications.mat'
        'OpenField_2021-09-10 16-53-00_23722_loom_resultQuantifications.mat'
        'OpenField_2021-09-13 09-08-39_23736_loom_resultQuantifications.mat'
        'OpenField_2021-09-13 09-48-23_23737_loom_resultQuantifications.mat'
        'OpenField_2021-09-13 10-34-16_23738_loom_resultQuantifications.mat'
        'OpenField_2021-09-13 11-10-05_23739_loom_resultQuantifications.mat'
        'OpenField_2021-08-09 15-05-56_21392_loom_resultQuantifications.mat'
        'OpenField_2021-08-09 15-30-46_21393_loom_resultQuantifications.mat'
        'OpenField_2021-08-09 15-56-14_21394_loom_resultQuantifications.mat'
        'NaN'
        'NaN'
        'OpenField_2021-11-09 12-46-17_25302_loom_resultQuantifications.mat'
        'OpenField_2021-11-09 11-40-11_25295_loom_resultQuantifications.mat'
        'OpenField_2021-09-13 11-38-48_23719_loom_resultQuantifications.mat'
        'OpenField_2021-09-13 12-38-39_23720_loom_resultQuantifications.mat'
        'OpenField_2021-09-13 12-05-57_23721_loom_resultQuantifications.mat'
        'OpenField_2021-09-13 13-06-05_23722_loom_resultQuantifications.mat'
        'NaN'
        'NaN'
        'NaN'
        'NaN'};
    [C,ia,ic] = unique(Filenames);
    a_counts = accumarray(ic,1);

    refuge_periods = [4545	5179
        9264	11255
        9317	15950
        11280	19119
        NaN	NaN
        4332	5689
        7827	16278
        5161	19206
        3144	13113
        6075	20599
        6063	20409
        12094	16537
        NaN	NaN
        7363	10160
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        15181	19918
        37302	51675
        NaN	NaN
        NaN	NaN
        8080	27607
        9440	11325
        10410	21491
        NaN	NaN
        64218	65991
        19914	34366
        NaN	NaN
        8404	10158
        NaN	NaN
        82736	85130
        NaN	NaN
        7753	13099
        NaN	NaN
        NaN	NaN
        12070	12671
        6842	13699
        6638	9031
        22911	30578
        NaN	NaN
        NaN	NaN
        14941	19382
        3158	3963
        37512	40553
        NaN	NaN
        29879	30909
        11770	12393
        NaN	NaN
        40837	41795
        2935	3692
        7911	8452
        17460	17855
        7140	10360
        17020	18459
        65242	70119
        9659	10556
        21760	23117
        35505	36802
        7385	8839
        NaN	NaN
        11959	12323
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        7532	7878
        3895	4610
        17105	18108
        5926	6551
        3671	4512
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN];

    startanalysisFrame =[2210
        6956
        7030
        9005
        8221
        2037
        5548
        2875
        861
        3664
        3762
        9803
        4554
        5069
        3494
        8977
        24074
        4594
        12901
        35023
        5450
        5209
        5781
        7168
        8126
        NaN
        61939
        17626
        12056
        6113
        14651
        80335
        4464
        5444
        39358
        5334
        9779
        4554
        4369
        20610
        -2250
        -2250
        12656
        877
        35180
        1911
        27595
        9425
        NaN
        38528
        642
        5648
        15172
        4847
        14749
        62965
        7379
        19477
        33219
        5076
        2105
        9627
        10604
        NaN
        NaN
        2673
        5192
        1611
        14814
        3639
        1395
        NaN
        NaN
        NaN
        NaN];

    freeze_periods=[
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        10512	13263	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        5960	6059	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        6846	7635	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        5786	6441	NaN	NaN	NaN	NaN
        11237	11391	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        6869	7139	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        7716	7806	NaN	NaN	NaN	NaN
        7477	7505	7531	7675	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        14733	16832	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        16907	17017	NaN	NaN	NaN	NaN
        82633	82700	NaN	NaN	NaN	NaN
        6736	7129	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        41617	41783	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        4208	4261	4351	4531	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        11675	11720	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        4427	4571	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        12915	13073	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        4942	4994	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        ];

    escape_periods = [4474	4544	NaN	NaN
        NaN	NaN	NaN	NaN
        9292	9317	NaN	NaN
        11266	11279	NaN	NaN
        NaN	NaN	10481	10511
        4295	4331	NaN	NaN
        7809	7826	NaN	NaN
        5136	5160	NaN	NaN
        3123	3143	NaN	NaN
        6059	6074	5926	5959
        6013	6062	NaN	NaN
        12063	12093	NaN	NaN
        NaN	NaN	6815	6845
        7330	7362	NaN	NaN
        NaN	NaN	5755	5785
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        15060	15180	NaN	NaN
        37285	37301	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        8041	8079	NaN	NaN
        9424	9439	NaN	NaN
        10383	10409	NaN	NaN
        NaN	NaN	NaN	NaN
        64203	64217	NaN	NaN
        19888	19913	NaN	NaN
        NaN	NaN	14314	13372
        8373	8403	NaN	NaN
        NaN	NaN	NaN	NaN
        82700	82736	82595	82633
        NaN	NaN	NaN	NaN
        7703	7753	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	7596	7666
        12043	12069	NaN	NaN
        6818	6841	NaN	NaN
        6622	6637	NaN	NaN
        22870	22910	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        14917	14940	NaN	NaN
        3136	3157	NaN	NaN
        37441	37511	NaN	NaN
        NaN	NaN	4262	4351
        29857	29879	NaN	NaN
        11721	11770	NaN	NaN
        NaN	NaN	NaN	NaN
        40788	40837	NaN	NaN
        2904	2934	NaN	NaN
        7910	7940	NaN	NaN
        17436	17459	NaN	NaN
        7106	7140	NaN	NaN
        17006	17019	NaN	NaN
        65226	65241	NaN	NaN
        9638	9658	NaN	NaN
        21737	21759	NaN	NaN
        35477	35504	NaN	NaN
        7332	7384	NaN	NaN
        NaN	NaN	4363	4427
        11897	11959	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        7452	7531	NaN	NaN
        3870	3894	NaN	NaN
        17074	17104	NaN	NaN
        5908	5925	NaN	NaN
        3652	3670	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        ];

elseif analyse ==4

    random_trials = [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;17;18;20;21;22;23;24;25;26;29;30;31;32;35;36;37;38;39;40;41;43;45;46;47;48;49;50;51;53;54;55;56;57;58;59;61;62;63;64;65];

    % Enuc - Loom - all days
    Filenames = {
        'OpenField_2021-07-13 09-34-25_loom_21916_resultQuantifications.mat'
        'OpenField_2021-07-13 09-58-26_loom2_21917_resultQuantifications.mat'
        'OpenField_2021-07-13 10-17-07_loom_87_resultQuantifications.mat'
        'OpenField_2021-07-13 10-36-38_loom_88_resultQuantifications.mat'
        'OpenField_2021-07-13 10-59-47_loom2_89_resultQuantifications.mat'
        'OpenField_2021-08-04 14-52-35_22582_loom_enuc_resultQuantifications.mat'
        'OpenField_2021-08-04 15-30-03_22583_loom_resultQuantifications.mat'
        'OpenField_2021-09-01 13-43-04_23387_combi_resultQuantifications.mat'
        'OpenField_2021-08-19 12-09-18_22585_loom_resultQuantifications.mat'
        'OpenField_2021-08-19 12-50-23_22734_loom_resultQuantifications.mat'
        'OpenField_2021-08-19 13-28-41_22735_loom_resultQuantifications.mat'
        'OpenField_2021-09-01 13-39-05_23387_loom_resultQuantifications.mat'
        'OpenField_2021-09-01 13-59-00_23388_loom_resultQuantifications.mat'
        'OpenField_2021-11-02 09-46-00_25303_loom_resultQuantifications.mat'
        'OpenField_2021-11-02 10-11-59_25292_loom_resultQuantifications.mat'
        'OpenField_2021-11-02 10-35-21_25304_loom_resultQuantifications.mat'
        'OpenField_2021-11-02 10-58-20_25293_loom_resultQuantifications.mat'
        'OpenField_2021-08-05 15-40-12_22582_loom_resultQuantifications.mat'
        'OpenField_2021-08-05 16-08-34_22583_loom_resultQuantifications.mat'
        'OpenField_2021-08-20 12-11-55_22584_loom_resultQuantifications.mat'
        'OpenField_2021-08-20 12-36-02_22585_loom_resultQuantifications.mat'
        'OpenField_2021-08-20 13-08-30_22734_loom_resultQuantifications.mat'
        'OpenField_2021-08-20 13-45-36_22735_loom_resultQuantifications.mat'
        'OpenField_2021-09-02 13-18-27_23387_loom_resultQuantifications.mat'
        'OpenField_2021-09-02 13-41-07_23388_loom_resultQuantifications.mat'
        'OpenField_2021-11-03 09-34-36_25303_loom_resultQuantifications.mat'
        'OpenField_2021-11-03 09-59-26_25292_loom_resultQuantifications.mat'
        'OpenField_2021-11-03 10-41-46_25304_loom_resultQuantifications.mat'
        'OpenField_2021-11-03 10-20-34_25293_loom_resultQuantifications.mat'
        'OpenField_2021-08-06 12-32-30_22582_loom_resultQuantifications.mat'
        'OpenField_2021-08-06 12-56-09_22583_loom_resultQuantifications.mat'
        'OpenField_2021-08-27 13-53-51_22584_loom_resultQuantifications.mat'
        'OpenField_2021-08-27 14-28-47_22585_loom_resultQuantifications.mat'
        'OpenField_2021-08-27 15-13-45_22734_loom_resultQuantifications.mat'
        'OpenField_2021-08-27 15-39-48_22735_loom_resultQuantifications.mat'
        'OpenField_2021-09-03 11-33-18_23387_loom_resultQuantifications.mat'
        'OpenField_2021-09-03 11-56-51_23388_loom_resultQuantifications.mat'
        'OpenField_2021-11-05 10-56-50_25303_loom_resultQuantifications.mat'
        'OpenField_2021-11-05 11-18-49_25292_loom_resultQuantifications.mat'
        'OpenField_2021-11-05 11-38-49_25293_loom_resultQuantifications.mat'
        'OpenField_2021-11-05 11-59-19_25304_loom_resultQuantifications.mat'
        'OpenField_2021-08-09 16-23-58_22582_loom_resultQuantifications.mat'
        'OpenField_2021-08-09 16-56-17_22583_loom_resultQuantifications.mat'
        'OpenField_2021-08-30 11-34-56_22584_loom_resultQuantifications.mat'
        'OpenField_2021-08-30 12-34-39_22585_loom_resultQuantifications.mat'
        'OpenField_2021-08-30 12-58-11_22734_loom_resultQuantifications.mat'
        'OpenField_2021-08-30 13-23-32_22735_loom_resultQuantifications.mat'
        'OpenField_2021-09-06 11-40-34_23387_loom_resultQuantifications.mat'
        'OpenField_2021-09-06 12-04-22_23388_loom_resultQuantifications.mat'
        'OpenField_2021-11-08 12-24-10_25303_loom_resultQuantifications.mat'
        'OpenField_2021-11-08 12-49-08_25292_loom_resultQuantifications.mat'
        'OpenField_2021-11-08 13-34-12_25304_loom_resultQuantifications.mat'
        'OpenField_2021-11-08 13-09-17_25293_loom_resultQuantifications.mat'
        'OpenField_2021-08-10 15-22-54_22582_loom_resultQuantifications.mat'
        'OpenField_2021-08-10 15-50-28_22583_loom_resultQuantifications.mat'
        'OpenField_2021-08-31 10-33-05_22584_loom_resultQuantifications.mat'
        'OpenField_2021-08-31 11-00-14_22585_loom_resultQuantifications.mat'
        'OpenField_2021-08-31 11-26-00_22734_loom_resultQuantifications.mat'
        'OpenField_2021-08-31 11-50-57_22735_loom_resultQuantifications.mat'
        'OpenField_2021-09-07 15-16-00_23387_loom_resultQuantifications.mat'
        'OpenField_2021-09-07 15-38-54_23388_loom_resultQuantifications.mat'
        'OpenField_2021-11-09 09-09-36_25303_loom_resultQuantifications.mat'
        'OpenField_2021-11-09 09-33-59_25292_loom_resultQuantifications.mat'
        'OpenField_2021-11-09 10-21-56_25304_loom_resultQuantifications.mat'
        'OpenField_2021-11-09 09-59-12_25293_loom_resultQuantifications.mat'
        };
    [C,ia,ic] = unique(Filenames);
    a_counts = accumarray(ic,1);


    refuge_periods = [NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        29836	31667
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        3313	4409
        NaN	NaN
        3941	4815
        9413	9493
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        10357	12544
        NaN	NaN
        4880	6221
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        42582	43855
        NaN	NaN
        NaN	NaN
        NaN	NaN
        7301	7583
        30409	31523
        3731	4296
        6899	8210
        NaN	NaN
        5335	5714
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        3741	3926
        18979	19865
        2929	4002
        2463	2794
        7649	7837
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        NaN	NaN
        10816	10875
        13056	14065
        8490	8751
        8043	8352
        8051	8348
        3621	4258];

    startanalysisFrame =[2886
        143
        714
        3776
        10550
        27542
        3377
        6083
        5690
        11160
        1343
        928
        930
        1668
        6632
        6340
        631
        3125
        2816
        2105
        9219
        13703
        2518
        5597
        8051
        8656
        2531
        3104
        474
        5076
        1619
        40311
        8471
        5955
        4601
        4959
        28068
        1415
        4597
        6676
        2563
        4956
        6114
        97780
        1402
        19560
        3585
        1380
        16673
        611
        48
        5322
        8359
        3508
        6314
        23014
        5885
        7579
        13994
        8488
        10710
        6145
        5758
        5672
        1188];

    freeze_periods=[5146	5304	NaN	NaN	NaN	NaN
        2397	2535	NaN	NaN	NaN	NaN
        2965	2995	2996	3076	3077	3312
        6036	6126	6127	6296	NaN	NaN
        12815	12895	12896	12925	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        5662	5921	NaN	NaN	NaN	NaN
        8354	8653	NaN	NaN	NaN	NaN
        7956	8155	NaN	NaN	NaN	NaN
        13445	13765	NaN	NaN	NaN	NaN
        3611	3850	NaN	NaN	NaN	NaN
        3193	3253	NaN	NaN	NaN	NaN
        3241	4305	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        8914	9413	NaN	NaN	NaN	NaN
        8620	8873	NaN	NaN	NaN	NaN
        2921	3075	NaN	NaN	NaN	NaN
        5396	5486	NaN	NaN	NaN	NaN
        5077	5252	NaN	NaN	NaN	NaN
        4385	4532	NaN	NaN	NaN	NaN
        11483	12101	NaN	NaN	NaN	NaN
        15954	16074	NaN	NaN	NaN	NaN
        4778	4878	4879	4978	NaN	NaN
        7857	7922	7973	8924	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        10916	10935	10967	11076	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        5370	5440	NaN	NaN	NaN	NaN
        2739	2909	NaN	NaN	NaN	NaN
        7396	7566	NaN	NaN	NaN	NaN
        3886	4046	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        10741	10851	NaN	NaN	NaN	NaN
        8221	8293	NaN	NaN	NaN	NaN
        6901	6971	NaN	NaN	NaN	NaN
        7220	7251	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        8937	9080	NaN	NaN	NaN	NaN
        4825	5269	NaN	NaN	NaN	NaN
        7214	7484	7557	8437	NaN	NaN
        8367	8477	8487	8717	NaN	NaN
        100060	100085	NaN	NaN	NaN	NaN
        3672	3722	NaN	NaN	NaN	NaN
        21826	21947	NaN	NaN	NaN	NaN
        5855	6005	NaN	NaN	NaN	NaN
        3640	3669	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        2299	2417	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        10621	10840	NaN	NaN	NaN	NaN
        5774	5985	NaN	NaN	NaN	NaN
        8584	8744	NaN	NaN	NaN	NaN
        25275	25405	NaN	NaN	NaN	NaN
        8146	8366	NaN	NaN	NaN	NaN
        9858	10078	NaN	NaN	NaN	NaN
        16257	16311	16339	16467	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        8408	8449	NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN	NaN	NaN
        7940	7990	NaN	NaN	NaN	NaN
        3451	3500	NaN	NaN	NaN	NaN
        ];

    escape_periods=[NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        29807	29835	NaN	NaN
        NaN	NaN	5639	5661
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        3254	3313	NaN	NaN
        NaN	NaN	3193	3240
        3930	3941	NaN	NaN
        NaN	NaN	8893	8913
        NaN	NaN	NaN	NaN
        NaN	NaN	2893	2920
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	7923	7972
        10322	10356	NaN	NaN
        NaN	NaN	10936	10966
        4824	4879	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        42562	42581	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        7252	7301	NaN	NaN
        30328	30409	NaN	NaN
        3686	3730	NaN	NaN
        6859	6899	NaN	NaN
        NaN	NaN	NaN	NaN
        5270	5335	NaN	NaN
        NaN	NaN	7487	7557
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        3670	3740	NaN	NaN
        18943	18979	NaN	NaN
        2875	2928	NaN	NaN
        2418	2462	NaN	NaN
        7579	7649	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        NaN	NaN	NaN	NaN
        10765	10815	NaN	NaN
        12975	13055	NaN	NaN
        8450	8489	NaN	NaN
        8018	8042	NaN	NaN
        7991	8050	NaN	NaN
        3501	3620	NaN	NaN
        ];


end

%general
R.baseline_avgspeed = NaN(size(Filenames,1),1);
R.baseline_peakspeed = NaN(size(Filenames,1),1);

%freezing
R.avgspeed_during_freeze = NaN(size(Filenames,1),3);
R.peakspeed_during_freeze = NaN(size(Filenames,1),3);
R.freeze_latency = NaN(size(Filenames,1),1);

R.FreezeDuration = NaN(size(Filenames,1),3);
R.TotalFreezeDuration = NaN(size(Filenames,1),1);
R.TotalFreezeDuration_capped = NaN(size(Filenames,1),1);
R.perc_freezeDuringStim = NaN(size(Filenames,1),1);


%escape
R.avgspeed_during_escape = NaN(size(Filenames,1),2);
R.peakspeed_during_escape = NaN(size(Filenames,1),2);
R.escape_latency = NaN(size(Filenames,1),1);
R.distance_during_escape = NaN(size(Filenames,1),1);

distancePlot=[];
speed = [];
freeze_speed = [];
escape_speed = [];
freeze_cumprob = zeros(1,15750);
escape_cumprob = zeros(1,15750);
freeze_counter = 0;
escape_counter = 0;
escape_speed_centered =NaN(100,15750);
freeze_speed_centered =NaN(100,15750);



% med_det = [];
% figure; hold on;
% for ii = 1
for ii = 1:size(Filenames,1)

    % for kk = 1:size(random_trials,1)
    %     ii=random_trials(kk);
    %  for ii = 1:size(Filenames,1)
    clearvars -except R loadedTrials sortedTrials ii kk speed loadlist Filenames random_trials refuge_periods freeze_periods escape_periods startanalysisFrame analyse distancePlot...
        freeze_speed escape_speed freeze_cumprob escape_cumprob freeze_counter escape_counter h escape_speed_centered freeze_speed_centered

    try
        load(char(Filenames(ii)))
    catch
        ii
        disp('Could not load:')
        char(Filenames(ii))
        %         pause;
    end
    %     med_det(:,1) = medfilt1(resultQuantifications.positions{1}(:,1),25,'truncate'); % Median filter (0.333sec)
    %     med_det(:,2) = medfilt1(resultQuantifications.positions{1}(:,2),25,'truncate');
    %     med_det(:,1) = gfilt(med_det(:,1),75,0.0187); % Gaussian filter (10 Hz SD)
    %     med_det(:,2) = gfilt(med_det(:,2),75,0.0187); % Gaussian filter
    %     plot(med_det(:,1),med_det(:,2),'b');
    % %     camroll(-90);
    %
    % % Calculate the speed
    %     % Total distance travelled
    %     D1=[];
    %     sp1=[];
    %     pathl1=[0];
    %     dd1=[0];
    %     distance1=[0];
    %     speed1=[NaN];
    %     pixelsize =
    %     for k = 2:size(med_det(:,1),1)
    %         D1 = sqrt((med_det(k,1)-med_det(k-1,1))^2+(med_det(k,2)-med_det(k-1,2))^2);
    %         D1 = D1.* pixelsize; % path length in mm
    %         sp1 = (D1*10^-1)*75; % convert speed to cm, and timebase to sec (75 fps camera)
    %         pathl1 = [pathl1; D1];
    %         dd1 = dd1 + D1./10; % travel distance in cm
    %         distance1 = [distance1; dd1];
    %         speed1 = [speed1; sp1];
    %     end

    try
        if size(result.speed,1)>0
            % filt_speed already filtered with moving mean, window of 53.3332ms
            %                         result.filt_speed_gauss = medfilt1(result.filt_speed(2:end,1),10,'truncate');
            %                          result.filt_speed_gauss = medfilt1(result.filt_speed(2:end,1),25,'truncate'); % USED FOR Calculate parameters 220209
            %             result.filt_speed_gauss=medfilt1(result.filt_speed(2:end,1),4,'truncate');
            result.filt_speed_gauss   = result.filt_speed(2:end);
            %             result.filt_speed_gauss = gfilt(result.filt_speed_gauss,75,0.0187); % Gaussian filter (10 Hz SD)
            %             result.filt_speed_gauss = gfilt(result.filt_speed_gauss,75,0.0094); % Gaussian filter (20 Hz SD)
            result.filt_speed_gauss = gfilt(result.filt_speed_gauss,75,0.0075); % Gaussian filter (25 Hz SD)

            %                      result.filt_speed_gauss = gfilt(result.filt_speed_gauss,75,0.0375); % Gaussian filter (5 Hz SD)

            % figure; plot(result.filt_speed((30*75):(35*75),1),'k')
            % hold on; plot(result.filt_speed_gauss((30*75)-1:(35*75)-1,1),'r')


            %general
            R.baseline_avgspeed(ii,1) = nanmean(result.filt_speed_gauss(round(29*75):round(30*75)));
            R.baseline_peakspeed(ii,1) = nanmax(result.filt_speed_gauss(round(29*75):round(30*75)));

            freeze_idx =zeros(1,(4*75));

            % convert freezing #1 (latency is from 0 to 4s after start stimulus and duration >=0.5s)
            if isnan(freeze_periods(ii,1))==0
                % start freeze between start stim and end stim, end freeze
                % <3 min after start stim, duration of freeze >=0.5s

                if (freeze_periods(ii,1)-startanalysisFrame(ii))>=(30*75) && (freeze_periods(ii,1)-startanalysisFrame(ii))<(34*75) && (freeze_periods(ii,2)-startanalysisFrame(ii))<15750 && (freeze_periods(ii,2)-freeze_periods(ii,1))>=(0.5*75)
                    %             result.filt_speed_gauss((freeze_periods(ii,1)-startanalysisFrame(ii)):(freeze_periods(ii,2)-startanalysisFrame(ii))) = 1;
                    R.avgspeed_during_freeze(ii,1)= nanmean(result.filt_speed_gauss((freeze_periods(ii,1)-startanalysisFrame(ii)):(freeze_periods(ii,2)-startanalysisFrame(ii))));
                    R.peakspeed_during_freeze(ii,1)= nanmax(result.filt_speed_gauss((freeze_periods(ii,1)-startanalysisFrame(ii)):(freeze_periods(ii,2)-startanalysisFrame(ii))));
                    R.freeze_latency(ii,1) =(freeze_periods(ii,1)-startanalysisFrame(ii))/75;
                    R.freeze_latency(ii,1)=R.freeze_latency(ii,1)-30;
                    R.FreezeDuration(ii,1)= (freeze_periods(ii,2)-freeze_periods(ii,1))/75;

                    % if the latency to freeze period 1 is lower than 0.5s and the freeze end period 1  is shorter than 4 sec
                    if R.freeze_latency(ii,1)<0.5 && (freeze_periods(ii,2)-startanalysisFrame(ii)-(30*75))<=300
                        freeze_idx((freeze_periods(ii,1)-startanalysisFrame(ii)-(30*75)):(freeze_periods(ii,2)-startanalysisFrame(ii)-(30*75))) = 1;
                        % if the freeze period 2 start and the freeze end is shorter than 4 sec
                        if (freeze_periods(ii,3)-startanalysisFrame(ii)-(30*75))<=300 && (freeze_periods(ii,4)-startanalysisFrame(ii)-(30*75))<=300
                            freeze_idx((freeze_periods(ii,3)-startanalysisFrame(ii)-(30*75)):(freeze_periods(ii,4)-startanalysisFrame(ii)-(30*75))) = 1;
                            % if the freeze period 2 start is shorter than 4 sec and the freeze end is longer than 4 sec
                        elseif (freeze_periods(ii,3)-startanalysisFrame(ii)-(30*75))<=300 && (freeze_periods(ii,4)-startanalysisFrame(ii)-(30*75))>300
                            freeze_idx((freeze_periods(ii,3)-startanalysisFrame(ii)-(30*75)):300) = 1;
                        end
                        % if the freeze period 3 start and the freeze end is shorter than 4 sec
                        if (freeze_periods(ii,5)-startanalysisFrame(ii)-(30*75))<=300 && (freeze_periods(ii,6)-startanalysisFrame(ii)-(30*75))<=300
                            freeze_idx((freeze_periods(ii,5)-startanalysisFrame(ii)-(30*75)):(freeze_periods(ii,6)-startanalysisFrame(ii)-(30*75))) = 1;
                            % if the freeze period 3 start is shorter than 4 sec and the freeze end is longer than 4 sec
                        elseif (freeze_periods(ii,5)-startanalysisFrame(ii)-(30*75))<=300 && (freeze_periods(ii,6)-startanalysisFrame(ii)-(30*75))>300
                            freeze_idx((freeze_periods(ii,5)-startanalysisFrame(ii)-(30*75)):300) = 1;
                        end

                        % if the latency to freeze is lower than 0.5s and the freeze end is longer than 4 sec
                    elseif R.freeze_latency(ii,1)<0.5 && (freeze_periods(ii,2)-startanalysisFrame(ii)-(30*75))>300
                        freeze_idx((freeze_periods(ii,1)-startanalysisFrame(ii)-(30*75)):300) = 1;
                    else
                        freeze_idx=NaN;
                    end

                    % start freeze before start stim and end stim, end freeze
                    % <3 min after start stim, duration of freeze >=0.5s
                elseif (freeze_periods(ii,1)-startanalysisFrame(ii))<(30*75)  && (freeze_periods(ii,1)-startanalysisFrame(ii))<(34*75) && (freeze_periods(ii,2)-startanalysisFrame(ii))<15750 && (freeze_periods(ii,2)-freeze_periods(ii,1))>=(0.5*75)
                    %             result.filt_speed_gauss((30*75):(freeze_periods(ii,2)-startanalysisFrame(ii))) = 1;
                    R.avgspeed_during_freeze(ii,1)= nanmean(result.filt_speed_gauss((30*75):(freeze_periods(ii,2)-startanalysisFrame(ii))));
                    R.peakspeed_during_freeze(ii,1)= nanmax(result.filt_speed_gauss((30*75):(freeze_periods(ii,2)-startanalysisFrame(ii))));
                    % start freeze between start stim and end stim, end freeze
                    % >3 min after start stim, duration of freeze >=0.5s
                elseif (freeze_periods(ii,1)-startanalysisFrame(ii))>=(30*75) && (freeze_periods(ii,1)-startanalysisFrame(ii))<(34*75) && (freeze_periods(ii,2)-startanalysisFrame(ii))>15750 && (freeze_periods(ii,2)-freeze_periods(ii,1))>=(0.5*75)
                    %             result.filt_speed_gauss((freeze_periods(ii,1)-startanalysisFrame(ii)):15750) = 1;
                    R.avgspeed_during_freeze(ii,1)= NaN;
                    R.peakspeed_during_freeze(ii,1)= NaN;
                else
                    ii
                    disp('freeze period 1 excluded')
                    R.avgspeed_during_freeze(ii,1)= NaN;
                    R.peakspeed_during_freeze(ii,1)= NaN;
                end
            end



            % convert freezing #2
            if isnan(freeze_periods(ii,3))==0
                if (freeze_periods(ii,3)-startanalysisFrame(ii))>=(30*75) && (freeze_periods(ii,4)-startanalysisFrame(ii))<15750 && (freeze_periods(ii,4)-freeze_periods(ii,3))>=(0.5*75)
                    %             result.filt_speed_gauss((freeze_periods(ii,3)-startanalysisFrame(ii)):(freeze_periods(ii,4)-startanalysisFrame(ii))) = 1;
                    R.avgspeed_during_freeze(ii,2)=nanmean(result.filt_speed_gauss((freeze_periods(ii,3)-startanalysisFrame(ii)):(freeze_periods(ii,4)-startanalysisFrame(ii))));
                    R.peakspeed_during_freeze(ii,2)=nanmax(result.filt_speed_gauss((freeze_periods(ii,3)-startanalysisFrame(ii)):(freeze_periods(ii,4)-startanalysisFrame(ii))));
                    R.FreezeDuration(ii,2)= (freeze_periods(ii,4)-freeze_periods(ii,3))/75;
                elseif (freeze_periods(ii,3)-startanalysisFrame(ii))>=(30*75) && (freeze_periods(ii,4)-startanalysisFrame(ii))>15750 && (freeze_periods(ii,4)-freeze_periods(ii,3))>=(0.5*75)
                    %             result.filt_speed_gauss((freeze_periods(ii,3)-startanalysisFrame(ii)):15750) = 1;
                    R.avgspeed_during_freeze(ii,2)= NaN;
                    R.peakspeed_during_freeze(ii,2)=NaN;
                else
                    ii
                    disp('freeze period  2 excluded')
                    R.avgspeed_during_freeze(ii,2)= NaN;
                    R.peakspeed_during_freeze(ii,2)=NaN;
                end
            end


            % convert freezing #3
            if isnan(freeze_periods(ii,5))==0
                if (freeze_periods(ii,5)-startanalysisFrame(ii))>=(30*75) && (freeze_periods(ii,6)-startanalysisFrame(ii))<15750 && (freeze_periods(ii,6)-freeze_periods(ii,5))>=(0.5*75)
                    %             result.filt_speed_gauss((freeze_periods(ii,5)-startanalysisFrame(ii)):(freeze_periods(ii,6)-startanalysisFrame(ii))) = 1;
                    R.avgspeed_during_freeze(ii,3)= nanmean(result.filt_speed_gauss((freeze_periods(ii,5)-startanalysisFrame(ii)):(freeze_periods(ii,6)-startanalysisFrame(ii))));
                    R.peakspeed_during_freeze(ii,3)= nanmax(result.filt_speed_gauss((freeze_periods(ii,5)-startanalysisFrame(ii)):(freeze_periods(ii,6)-startanalysisFrame(ii))));
                    R.FreezeDuration(ii,3)= (freeze_periods(ii,6)-freeze_periods(ii,5))/75;
                elseif (freeze_periods(ii,5)-startanalysisFrame(ii))>=(30*75) && (freeze_periods(ii,6)-startanalysisFrame(ii))>15750 && (freeze_periods(ii,6)-freeze_periods(ii,5))>=(0.5*75)
                    %             result.filt_speed_gauss((freeze_periods(ii,5)-startanalysisFrame(ii)):15750) = 1;
                    R.avgspeed_during_freeze(ii,3)= NaN;
                    R.peakspeed_during_freeze(ii,3)= NaN;
                else
                    ii
                    disp('freeze period  3 excluded')
                    R.avgspeed_during_freeze(ii,3)= NaN;
                    R.peakspeed_during_freeze(ii,3)= NaN;
                end
            end

            if sum(freeze_idx)>0
                R.perc_freezeDuringStim(ii,1) = (sum(freeze_idx)/300)*100;
                R.TotalFreezeDuration(ii,1) = nansum(R.FreezeDuration(ii,:));
            end
            if R.TotalFreezeDuration(ii,1)>10
                R.TotalFreezeDuration_capped(ii,1)=10;
            elseif R.TotalFreezeDuration(ii,1)<=10
                R.TotalFreezeDuration_capped(ii,1)=nansum(R.TotalFreezeDuration(ii,1));
            end



            % Escape period #1 is most important. If not there, then include period 2
            % convert escape #1 (latency is from 0 to 0.75s after start stimulus)
            if isnan(escape_periods(ii,1))==0
                if (escape_periods(ii,1)-startanalysisFrame(ii))>=(30*75) && (escape_periods(ii,1)-startanalysisFrame(ii))<(30.75*75) && (escape_periods(ii,2)-startanalysisFrame(ii))<15750
                    %                     result.filt_speed_gauss((escape_periods(ii,1)-startanalysisFrame(ii)):(escape_periods(ii,2)-startanalysisFrame(ii))) = 2;
                    R.escape_latency(ii,1) =(escape_periods(ii,1)-startanalysisFrame(ii))/75;
                    R.escape_latency(ii,1) =R.escape_latency(ii,1)-30;
                    R.avgspeed_during_escape(ii,1)= nanmean(result.filt_speed_gauss((escape_periods(ii,1)-startanalysisFrame(ii)):(escape_periods(ii,2)-startanalysisFrame(ii))));
                    R.peakspeed_during_escape(ii,1)= nanmax(result.filt_speed_gauss((escape_periods(ii,1)-startanalysisFrame(ii)):(escape_periods(ii,2)-startanalysisFrame(ii))));

                    R.distance_during_escape(ii,1)= result.distance(escape_periods(ii,2)-startanalysisFrame(ii))-result.distance(escape_periods(ii,1)-startanalysisFrame(ii));

                elseif (escape_periods(ii,1)-startanalysisFrame(ii))<(30*75)  && (escape_periods(ii,1)-startanalysisFrame(ii))<(30.75*75) && (escape_periods(ii,2)-startanalysisFrame(ii))<15750
                    %                     result.filt_speed_gauss((30*75):(escape_periods(ii,2)-startanalysisFrame(ii))) = 2;
                    R.avgspeed_during_escape(ii,1)= nanmean(result.filt_speed_gauss((30*75):(escape_periods(ii,2)-startanalysisFrame(ii))));
                    R.peakspeed_during_escape(ii,1)= nanmax(result.filt_speed_gauss((30*75):(escape_periods(ii,2)-startanalysisFrame(ii))));
                    R.distance_during_escape(ii,1)= result.distance(escape_periods(ii,2)-startanalysisFrame(ii))-result.distance(30*75);

                elseif (escape_periods(ii,1)-startanalysisFrame(ii))>=(30*75) && (escape_periods(ii,1)-startanalysisFrame(ii))<(30.75*75) && (escape_periods(ii,2)-startanalysisFrame(ii))>15750
                    %                     result.filt_speed_gauss((escape_periods(ii,1)-startanalysisFrame(ii)):15750) = 2;
                    R.avgspeed_during_escape(ii,1)= NaN;
                    R.peakspeed_during_escape(ii,1)= NaN;
                else
                    ii
                    disp('escape period 1 excluded')
                    R.avgspeed_during_escape(ii,1)=NaN;
                    R.peakspeed_during_escape(ii,1)= NaN;
                end

                % convert escape #2
            elseif isnan(escape_periods(ii,3))==0
                if (escape_periods(ii,3)-startanalysisFrame(ii))>=(30*75)  && (escape_periods(ii,3)-startanalysisFrame(ii))<(30.75*75)&& (escape_periods(ii,4)-startanalysisFrame(ii))<15750
                    %                     result.filt_speed_gauss((escape_periods(ii,3)-startanalysisFrame(ii)):(escape_periods(ii,4)-startanalysisFrame(ii))) = 2;
                    R.avgspeed_during_escape(ii,2)=nanmean(result.filt_speed_gauss((escape_periods(ii,3)-startanalysisFrame(ii)):(escape_periods(ii,4)-startanalysisFrame(ii))));
                    R.peakspeed_during_escape(ii,2)=nanmax(result.filt_speed_gauss((escape_periods(ii,3)-startanalysisFrame(ii)):(escape_periods(ii,4)-startanalysisFrame(ii))));
                    R.escape_latency(ii,1) =(escape_periods(ii,3)-startanalysisFrame(ii))/75;
                    R.escape_latency(ii,1) =R.escape_latency(ii,1)-30;
                    R.distance_during_escape(ii,1)= result.distance(escape_periods(ii,4)-startanalysisFrame(ii))-result.distance(escape_periods(ii,3)-startanalysisFrame(ii));

                elseif (escape_periods(ii,3)-startanalysisFrame(ii))>=(30*75)  && (escape_periods(ii,3)-startanalysisFrame(ii))<(30.75*75) && (escape_periods(ii,4)-startanalysisFrame(ii))>15750
                    %                     result.filt_speed_gauss((escape_periods(ii,3)-startanalysisFrame(ii)):15750) = 2;
                    R.avgspeed_during_escape(ii,2)=NaN;
                    R.peakspeed_during_escape(ii,2)=NaN;
                else
                    ii
                    disp('escape period  2 excluded')
                    R.avgspeed_during_escape(ii,2)=NaN;
                    R.peakspeed_during_escape(ii,2)=NaN;
                end
            end



            % convert refuge - test whether latencies start after start stimulus
            if isnan(refuge_periods(ii,1))==0
                if (refuge_periods(ii,1)-startanalysisFrame(ii))>=(30*75) && (refuge_periods(ii,2)-startanalysisFrame(ii))<15750
                    result.distance((refuge_periods(ii,1)-startanalysisFrame(ii)):(refuge_periods(ii,2)-startanalysisFrame(ii))) = result.distance(refuge_periods(ii,1)-1-startanalysisFrame(ii));
                    result.filt_speed_gauss((refuge_periods(ii,1)-startanalysisFrame(ii)):(refuge_periods(ii,2)-startanalysisFrame(ii))) = NaN;
                elseif (refuge_periods(ii,1)-startanalysisFrame(ii))<(30*75) && (refuge_periods(ii,2)-startanalysisFrame(ii))<15750
                    result.distance((30*75):(refuge_periods(ii,2)-startanalysisFrame(ii))) = result.distance(refuge_periods(ii,1)-1-startanalysisFrame(ii));
                    result.filt_speed_gauss((30*75):(refuge_periods(ii,2)-startanalysisFrame(ii))) = NaN;
                elseif (refuge_periods(ii,1)-startanalysisFrame(ii))>=(30*75) && (refuge_periods(ii,2)-startanalysisFrame(ii))>15750
                    result.filt_speed_gauss((refuge_periods(ii,1)-startanalysisFrame(ii)):15750) = NaN;
                    result.distance((refuge_periods(ii,1)-startanalysisFrame(ii)):15750) = result.distance(refuge_periods(ii,1)-1-startanalysisFrame(ii));
                else
                    ii
                    disp('refuge period outside timeframe')
                end
            end

            distancePlot = [distancePlot; result.distance'-result.distance(30*75)];

            %     try
            if size(result.speed,1)>0
                if size(result.speed,1)<15750
                    speedidx = [result.filt_speed_gauss' NaN(1,15750-(size(result.filt_speed_gauss,1)))];
                elseif size(result.speed,1)>=15750
                    speedidx = [result.filt_speed_gauss(1:15750)'];
                end
                speed = [speed; speedidx];
            end


            %% Gather the responses for the graphs
            %% Only freeze responses
            if isnan(freeze_periods(ii,1))==0 && isnan(escape_periods(ii,1))==1 && isnan(escape_periods(ii,3))==1 && freeze_periods(ii,1)>=(startanalysisFrame(ii)+(30*75))
                freeze_speed = [freeze_speed; result.filt_speed_gauss'];
                freeze_cumprob(freeze_periods(ii,1)-startanalysisFrame(ii):end) = freeze_cumprob(freeze_periods(ii,1)-startanalysisFrame(ii):end)+1;
                freeze_counter = freeze_counter+1;
                freeze_speed_centered(ii,1:length(result.filt_speed_gauss(freeze_periods(ii,1)-startanalysisFrame(ii):freeze_periods(ii,2)-startanalysisFrame(ii)))) = result.filt_speed_gauss(freeze_periods(ii,1)-startanalysisFrame(ii):freeze_periods(ii,2)-startanalysisFrame(ii))';



                %% Only escape responses
            elseif isnan(freeze_periods(ii,1))==1 && isnan(freeze_periods(ii,3))==1 && isnan(freeze_periods(ii,5))==1 && isnan(escape_periods(ii,1))==0 && escape_periods(ii,1)>=(startanalysisFrame(ii)+(30*75)) % inside refuge
                %
                result.filt_speed_gauss(escape_periods(ii,2)-startanalysisFrame(ii):end) = NaN;
                escape_speed = [escape_speed; result.filt_speed_gauss'];
                escape_cumprob(escape_periods(ii,1)-startanalysisFrame(ii):end) = escape_cumprob(escape_periods(ii,1)-startanalysisFrame(ii):end)+1;
                escape_counter = escape_counter+1;
                escape_speed_centered(ii,1:length(result.filt_speed_gauss(escape_periods(ii,1)-startanalysisFrame(ii):escape_periods(ii,2)-startanalysisFrame(ii)))) = result.filt_speed_gauss(escape_periods(ii,1)-startanalysisFrame(ii):escape_periods(ii,2)-startanalysisFrame(ii))';

            elseif isnan(freeze_periods(ii,1))==1 && isnan(freeze_periods(ii,3))==1 && isnan(freeze_periods(ii,5))==1 && isnan(escape_periods(ii,3))==0  && escape_periods(ii,3)>=(startanalysisFrame(ii)+(30*75)) % outside refuge
                %
                result.filt_speed_gauss(escape_periods(ii,4)-startanalysisFrame(ii):end) = NaN;
                escape_speed = [escape_speed; result.filt_speed_gauss'];
                escape_cumprob(escape_periods(ii,1)-startanalysisFrame(ii):end) = escape_cumprob(escape_periods(ii,1)-startanalysisFrame(ii):end)+1;
                escape_counter = escape_counter+1;
                escape_speed_centered(ii,1:length(result.filt_speed_gauss(escape_periods(ii,3)-startanalysisFrame(ii):escape_periods(ii,4)-startanalysisFrame(ii)))) = result.filt_speed_gauss(escape_periods(ii,3)-startanalysisFrame(ii):escape_periods(ii,4)-startanalysisFrame(ii))';

                %             elseif isnan(freeze_periods(ii,1))==1 && isnan(escape_periods(ii,3))==0 && isnan(escape_periods(ii,1))==0 && escape_periods(ii,3)>=(startanalysisFrame(ii)+(30*75)) % outside refuge
                %                 result.filt_speed_gauss(:,escape_periods(ii,4)-startanalysisFrame(ii):end) = NaN;
                %                 escape_speed = [escape_speed; result.filt_speed_gauss'];
                %                 escape_cumprob(escape_periods(ii,1)-startanalysisFrame(ii):end) = escape_cumprob(escape_periods(ii,1)-startanalysisFrame(ii):end)+1;
                %                 escape_counter = escape_counter+1;
            end


            %     end
            %     try

            %         pause
            %     catch
            %         ii
            %         disp('issue vector length')
            %         char(Filenames(ii))
            %         %     speed(ii,:) = -1;
            %         continue;
            %     end


            % plot(speed(ii,:))
            % plot(result.speed)
            % pause;


            %             plot(result.distance'-result.distance(30*75));
        end
        %       result.filt_speed_gauss = gfilt(result.filt_speed(2:end,1),75,0.0187); % Gaussian filter (10 Hz SD)
    catch
        ii
        disp('could not process')
        char(Filenames(ii))
        %     speed(ii,:) = -1;
    end
end
if analyse ==1 || analyse==3
    %
    avg_distancePlot = nanmean(distancePlot);
    sd_distancePlot = nanstd(distancePlot);
    sem_distancePlot = sd_distancePlot/sqrt(size(distancePlot,1));
    figure;
    plot(avg_distancePlot((29*75):(35*75)),'k'); hold on;
    plot(avg_distancePlot((29*75):(35*75))+sem_distancePlot((29*75):(35*75)),'k');
    plot(avg_distancePlot((29*75):(35*75))-sem_distancePlot((29*75):(35*75)),'k');

    %     xlim([(29*75) (35*75)])

elseif analyse ==2 || analyse==4
    %
    avg_distancePlot = nanmean(distancePlot);
    sd_distancePlot = nanstd(distancePlot);
    sem_distancePlot = sd_distancePlot/sqrt(size(distancePlot,1));
    figure;
    plot(avg_distancePlot((29*75):(35*75)),'r'); hold on;
    plot(avg_distancePlot((29*75):(35*75))+sem_distancePlot((29*75):(35*75)),'r');
    plot(avg_distancePlot((29*75):(35*75))-sem_distancePlot((29*75):(35*75)),'r');
    %      line([(30*75) (30*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    %     line([(34*75) (34*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    %     xlim([(29*75) (35*75)])
end
%     ylim([-25 60])

if analyse ==1 || analyse==2
    line([(1*75) (1*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    line([(5*75) (5*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
elseif analyse ==3 || analyse==4
    line([(1*75) (1*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    line([(1.75*75) (1.75*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
end
%
xlim([0 (6*75)])
xticklabels = [-1 0 1 2 3 4 5];
xticks = [0 (1*75) (2*75) (3*75) (4*75) (5*75) (6*75)];
set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)

% yticklabels = [1 7];;
% yticks = [1 7];
% set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
% xlim('auto'); ylim('auto')
set(gca,'fontSize',15,'FontName','Arial');

% elseif analyse ==3 || analyse==4
%
%     avg_speed = nanmean(speed);
%     figure; plot(avg_speed,'k'); hold on;
%     line([(30*75) (30*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
%     line([(30.75*75) (30.75*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% end
%
%
% load('PSTHcolormap_NaN.mat')
%
% %normalise to max and min values
% maxnorm_speed_all=[];
% % norxm_binoc_contra=[];
% % norm_binoc_ipsi=[];
%
% %only normalised to max value
% norm_max = max(nanmax(speed(:,(25*75):(45*75))));
% norm_min = min(nanmin(speed(:,(25*75):(45*75))));
%
% for ii = 1:size(speed,1)
%     %        maxnorm_binoc_ipsi(ii,:)=binoc_ipsi(ii,:)/max(binoc_ipsi(ii,:));
%     %             maxnorm_binoc_contra(ii,:)=binoc_contra(ii,:)/max(binoc_contra(ii,:));
%     if isnan(speed(ii,1))==0
%         X = speed(ii,(25*75):(45*75))+nanmin(speed(ii,(25*75):(45*75)));
%         X = X/nanmax(X);
%         %         maxnorm_speed_all=[maxnorm_speed_all; (speed(ii,(25*75):(45*75))/max(speed(ii,(25*75):(45*75))))+nanmin(speed(ii,(25*75):(45*75)))];
%         %     maxnorm_speed_all=[maxnorm_speed_all; speed(ii,(25*75):(45*75))/norm_max];
%         % X = (speed(ii,(25*75):(45*75))-nanmean(speed(ii,(25*75):(45*75))))/nanstd(speed(ii,(25*75):(45*75)));
%         maxnorm_speed_all=[maxnorm_speed_all; X];
%     end
% end

% %normalise to min and max value
% for ii = 1:75
% %         norm_binoc_ipsi(ii,:)=binoc_ipsi(ii,:)+abs(min(binoc_ipsi(ii,:)));
% %             norm_binoc_contra(ii,:)=binoc_contra(ii,:)+abs(min(binoc_contra(ii,:)));
%     norm_speed_all(ii,:)=speed_all(ii,:)+abs(min(speed_all(ii,:)));
% end
% for ii = 1:75
% %         minmaxnorm_binoc_ipsi(ii,:)=norm_binoc_ipsi(ii,:)/max(norm_binoc_ipsi(ii,:));
% %             minmaxnorm_binoc_contra(ii,:)=norm_binoc_contra(ii,:)/max(norm_binoc_contra(ii,:));
%     minmaxnorm_speed_all(ii,:)=norm_speed_all(ii,:)/max(norm_speed_all(ii,:));
% end

%% Sort the graphs to the time of peak
%ipsi
%sortidx=[];
% for ii = 1:75
%     [~,sortidx(ii,1)] = max(minmaxnorm_binoc_ipsi(ii,500:1000));
% end
%
% [~,sortidx(:,2)] = sort(sortidx(:,1));
%
% for ii=1:7
% sort_minmaxnorm_binoc_ipsi(ii,:) = minmaxnorm_binoc_ipsi(sortidx(ii,2),:);
% sortidx_ipsi(ii,1) = sortidx(sortidx(ii,2),1);
% end


% %contra
% sortidx=[];
% for ii = 1:7
%     [~,sortidx(ii,1)] = max(minmaxnorm_binoc_contra(ii,500:1000));
% end
%
% [~,sortidx(:,2)] = sort(sortidx(:,1));
%
% for ii=1:7
% sort_minmaxnorm_binoc_contra(ii,:) = minmaxnorm_binoc_contra(sortidx(ii,2),:);
% sortidx_contra(ii,1) = sortidx(sortidx(ii,2),1);
% end
% (25*75):(40*75)

% load('sort_parameters_sweepAndLoom.mat')
%both
% sortidx=[];
% for ii = 1:size(maxnorm_speed_all,1)
%     [sortidx(ii,1)] = nanmean(maxnorm_speed_all(ii,(5*75):(9*75)));
% end
%
% [~,sortidx(:,2)] = sort(sortidx(:,1));

% for ii=1:size(maxnorm_speed_all,1)
%     sort_minmaxnorm_speed_all(ii,:) = maxnorm_speed_all(sortidx(ii,2),:);
%     sortidx_both(ii,1) = sortidx(sortidx(ii,2),1);
% end
%
% sort_minmaxnorm_speed_all=flipud(sort_minmaxnorm_speed_all);
% sort_minmaxnorm_speed_all = sort_minmaxnorm_speed_all+0.5;
% sort_minmaxnorm_speed_all(isnan(sort_minmaxnorm_speed_all)==1)=0;
% sortidx_both=flipud(sortidx_both);
% if analyse==1
%     for ii=1:size(maxnorm_speed_all,1)
%         sort_minmaxnorm_speed_all(ii,:) = maxnorm_speed_all(sortedTrials(ii,1),:);
%     end
% elseif analyse==2
%     for ii=1:size(maxnorm_speed_all,1)
%         sort_minmaxnorm_speed_all(ii,:) = maxnorm_speed_all(sortedTrials(ii,2),:);
%     end
% elseif analyse==3
%     for ii=1:size(maxnorm_speed_all,1)
%         sort_minmaxnorm_speed_all(ii,:) = maxnorm_speed_all(sortedTrials(ii,3),:);
%     end
% elseif analyse==4
%     for ii=1:size(maxnorm_speed_all,1)
%         sort_minmaxnorm_speed_all(ii,:) = maxnorm_speed_all(sortedTrials(ii,4),:);
%     end
% end
%
% sort_minmaxnorm_speed_all=flipud(sort_minmaxnorm_speed_all);
% sort_minmaxnorm_speed_all = sort_minmaxnorm_speed_all+.4;
% sort_minmaxnorm_speed_all(isnan(sort_minmaxnorm_speed_all)==1)=0;

%% Find the peak time


% %only normalised to max value
% for ii = 1:size(maxnorm_speed_all,1)
% %         [~,peaktime_binoc_ipsi(ii,:)] = max(binoc_ipsi(ii,500:1000));
% %         [~,peaktime_binoc_contra(ii,:)] = max(binoc_contra(ii,500:1000));
%         [~,peaktime_speed_all(ii,:)] = max(speed(ii,500:1000));
% end
%
% % peaktime_binoc_ipsi=peaktime_binoc_ipsi*10^-3;
% % peaktime_binoc_contra=peaktime_binoc_contra*10^-3;
% peaktime_speed_all=peaktime_speed_all*10^-3;

%% plot
% figure;
% subplot(4,1,1);hold on;
% imagesc(sort_minmaxnorm_binoc_ipsi(:,:));  colormap(map); colorbar
% xlim([0 2500]);ylim([1 7])
% box on;
% % ax = gca;
% % ax.positionConstraint = 'innerposition';
% % ax.position = [1 1 1500 7];
%     xticklabels = [-0.5 0 0.5 1 1.5 2];
% xticks = [0 500 1000 1500 2000 2500];
% set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)
%
% yticklabels = [1 7];;
% yticks = [1 7];
% set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
% % xlim('auto'); ylim('auto')
% set(gca,'fontSize',15,'FontName','Arial');
% line([xticks(2) xticks(2)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([xticks(2)+1500 xticks(2)+1500],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% %     line([xticks(2)+750 xticks(2)+750],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%
% plot(sortidx_ipsi+500,[1:7],'k-','LineWidth',2);
%
% subplot(4,1,2);hold on;
% imagesc(sort_minmaxnorm_binoc_contra(:,:));  colormap(map); colorbar
% xlim([0 2500]);ylim([1 7])
% box on;
% % ax = gca;
% % ax.positionConstraint = 'innerposition';
% % ax.position = [1 1 1500 7];
%     xticklabels = [-0.5 0 0.5 1 1.5 2];
% xticks = [0 500 1000 1500 2000 2500];
% set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)
%
% yticklabels = [1 7];;
% yticks = [1 7];
% set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
% % xlim('auto'); ylim('auto')
% set(gca,'fontSize',15,'FontName','Arial');
% line([xticks(2) xticks(2)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([xticks(2)+1500 xticks(2)+1500],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% %     line([xticks(2)+750 xticks(2)+750],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%
% plot(sortidx_contra+500,[1:7],'k-','LineWidth',2);

% hold on;
% imagesc(sort_minmaxnorm_speed_all(:,:));  colormap(map_blk); colorbar
% % xlim([0 2500]);
%
% box on;
% if analyse==1||analyse==2
%
%     ylim([1 60])
%     line([(5*75) (5*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
%     line([(9*75) (9*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% elseif analyse==3||analyse==4
%     ylim([1 55])
%     line([(5*75) (5*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
%     line([(5.75*75) (5.75*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
% end
% % ax = gca;
% % ax.positionConstraint = 'innerposition';
% % ax.position = [1 1 1500 7];
% xlim([0 (20*75)])
% xticklabels = [-5 0 5 10 15];
% xticks = [0 (5*75) (10*75) (15*75) (20*75)];
% set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)
%
% % yticklabels = [1 7];;
% % yticks = [1 7];
% set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
% % xlim('auto'); ylim('auto')
% set(gca,'fontSize',15,'FontName','Arial');
% line([xticks(2) xticks(2)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([xticks(2)+1500 xticks(2)+1500],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%     line([xticks(2)+750 xticks(2)+750],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);

% plot(sortidx_both+500,[1:7],'k-','LineWidth',2);

%plot all together
% subplot(4,1,4); hold on;
% plot(sortidx_ipsi+500,[1:7],'r-','LineWidth',2);
% plot(sortidx_contra+500,[1:7],'b-','LineWidth',2);
% plot(sortidx_both+500,[1:7],'g-','LineWidth',2);
% xlim([0 2500]);ylim([1 7])
% box on; colorbar
% % ax = gca;
% % ax.positionConstraint = 'innerposition';
% % ax.position = [1 1 1500 7];
%     xticklabels = [-0.5 0 0.5 1 1.5 2];
% xticks = [0 500 1000 1500 2000 2500];
% set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)
%
% yticklabels = [1 7];;
% yticks = [1 7];
% set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
% % xlim('auto'); ylim('auto')
% set(gca,'fontSize',15,'FontName','Arial');
% line([xticks(2) xticks(2)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([xticks(2)+1500 xticks(2)+1500],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%
% %% save the figure
%
% figname = 'BlackdotRLB_binoc_heatplot.fig';
% saveas(gcf,figname,'fig');
% figname = 'BlackdotRLB_binoc_heatplot.pdf';
% orient(gcf,'landscape')
% print('-dpdf','-painters','-loose','-fillpage',figname);
%
% %%
% % figure; imagesc(maxnorm_speed_all(:,1:1500));  colormap(map); colorbar
% % figure; imagesc(maxnorm_binoc_contra(:,1:1500));  colormap(map); colorbar
% % figure; imagesc(maxnorm_binoc_ipsi(:,1:1500));  colormap(map); colorbar
%
% % figure; imagesc(minmaxnorm_speed_all(:,1:1500));  colormap(map); colorbar
% % figure; imagesc(minmaxnorm_binoc_contra(:,1:1500));  colormap(map); colorbar
% % figure; imagesc(minmaxnorm_binoc_ipsi(:,1:1500));  colormap(map); colorbar
% %
% % figure; imagesc(norm_speed_all);  colormap(map); colorbar
% % figure; imagesc(norm_binoc_contra);  colormap(map); colorbar
% % figure; imagesc(norm_binoc_ipsi);  colormap(map); colorbar
% %
% % figure; imagesc(speed_all);  colormap(map); colorbar
% % figure; imagesc(binoc_contra);  colormap(map); colorbar
% % figure; imagesc(binoc_ipsi);  colormap(map); colorbar
%
% %% Overlay plot averages
%
% fig(1)=figure;
% subplot(4,1,1);hold on
% XplotAxis = linspace(-0.5,2,2500);
% plot(XplotAxis(1:2500),binoc_ipsi_avg(1:2500),'r')
% plot(XplotAxis(1:2500),binoc_ipsi_avg(1:2500)+binoc_ipsi_sem(1:2500),'r')
% plot(XplotAxis(1:2500),binoc_ipsi_avg(1:2500)-binoc_ipsi_sem(1:2500),'r')
%
% plot(XplotAxis(1:2500),binoc_contra_avg(1:2500),'b')
% plot(XplotAxis(1:2500),binoc_contra_avg(1:2500)+binoc_contra_sem(1:2500),'b')
% plot(XplotAxis(1:2500),binoc_contra_avg(1:2500)-binoc_contra_sem(1:2500),'b')
%
% plot(XplotAxis(1:2500),speed_all_avg(1:2500),'g')
% plot(XplotAxis(1:2500),speed_all_avg(1:2500)+speed_all_sem(1:2500),'g')
% plot(XplotAxis(1:2500),speed_all_avg(1:2500)-speed_all_sem(1:2500),'g')
% colorbar
% set(gca,'fontSize',15,'FontName','Arial');
% ylim([-10 100])
%
% set(gca,'fontSize',15,'FontName','Arial');
% line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([1.5 1.5],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% %     line([0.75 0.75],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
%     box on;
%     xlim([-0.5 2])
%
%     xticklabels = [-0.5 0 0.5 1 1.5 2];
% xticks = [0 500 1000 1500 2000 2500];
% set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)
%
% figname = 'BlackdotRLB_binoc_OverlayAvgs.fig';
% saveas(gcf,figname,'fig');
% figname = 'BlackdotRLB_binoc_OverlayAvgs.pdf';
% orient(gcf,'landscape')
% print('-dpdf','-painters','-loose','-fillpage',figname);


% set(gca,'fontSize',15,'FontName','Arial');
% line([xticks(2) xticks(2)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% line([xticks(2)+20 xticks(2)+20],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',1);
% box on;

%
% if analyse==1
% % sortedTrials(:,1) = [sortidx];
% % loadedTrials(:,1) = [random_trials];
%
% figname = 'Sweep_WT_heatplot.fig';
% saveas(gcf,figname,'fig');
% figname = 'Sweep_WT_heatplot.pdf';
% orient(gcf,'portrait')
% print('-dpdf','-painters','-loose',figname);
% elseif analyse==2
% % sortedTrials(:,2) = [sortidx];
% % loadedTrials(:,2) = [random_trials];
%
% figname = 'Sweep_enuc_heatplot.fig';
% saveas(gcf,figname,'fig');
% figname = 'Sweep_enuc_heatplot.pdf';
% orient(gcf,'portrait')
% print('-dpdf','-painters','-loose',figname);
% elseif analyse==3
% % sortedTrials(:,3) = [sortidx;NaN;NaN;NaN;NaN;NaN];
% % loadedTrials(:,3) = [random_trials;NaN;NaN;NaN;NaN;NaN];
%
% figname = 'Loom_WT_heatplot.fig';
% saveas(gcf,figname,'fig');
% figname = 'Loom_WT_heatplot.pdf';
% orient(gcf,'portrait')
% print('-dpdf','-painters','-loose',figname);
% elseif analyse==4
% % sortedTrials(:,4) = [sortidx;NaN;NaN;NaN;NaN;NaN];
% % loadedTrials(:,4) = [random_trials;NaN;NaN;NaN;NaN;NaN];
%
% figname = 'Loom_enuc_heatplot.fig';
% saveas(gcf,figname,'fig');
% figname = 'Loom_enuc_heatplot.pdf';
% orient(gcf,'portrait')
% print('-dpdf','-painters','-loose',figname);
% end

excel=[R.baseline_avgspeed R.baseline_peakspeed R.avgspeed_during_freeze R.peakspeed_during_freeze...
    R.freeze_latency R.avgspeed_during_escape R.peakspeed_during_escape R.escape_latency...
    R.FreezeDuration R.TotalFreezeDuration R.TotalFreezeDuration_capped R.perc_freezeDuringStim R.distance_during_escape];

% if analyse==2
%
% figname = 'Sweep_cumdist.fig';
% saveas(gcf,figname,'fig');
% figname = 'Sweep_cumdist.pdf';
% orient(gcf,'portrait')
% print('-dpdf','-painters','-loose',figname);
%
% elseif analyse==4
% figname = 'Loom_cumdist.fig';
% saveas(gcf,figname,'fig');
% figname = 'Loom_cumdist.pdf';
% orient(gcf,'portrait')
% print('-dpdf','-painters','-loose',figname);
% end

%% speed vs time graphs

%% Log function on freezing
% for ii=1:size(freeze_speed,1)
%     freeze_speed(ii,:) = log(freeze_speed(ii,:));
%         freeze_speed(ii,freeze_speed(ii,:)==-inf)=0;
% end

avg_freeze_speed = nanmean(freeze_speed);
% avg_freeze_speed = nanmedian(freeze_speed);
% sem_freeze_speed = iqr(freeze_speed);
%
sd_freeze_speed = nanstd(freeze_speed);
sem_freeze_speed = sd_freeze_speed/sqrt(size(freeze_speed,1));

%% Log function on escape
% for ii=1:size(escape_speed,1)
%     escape_speed(ii,:) = log(escape_speed(ii,:));
%             escape_speed(ii,escape_speed(ii,:)==-inf)=0;
% end

avg_escape_speed = nanmean(escape_speed);
% avg_escape_speed = nanmedian(escape_speed);
% sem_escape_speed = iqr(escape_speed);

sd_escape_speed = nanstd(escape_speed);
sem_escape_speed = sd_escape_speed/sqrt(size(escape_speed,1));


if analyse==1||analyse==3
    %freeze
    h(1) = figure; hold on; title('Freeze')
    plot(avg_freeze_speed((29*75):(35*75)),'k')
    plot(avg_freeze_speed((29*75):(35*75))+sem_freeze_speed((29*75):(35*75)),'r')
    plot(avg_freeze_speed((29*75):(35*75))-sem_freeze_speed((29*75):(35*75)),'r')

    xlim([0 (6*75)])
    % xticklabels = [-5 0 5 10 15];
    xticklabels = [-1 0 1 2 3 4 5];
    % xticks = [0 (5*75) (10*75) (15*75) (20*75)];
    xticks = [0 (1*75) (2*75) (3*75) (4*75) (5*75) (6*75)];
    set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)

    % yticklabels = [1 7];;
    % yticklabels = [1 size(sort_minmaxnorm_speed_all,1)];
    % yticks = [1 size(sort_minmaxnorm_speed_all,1)];
    % set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
    % xlim('auto'); ylim('auto')
    set(gca,'fontSize',15,'FontName','Arial');

    if analyse==1||analyse==2
        %     ylim([0 4])
        line([(1*75) (1*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
        line([(5*75) (5*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    elseif analyse==3||analyse==4
        %         ylim([0 4])
        line([(1*75) (1*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
        line([(1.75*75) (1.75*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    end

    %escape
    h(2) = figure; hold on; title('escape')
    plot(avg_escape_speed((29*75):(35*75)),'k')
    plot(avg_escape_speed((29*75):(35*75))+sem_escape_speed((29*75):(35*75)),'r')
    plot(avg_escape_speed((29*75):(35*75))-sem_escape_speed((29*75):(35*75)),'r')

    xlim([0 (6*75)])
    % xticklabels = [-5 0 5 10 15];
    xticklabels = [-1 0 1 2 3 4 5];
    % xticks = [0 (5*75) (10*75) (15*75) (20*75)];
    xticks = [0 (1*75) (2*75) (3*75) (4*75) (5*75) (6*75)];
    set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)

    % yticklabels = [1 7];;
    % yticklabels = [1 size(sort_minmaxnorm_speed_all,1)];
    % yticks = [1 size(sort_minmaxnorm_speed_all,1)];
    % set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
    % xlim('auto'); ylim('auto')
    set(gca,'fontSize',15,'FontName','Arial');

elseif analyse==2||analyse==4
    figure(h(1))
    plot(avg_freeze_speed((29*75):(35*75)),'b')
    plot(avg_freeze_speed((29*75):(35*75))+sem_freeze_speed((29*75):(35*75)),'g')
    plot(avg_freeze_speed((29*75):(35*75))-sem_freeze_speed((29*75):(35*75)),'g')

    try
        figure(h(2))
        plot(avg_escape_speed((29*75):(35*75)),'b')
        plot(avg_escape_speed((29*75):(35*75))+sem_escape_speed((29*75):(35*75)),'g')
        plot(avg_escape_speed((29*75):(35*75))-sem_escape_speed((29*75):(35*75)),'g')
    end
end

if analyse==1||analyse==2
    %         ylim([0 4])
    line([(1*75) (1*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    line([(5*75) (5*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
elseif analyse==3||analyse==4
    %         ylim([0 4])
    line([(1*75) (1*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    line([(1.75*75) (1.75*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
end




%% cumprobability graphs

% freezetrials_perc = freeze_counter/size(distancePlot,1);
% escapetrials_perc = escape_counter/size(distancePlot,1);

freezetrials_perc = 1;
escapetrials_perc = 1;

%freeze
freeze_cumprob = freeze_cumprob/(freeze_counter/freezetrials_perc);


% yticklabels = [1 7];;
% yticklabels = [1 size(sort_minmaxnorm_speed_all,1)];
% yticks = [1 size(sort_minmaxnorm_speed_all,1)];
% set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
% xlim('auto'); ylim('auto')
set(gca,'fontSize',15,'FontName','Arial');

if analyse==1
    h(3) = figure; hold on;title('Freeze')
    plot(freeze_cumprob((29*75):(35*75)),'r','LineWidth',2)
    % plot(freeze_cumprob)


elseif analyse==2
    figure(h(3))
    plot(freeze_cumprob((29*75):(35*75)),'r-.','LineWidth',2)
    xlim([0 (6*75)])
    % xticklabels = [-5 0 5 10 15];
    xticklabels = [-1 0 1 2 3 4 5];
    % xticks = [0 (5*75) (10*75) (15*75) (20*75)];
    xticks = [0 (1*75) (2*75) (3*75) (4*75) (5*75) (6*75)];
    set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)
    ylim([0 1]);
    line([(1*75) (1*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    line([(5*75) (5*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    set(gca,'fontSize',15,'FontName','Arial');
end

%escape
escape_cumprob = escape_cumprob/(escape_counter/escapetrials_perc);

if analyse==3
    h(4) = figure; hold on;title('Escape')
    plot(escape_cumprob((29*75):(35*75)),'g','LineWidth',2)
    % plot(escape_cumprob)

    xlim([0 (6*75)])
    ylim([0 1]);
    % xticklabels = [-5 0 5 10 15];
    xticklabels = [-1 0 1 2 3 4 5];
    % xticks = [0 (5*75) (10*75) (15*75) (20*75)];
    xticks = [0 (1*75) (2*75) (3*75) (4*75) (5*75) (6*75)];
    set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)

    % yticklabels = [1 7];;
    % yticklabels = [1 size(sort_minmaxnorm_speed_all,1)];
    % yticks = [1 size(sort_minmaxnorm_speed_all,1)];
    % set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
    % xlim('auto'); ylim('auto')
    set(gca,'fontSize',15,'FontName','Arial');

    line([(1*75) (1*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    line([(5*75) (5*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
elseif analyse==4
    figure(h(4))
    plot(escape_cumprob((29*75):(35*75)),'g-.','LineWidth',2)
    % plot(escape_cumprob)

    xlim([0 (2.5*75)])
    ylim([0 1]);
    % xticklabels = [-5 0 5 10 15];
    xticklabels = [-1 -0.5 0 0.5 1 1.5];
    % xticks = [0 (5*75) (10*75) (15*75) (20*75)];
    xticks = [0 (0.5*75) (1*75) (1.5*75) (2*75) (2.5*75)];
    set(gca, 'XTick', xticks, 'XTickLabel', xticklabels)

    % yticklabels = [1 7];;
    % yticklabels = [1 size(sort_minmaxnorm_speed_all,1)];
    % yticks = [1 size(sort_minmaxnorm_speed_all,1)];
    % set(gca, 'YTick', yticks, 'YTickLabel', yticklabels)
    % xlim('auto'); ylim('auto')
    set(gca,'fontSize',15,'FontName','Arial');
    line([(1*75) (1*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    line([(1.75*75) (1.75*75)],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
end

if analyse==2
    figure(h(1))
    box on;
    figname = 'Sweep_speedvstime_freeze.fig';
    saveas(gcf,figname,'fig');
    figname = 'Sweep_speedvstime_freeze.pdf';
    orient(gcf,'portrait')
    print('-dpdf','-painters','-loose',figname);

    figure(h(3))
    box on;
    figname = 'Sweep_freeze_cumprob.fig';
    saveas(gcf,figname,'fig');
    figname = 'Sweep_freeze_cumprob.pdf';
    orient(gcf,'portrait')
    print('-dpdf','-painters','-loose',figname);

elseif analyse==4
    figure(h(2))
    box on;
    figname = 'Loom_speedvstime_escape.fig';
    saveas(gcf,figname,'fig');
    figname = 'Loom_speedvstime_escape.pdf';
    orient(gcf,'portrait')
    print('-dpdf','-painters','-loose',figname);

    figure(h(4))
    box on;
    figname = 'Loom_escape_cumprob.fig';
    saveas(gcf,figname,'fig');
    figname = 'Loom_escape_cumprob.pdf';
    orient(gcf,'portrait')
    print('-dpdf','-painters','-loose',figname);

end


% TURN ON TO SAVE FIGURES
xvalues = linspace(-1,5,(6*75));
if analyse==1
    yvalues = freeze_speed(:,(29*75):(35*75)-1);
    yvalues = yvalues(:,sum(isnan(yvalues))<size(yvalues,1));
    xvalues = xvalues(1:size(yvalues,2));
    h(5) = figure; hold on;
    iosr.statistics.functionalSpreadPlot(xvalues, yvalues,...
        'spreadAlpha',0.3,...
        'outerMode', 'none', ...
        'innermode', 'quartile', ...
        'mainmode', 'median', ...
        'showOutliers', false,...
        'addPrctilesLineColor','r');
    title('Median and 25th to 75th percentile (IQR)')
    axis tight
    box on
    %               set(H(1),'Color','k')
    xlim([-1 5])
    ylim([0 80])
    set(gca,'fontSize',15,'FontName','Arial');
    line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    line([4 4],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);

    figname = 'Sweep_speedvstime_Medianfreeze_WT_gauss.fig';
    saveas(gcf,figname,'fig');
    figname = 'Sweep_speedvstime_Medianfreeze_WT_gauss.pdf';
    orient(gcf,'portrait')
    print('-dpdf','-painters','-loose',figname);

    %% Freeze speed centered
    yvalues = freeze_speed_centered(:,1:450);
    xvalues = xvalues(1:size(yvalues,2));
    h(5) = figure; hold on;
    iosr.statistics.functionalSpreadPlot(xvalues, yvalues,...
        'spreadAlpha',0.3,...
        'outerMode', 'none', ...
        'innermode', 'quartile', ...
        'mainmode', 'median', ...
        'showOutliers', false,...
        'addPrctilesLineColor','r');
    title('Median and 25th to 75th percentile (IQR)')
    axis tight
    box on
    %               set(H(1),'Color','k')
    xlim([-1 5])
    ylim([0 80])
    set(gca,'fontSize',15,'FontName','Arial');



elseif analyse==2
    h(6) = figure; hold on;
    yvalues = freeze_speed(:,(29*75):(35*75)-1);
    yvalues = yvalues(:,sum(isnan(yvalues))<size(yvalues,1));
    xvalues = xvalues(1:size(yvalues,2));
    %     xvalues = linspace(-1,5,(6*75));
    iosr.statistics.functionalSpreadPlot(xvalues, yvalues,...
        'spreadAlpha',0.3,...
        'outerMode', 'none', ...
        'innermode', 'quartile', ...
        'mainmode', 'median', ...
        'showOutliers', false,...
        'addPrctilesLineColor','r');
    title('Median and 25th to 75th percentile (IQR)')
    axis tight
    box on
    xlim([-1 5])
    ylim([0 80])
    set(gca,'fontSize',15,'FontName','Arial');
    line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    line([4 4],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);

    figname = 'Sweep_speedvstime_Medianfreeze_enuc_gauss.fig';
    saveas(gcf,figname,'fig');
    figname = 'Sweep_speedvstime_Medianfreeze_enuc_gauss.pdf';
    orient(gcf,'portrait')
    print('-dpdf','-painters','-loose',figname);

    %% Freeze speed centered
    yvalues = freeze_speed_centered(:,1:450);
    xvalues = xvalues(1:size(yvalues,2));
    h(5) = figure; hold on;
    iosr.statistics.functionalSpreadPlot(xvalues, yvalues,...
        'spreadAlpha',0.3,...
        'outerMode', 'none', ...
        'innermode', 'quartile', ...
        'mainmode', 'median', ...
        'showOutliers', false,...
        'addPrctilesLineColor','r');
    title('Median and 25th to 75th percentile (IQR)')
    axis tight
    box on
    %               set(H(1),'Color','k')
    %               xlim([-1 5])
    %               ylim([0 40])
    set(gca,'fontSize',15,'FontName','Arial');


elseif analyse==3
    yvalues = escape_speed(:,(29*75):(35*75)-1);
    yvalues = yvalues(:,sum(isnan(yvalues))<size(yvalues,1));
    xvalues = xvalues(1:size(yvalues,2));
    h(7) = figure; hold on;
    iosr.statistics.functionalSpreadPlot(xvalues, yvalues,...
        'spreadAlpha',0.3,...
        'outerMode', 'none', ...
        'innermode', 'quartile', ...
        'mainmode', 'median', ...
        'showOutliers', false,...
        'addPrctilesLineColor','r');
    title('Median and 25th to 75th percentile (IQR)')
    axis tight
    box on
    xlim([-1 1.5])
    ylim([0 80])
    set(gca,'fontSize',15,'FontName','Arial');
    line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    line([0.75 0.75],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);

    figname = 'Loom_speedvstime_Medianescape_WT_gauss.fig';
    saveas(gcf,figname,'fig');
    figname = 'Loom_speedvstime_Medianescape_WT_gauss.pdf';
    orient(gcf,'portrait')
    print('-dpdf','-painters','-loose',figname);

    %% escape speed centered
    yvalues = escape_speed_centered(:,1:450);
    yvalues = yvalues(:,sum(isnan(yvalues))<size(yvalues,1));
    xvalues = xvalues(1:size(yvalues,2));
    h(5) = figure; hold on;
    iosr.statistics.functionalSpreadPlot(xvalues, yvalues,...
        'spreadAlpha',0.3,...
        'outerMode', 'none', ...
        'innermode', 'quartile', ...
        'mainmode', 'median', ...
        'showOutliers', false,...
        'addPrctilesLineColor','r');
    title('Median and 25th to 75th percentile (IQR)')
    axis tight
    box on
    %               set(H(1),'Color','k')
    %               xlim([-1 5])
    %               ylim([0 40])
    set(gca,'fontSize',15,'FontName','Arial');

elseif analyse==4
    h(8) = figure; hold on;
    yvalues = escape_speed(:,(29*75):(35*75)-1);
    yvalues = yvalues(:,sum(isnan(yvalues))<size(yvalues,1));
    xvalues = xvalues(1:size(yvalues,2));
    iosr.statistics.functionalSpreadPlot(xvalues, yvalues,...
        'spreadAlpha',0.3,...
        'outerMode', 'none', ...
        'innermode', 'quartile', ...
        'mainmode', 'median', ...
        'showOutliers', false,...
        'addPrctilesLineColor','r');
    title('Median and 25th to 75th percentile (IQR)')
    axis tight
    box on
    xlim([-1 1.5])
    ylim([0 80])
    set(gca,'fontSize',15,'FontName','Arial');
    line([0 0],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);
    line([0.75 0.75],   [min(get(gca, 'Ylim')) max(get(gca, 'Ylim'))], 'Color', 'r','LineWidth',0.5);

    figname = 'Loom_speedvstime_Medianescape_enuc_gauss.fig';
    saveas(gcf,figname,'fig');
    figname = 'Loom_speedvstime_Medianescape_enuc_gauss.pdf';
    orient(gcf,'portrait')
    print('-dpdf','-painters','-loose',figname);

    %% escape speed centered
    yvalues = escape_speed_centered(:,1:450);
    yvalues = yvalues(:,sum(isnan(yvalues))<size(yvalues,1));
    xvalues = xvalues(1:size(yvalues,2));
    h(5) = figure; hold on;
    iosr.statistics.functionalSpreadPlot(xvalues, yvalues,...
        'spreadAlpha',0.3,...
        'outerMode', 'none', ...
        'innermode', 'quartile', ...
        'mainmode', 'median', ...
        'showOutliers', false,...
        'addPrctilesLineColor','r');
    title('Median and 25th to 75th percentile (IQR)')
    axis tight
    box on
    %               set(H(1),'Color','k')
    %               xlim([-1 5])
    %               ylim([0 40])
    set(gca,'fontSize',15,'FontName','Arial');

end





