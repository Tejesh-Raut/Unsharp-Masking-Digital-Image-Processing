function myUnsharpMasking(filename)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
s = load(filename);
p1 = s.imageOrig;
halfwindow = 10 ;
amount = 0.1;
p2 = zeros((size(p1,1)+(2*halfwindow)),(size(p1,2)+(2*halfwindow)));
g = fspecial('gaussian',(2*halfwindow +1),5);
convolution = zeros( size(p1,1), size(p1,2));
convolution = imfilter(p1,g,'conv');

unsharp = p1 + amount*(p1 - convolution);


min1 = min(min(p1));
max1 = max(max(p1));
p3 = ((p1 - min1))/(max1- min1);
p4 = uint8(255 * mat2gray(p3));
min1 = min(min(unsharp));
max1 = max(max(unsharp));
unsharp1 = (((unsharp - min1))/(max1- min1));
unsharp2 = uint8(255 * mat2gray(unsharp1));

subplot(1,2,1);
imagesc ((p4)); % phantom is a popular test image
colormap('Gray');
title('Original');
daspect ([1 1 1]);
axis tight;
subplot(1,2,2);
imagesc ((unsharp2)); % phantom is a popular test image
colormap('Gray');
title('Sharpened');
daspect ([1 1 1]);
axis tight;
imwrite(p4, 'images\superMoonCrop.png' );
imwrite(unsharp2,'images\superMoonCropSharpened.png');
end

