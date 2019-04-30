clc, close all, clear all;

D = 'data_roi_single/train/benign';
S = dir(fullfile(D,'*.jpg')); % pattern to match filenames.
New_Path = 'data_roi_single_3/train/benign'
mkdir(New_Path);
for k = 1:numel(S)
    F = fullfile(D,S(k).name);
    I = imread(F);
%     imshow(I)
    rgbImage = cat(3, I, I, I);
%     size(rgbImage)    % Verifico que el tensor sea de tipo MxNX3
    baseFileName = strcat('b', num2str(k), '.jpg'); % Whatever....
    fullFileName = fullfile(New_Path, baseFileName);
    imwrite(rgbImage, fullFileName);
%     S(k).data = I; % optional, save data.
    
end

D = 'data_roi_single/train/malignant';
S = dir(fullfile(D,'*.jpg')); % pattern to match filenames.
New_Path = 'data_roi_single_3/train/malignant'
mkdir(New_Path);
for k = 1:numel(S)
    F = fullfile(D,S(k).name);
    I = imread(F);
%     imshow(I)
    rgbImage = cat(3, I, I, I);
%     size(rgbImage)    % Verifico que el tensor sea de tipo MxNX3
    baseFileName = strcat('m', num2str(k), '.jpg'); % Whatever....
    fullFileName = fullfile(New_Path, baseFileName);
    imwrite(rgbImage, fullFileName);
%     S(k).data = I; % optional, save data.
    
end
