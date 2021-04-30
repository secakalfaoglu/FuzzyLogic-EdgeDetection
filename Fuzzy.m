% Program bu dosyadan çalıştırılır.
function [  ] = Fuzzy()
% Kenar belirlemek istediğiniz fotoğrafın yolunu aşağıya yazın.
% Orjinal görüntü penceresi
Igray=imread("C:\Users\Faruk\Desktop\Kenar Belirleme\wraith.jpg");
subplot(2,2,1);
imshow(Igray);
title('Original Image');

% Grayscale görüntü penceresi
if size(Igray,3)==3
Igray=rgb2gray(Igray);
subplot(2,2,2);
imshow(Igray);
title('Grayscale Image')
end

% Fuzzified görüntü penceresi
Igray2=FIS1(Igray);
subplot(2,2,3);
imshow(Igray2);
title('Fuzzified Image');

% Output görüntü penceresi
output=FIS2(Igray2);
subplot(2,2,4);
imshow(output);
title('Output Image');

end

