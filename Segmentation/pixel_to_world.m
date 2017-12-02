function markers_cam = pixel_to_world(centroids, KK, Z)
% Function pixel_to_world converts the pixel co-ordinates to the camera
% co-ordinates. 
% It takes in centroids of the three markers as a 3x2 matrix, the camera
% instrinsic KK and actual  from the camera to the markers Z and 
% returns the position of the markers in a 3x2 matrix

%img = '6cm.jpeg';
%img = imread(img);
%centroids = compute_marker_location(img);
%%%%%%%%%%%%%%%%%%% YOUR CODE BELOW THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%KK =[842.8736 0  327.4053;
         0  843.8088  219.2094;
         0         0    1.0000];
%Z=371.052546;
markers_cam = zeros(3,2);

markers_cam(1,1) = ((KK(1,3)-centroids(1,1))*Z)/KK(1,1);
markers_cam(1,2) = ((KK(1,3)-centroids(1,2))*Z)/KK(1,1);

markers_cam(2,1) = ((KK(1,3)-centroids(2,1))*Z)/KK(1,1);
markers_cam(2,2) = ((KK(1,3)-centroids(2,2))*Z)/KK(1,1);

markers_cam(3,1) = ((KK(1,3)-centroids(3,1))*Z)/KK(1,1);
markers_cam(3,2) = ((KK(1,3)-centroids(3,2))*Z)/KK(1,1);

disp(markers_cam);
disp(centroids);
end