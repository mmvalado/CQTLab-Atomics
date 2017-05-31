%%   POSITION CLOUDS

% Estimates the position of the two clouds (in pixel). 
% 1. The program plots the double cloud distributon (processed with
% PerfectBECfit or Magic_GUI_A2).
% 2. Then, it ask the user to define the range around which each maximum is
% (by clicking)
% 3. Using the range given in the step 2. it calculates the average position and the
% error (standard deviation)

% Trick: change the image size manually to have more precision when we want
% to define the points.

% M.M. Valado  (CQT-NUS, Singapore) v.1 March 2017
% M.M. Valado  (CQT-NUS, Singapore) v.2 May 2017


%%
clc;clear all;close all;
global px; global py; global col; global row;
% Load matrices 
load('px.mat');
load('col.mat');
px=px';
col=col';
load('py.mat');
load('row.mat');
py=py';
row=row';

%%


m=input('Which program do you want to use: Bottom Camera or Side Camera? [B/S]: ','s');
if m=='B';
    PositionClouds_BottomCamera(col,px); 
end

if m=='S'
         PositionClouds_SideCamera(row,py);
end
