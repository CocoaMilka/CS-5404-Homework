% CS 5404 HW4 Joshua Ghilino

% Read images
trueColorImage = imread("poss1.jpg");
originalImage = imread("poss2.jpg");

% Convert RGB to indexed image with 16 colors
[indexedImage, cmap] = rgb2ind(originalImage, 16);

    % Convert true color image to gray
    grayTrueColorImage = rgb2gray(trueColorImage);
    
    % Convert indexed image to gray
    grayIndexedImage = ind2gray(indexedImage, cmap);

% Display original and gray TRUECOLOR
figure;
subplot(1, 2, 1);
imshow(trueColorImage);
colorbar
title('True Color Image');

subplot(1, 2, 2);
imshow(grayTrueColorImage);
colorbar
title('Gray True Color Image');

% Display original and gray INDEXED
figure;
subplot(1, 2, 1);
imagesc(indexedImage);
colormap(gca, cmap);  % Set the original colormap for the indexed image
colorbar
title('Indexed Image');

subplot(1, 2, 2);
imagesc(grayIndexedImage);
colormap(gca, gray);  % Set the colormap to grayscale for the gray indexed image
colorbar
title('Gray Indexed Image');
