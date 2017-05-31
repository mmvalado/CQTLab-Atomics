These are the instructions to modify A2 Magic GUI code in order to be used with PostitionClouds programs.
Please, follow the steps below these lines.
 
1) Go to:  MATLAB...\MATLAB_Magic_GUI_A2\atomicgui Original (tif files)
2) Open absorption.m
3) Paste the following code after line 99:
 
 
% ----- "Your name" added these lines ---------------
row=Y;
col=X;
py=ODcuty;
px=ODcutx;

save('py.mat','py') ;
save('row.mat','row');

save('px.mat','px');
save('col.mat','col');
%--------------------------------------------            
 
5) Save and close             
 
6) Open fluorescence.m 
7) Paste the following code after line 41:

% ----- "Your name" added these lines ---------------
row=Y;
col=X;
py=Py;
px=Px;

save('py.mat','py') ;
save('row.mat','row');

save('px.mat','px');
save('col.mat','col');
%--------------------------------------------            

8) Save and close.

9) On MATLAB Window, current folder (usually on the left side of your screen) --> Right click on PositionClouds --> Add to path --> Selected folder and subfolders

10) Open Magic GUI and run it --> Analyze an image

11) Depending on which camera you have used in the experiment (bottom or side camera), run the script with the same name (Editor tab in MATLAB --> Run)

12) The OD distribution will be displayed. With the cursor, select the points over which you want to calculate the average position.

13) Your result will be displayed in the command window.



