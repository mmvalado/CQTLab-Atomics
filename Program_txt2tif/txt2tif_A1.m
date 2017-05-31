%% txt2tif_A1.m %% 

% This program converts the .txt files saved by the Pixelfly camera to .tif
% in a way they can be analyzed in MATLAB (perfectBECfit)




 % M.M. Valado -- (CQT-NUS, Singapore) v.1.0  Nov 2016
 % M.M. Valado -- (CQT-NUS, Singapore) v.2.0  Jan 2017

%%
function txt2tif_A1(destination,myfiledate)
global startt; global indx;

%% -- Do not touch -- %%
[FileName,PathName,FilterIndex] = uigetfile('*.txt','MultiSelect','on'); % Opens a window and allows you to select the files you want to work with.

numfiles = size(FileName,2);

%%
for ii = 1:numfiles 
    FileName{ii};
    start=str2num(FileName{ii}(8:10));
    entirefile =fullfile(PathName,FileName{ii}); % Build full filename from PathName and FileName

    fid = fopen(entirefile);
    
    formatSpec = '%d %f';
    sizeB= [1024,1392]; %[Y,X]
     B= fscanf(fid,formatSpec,sizeB);

     B=uint16(flipud(B)); %Changes data type in the matrix and flips it updown.
     
    

 %% -- Save files in .tif and move them to the destination folder -- %%   
 
 if start<10
     l='_000%d.tif';  
     
     myfile1=strcat(myfiledate,l); %Generates the complete name of the new file
    imwrite(B,sprintf(myfile1,start),'Compression','none');

   
     movefile('*.tif',destination);
 
 elseif start>99 
     m='_0%d.tif';
     
      myfile2=strcat(myfiledate,m); %Generates the complete name of the new file
     imwrite(B,sprintf(myfile2,start),'Compression','none'); 
  
     movefile('*.tif',destination);

 else 
    
     h='_00%d.tif';
       
     myfile2=strcat(myfiledate,h); %Generates the complete name of the new file
     imwrite(B,sprintf(myfile2,start),'Compression','none'); 
  
     movefile('*.tif',destination);

 
 end

    fclose(fid);


end  

    
    
end






