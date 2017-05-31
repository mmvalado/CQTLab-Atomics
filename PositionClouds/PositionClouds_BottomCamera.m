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
%%

 function PositionClouds_BottomCamera(col,px)
  close(figure)
global px; global py; global col; global row;

 
% % Load matrices 
% load('px.mat');
% load('col.mat');
% px=px';
% col=col';
% load('py.mat');
% load('row.mat');
% py=py';
% row=row';

%%



A=[col px];
size(A)

%Image of the distribution 
fig=figure();
set(fig,'position', [500 500 1000 300]);
plot(col,px) ;


% Selection of the ranges to find the position of each cloud
[B] = ginput(4);

Cloudup=A(B(1):B(2),:);
Clouddown=A(B(3):B(4),:);


%Calculation of the Avg and Std of the points
Avgup=mean(Cloudup);
Avgdown=mean(Clouddown);

 SDup=std(Cloudup);
 SDdown=std(Clouddown);

 %Estimated position
Avgposition=[Avgup(1,1) SDup(1,1) Avgdown(1,1) SDdown(1,1)]
% 
 end
