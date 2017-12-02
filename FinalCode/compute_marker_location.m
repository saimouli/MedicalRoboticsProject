function centroids = compute_marker_location(img)
% Function compute_marker_location takes in a img(uint8 format) as an input argument 
% and returns the centroids of the three markers as a 3x2 array.
% Perform necessary image processing operations to get the location of the
% centroids
%%%%%%%%%%%%%%%%%%%% YOUR CODE BELOW THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%img= imread(img);
%% Choose an appropriate threshold to segment the body of the target
hsv_img= rgb2hsv(img);
h_img= hsv_img(:,:,1);
%imtool(h_img);
s_img= hsv_img(:,:,2);
%imtool(s_img);
v_img= hsv_img(:,:,3);
%imtool(v_img);

im_h_bw = h_img >= 0.576 & h_img <= 0.570;
%imshow(im_h_bw);
im_v_bw = v_img >= 0.894 & v_img <= 1;
%imshow(im_v_bw);
im_s_bw = s_img >= 0 & s_img <= 0.043;
%imshow(im_s_bw);

fiducial_mask = im_v_bw;
imshow(fiducial_mask);
%% Remove any unwanted blobs by querying the area or some morphological cleaning
bw_1=bwareaopen(fiducial_mask,890);
%% Invert the Image to get blobs corresponding to the internal circles of the target
%bw_2 = 1 - bw_1;
%imshow(bw_2);

bw_1 = imfill(bw_1,'holes');
%imshow(bw_1);

label = bwlabel(bw_1);
stats = regionprops(logical(bw_1), 'Area', 'Centroid', 'Eccentricity');

[m, l]= size(img);
bw_3=false(960,1280);
%imshow(bw_3);
for i=1:length(stats)
    if((stats(i).Eccentricity) <0.6 & stats(i).Area >=100)
       bw_3(label==i)=1;
    end
end

%imshow(bw_3);
structelem = strel('disk',2);
bw_4 = imdilate(bw_3, structelem);
%imshow(bw_4);
%% Get the centroids of the isolated circular blobs
label2 = bwlabel(bw_3);
stats2 = regionprops(logical(bw_3),'Centroid');
% Iterate over the centroids to gather the centroid positions. 
for j=1:length(stats2)
    cod(:,j)= stats2(j).Centroid;
end

centroids = [cod(1) cod(2); cod(3) cod(4); cod(5) cod(6)];
%% Plot the contour and centroid position on top of the image
% Check bwboundaries/bwperim
boundaries = bwboundaries(label2);
imshow(img);
hold on
for k=1:length(stats2)
    b= boundaries{k};
    plot(b(:,2),b(:,1),'r','LineWidth',2);
    plot(cod(1,:),cod(2,:),'*g');
end


end