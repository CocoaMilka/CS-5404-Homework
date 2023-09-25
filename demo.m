% CS 5404 HW4 Joshua Ghilino

% Read images
trueColorImage = imread("poss1.jpg");
originalImage = imread("poss2.jpg");

% Convert RGB to indexed image with 16 colors
[indexedImage, cmap] = rgb2ind(originalImage, 16);

    % Convert true color image to gray
    grayTrueColorImage = rgb2gray(trueColorImage);
    
    % Convert indexed image to gray
    grayIndexedImage = ind2gray(indexedImage, map);

% Create figure to display
figure;

% Display original and gray TRUECOLOR
subplot(2, 2, 1);
imshow(trueColorImage);
colorbar
title('True Color Image');

subplot(2, 2, 2);
imshow(grayTrueColorImage);
colorbar
title('Gray True Color Image');

% Display original and gray INDEXED
subplot(2, 2, 3);
imagesc(indexedImage);
%colormap(cmap)
colorbar
title('Indexed Image');

subplot(2, 2, 4);
imshow(grayIndexedImage);
colorbar
title('Gray Indexed Image');
