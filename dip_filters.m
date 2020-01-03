%Extract edges by using different filters
clc;
clear all;
[filename, pathname] = uigetfile('*.*', 'Select an image?');
am=strcat(pathname,filename);
a=imread(am);
b=rgb2gray(a); %convert image from RGB color to Gray
figure
imshow(a);
title('original image')
hold on;
s=[1 0 -1;2 0 -2; 1 0 -1]; % soble filter
c=imfilter(b,s);
figure
imshow(c);
title('soble filter')
hold on;
p=[-1 0 1;-1 0 1; -1 0 1]; %prewitt filter
d=imfilter(b,p);
figure
imshow(d);
title('prewitt filter')
hold on;
r=[0 1; -1 0]; %robert filter
f=imfilter(b,r);
figure
imshow(f);
title('robert filter')
hold on;
e=edge(b); % edge function
figure
imshow(e);
title('Edge Function')
hold on;



