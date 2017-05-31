%%  Main.m 


% This program converts the .txt image files from pixelfly camera into
% .tif for either the A1 program (PerfectBecFit) or the A2 program
% (MagicGUI)


% Instructions

% 1. Change below the destination folder and the date (needed to rename the
% files)

% 2. Type the number of the first image to be analyzed in the Command
% Window.
% 3. Type A1/A2 depending on how you want to rename the images

% 3. Click run. A window will display and ask you to select the
%      files you want to convert (there's no need to copy them since they are
%      not overwritten). 





% M.M. Valado  (CQT-NUS, Singapore) v.1 Jan 2017
% M.M. Valado  (CQT-NUS, Singapore) v.2 Jan 2017
%%
clc; clear all; close all;

%% -- Change manually the destination path and folder names --

PathName='D:\ExImage\provadelcazzo'; %Path 
% FolderName='Exp0'; %Folder where the user wants to save the pictures
 

%% --  Do not touch --
global startt; global indx;

destination=[PathName]; % If the destination folder does not exist, it will be created.

myfiledate=input('Type date (YYYYMMDD): ','s'); %Change date

m=input('Which program do you want to use? [A1/A2]: ','s');
if m=='A1';
    txt2tif_A1(destination,myfiledate); % Function to rename all files
end

if m=='A2'
         txt2tif_A2(destination,myfiledate); % Function to rename all files
end


% The following loop stop the execution in case the user just wanted to convert the
% names (type 'N' to stop the program).

 h = msgbox('Pictures renamed succesfully','Success'); %Displays message
 

