clear; close all; clc;

%% adult example
Ipara_raw = double(imread('Image/adult_para_pol.bmp'));
Icros_raw = double(imread('Image/adult_cros_pol.bmp'));

%% infant example
% Ipara_raw = double(imread('Image/infant_para_pol.bmp'));
% Icros_raw = double(imread('Image/infant_cros_pol.bmp'));

%% ICU example
% Ipara_raw = double(imread('Image/ICU_para_pol_Protection.bmp'));
% Icros_raw = double(imread('Image/ICU_cros_pol_Protection.bmp'));

% default parameters
r = 0.1; sigma = 1;

% MSD algorithm for living-skin detection
Ipara = imresize(Ipara_raw, r, 'box');
Icros = imresize(Icros_raw, r, 'box');
H = Icros(:,:,1)./Icros(:,:,2) - Ipara(:,:,1)./Ipara(:,:,2);
H(H<0 | mean(Icros,3) < 10) = 0;
H = imgaussfilt(H, sigma);

% visualization
figure, 
subplot(1,3,1), imagesc(Ipara_raw/255), axis off, title('Parallel polarization');
subplot(1,3,2), imagesc(Icros_raw/255), axis off, title('Cross polarization')
subplot(1,3,3), imagesc(H), colormap jet, axis off, title('Living-skin heatmap')

