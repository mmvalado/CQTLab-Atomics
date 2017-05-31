%% txt2tif_A2.m %% 

% This program converts the .txt files saved by the Pixelfly camera to .tif
% in a way they can be analyzed in MATLAB (perfectBECfit)




 % M.M. Valado -- (CQT-NUS, Singapore) v.1.0  Nov 2016
 % M.M. Valado -- (CQT-NUS, Singapore) v.2.0  Jan 2017

%%
function txt2tif_A2(destination,myfiledate)
global startt; global indx;

%% -- Do not touch -- %%

[FileName,PathName,FilterIndex] = uigetfile('*.txt','MultiSelect','on'); % Opens a window and allows you to select the files you want to work with.

numfiles = size(FileName,2);

%%
for ii = 1:numfiles 
    FileName{ii};
    
    entirefile =fullfile(PathName,FileName{ii}); % Build full filename from PathName and FileName

    fid = fopen(entirefile);
    
    formatSpec = '%d %f';
    sizeB= [1024,1392]; %[Y,X]
     B= fscanf(fid,formatSpec,sizeB);

     B=uint16(flipud(B)); %Changes data type in the matrix and flips it updown.

 %% -- Save files in .tif and move them to the destination folder -- %%   
for ii = 1:2:numfiles 
 if ii<10
     l='_000%d_000.tif';
     myfile1=strcat(myfiledate,l); %Generates the complete name of the new file
    imwrite(B,sprintf(myfile1,ii),'Compression','none');
     movefile('*.tif',destination);

 else
     h='_00%d_000.tif';
     myfile2=strcat(myfiledate,h); %Generates the complete name of the new file
     imwrite(B,sprintf(myfile2,ii),'Compression','none'); 
     movefile('*.tif',destination);

 end
end
for ii = 2:2:numfiles
    if ii<12
     l='_000%d_002.tif';
     myfile1=strcat(myfiledate,l); %Generates the complete name of the new file
    imwrite(B,sprintf(myfile1,ii-1),'Compression','none');
     movefile('*.tif',destination);

 else
     h='_00%d_002.tif';
     myfile2=strcat(myfiledate,h); %Generates the complete name of the new file
     imwrite(B,sprintf(myfile2,ii-1),'Compression','none'); 
     movefile('*.tif',destination);

 end
end
    fclose(fid);

end  

    
    


