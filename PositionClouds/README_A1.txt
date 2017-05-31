These are the instructions to modify A1 perfectBECfit code in order to be used with PostitionClouds programs.
Please, follow the steps below these lines.

1) Go to:  MATLAB\...\PerfectBecFit\fitting
2) Open fitThermal.m
3) Paste the following code after line 66:


% --------------------- "YourName" added these lines ------------------------------------
% Figure1=figure; 
% plot(py,-row,'b',fity_values,-row,'r');
% grid minor

%Uncomment lines above if you want a figure with the optical density distribution to be displayed.
%The lines below save the X and Y distributions:
save('py.mat','py') 
save('row.mat','row')

save('px.mat','px')
save('col.mat','col')
% ---------------------------------------------------------

 
4) Save and close             
 
5) On MATLAB Window, current folder (usually on the left side of your screen) --> Right click on PositionClouds --> Add to path --> Selected folder and subfolders

6) Open perfectBECfit and run it --> Analyze an image

7) Depending on which camera you have used in the experiment (bottom or side camera), run the script with the same name (Editor tab in MATLAB --> Run)

8) The OD distribution will be displayed. With the cursor, select the points over which you want to calculate the average position.

9) Your result will be displayed in the command window.