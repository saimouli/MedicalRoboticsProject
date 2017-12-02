
%%
% Enter the correct integer to the webcam function as per the connection
% on your computer.
if ~exist('cam','var')  %type camlist to see available webcams
    cam = webcam(2); 
end
%% 
% Intrinsic camera matrix from calibration toolbox
KK =[842.8736 0  327.4053;
     0  843.8088  219.2094;
     0         0    1.0000];

Z=309.14; % dummy to test the file. This is fixed. We need the extrinsic x and y values from 
          % the toolbox

% Acquire an image and locate the centroids. You should complete the
% function compute_marker_location.m

img = snapshot(cam);
%%
%img= imread('test_seg_dark.png'); //to test if we don't have the webcam
centroids = compute_marker_location(img);

%% Convert the Pixel co-ordinates to the camera reference frame
markers_cam = pixel_to_world(centroids, KK, Z);

%% Get the target coordiantes from fiducials using CAD

