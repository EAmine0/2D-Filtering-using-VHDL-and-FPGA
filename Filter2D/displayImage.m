dataIn = load('Lena128x128g_8bits.dat');
dataOut = load('Lena128x128g_8bits_r.dat');

dataOut = mat2gray(typecast(uint16(bin2dec(num2str(dataOut))),'int16'));
dataOut = reshape(dataOut, 125, 126)';

dataIn = mat2gray(bin2dec(num2str(dataIn)));
dataIn = reshape(dataIn, 128, 128)';

figure,
subplot(1,2,1)
imshow(dataIn,[]); title ('input image');

subplot(1,2,2)
imshow(dataOut,[]); title('Output Image');

