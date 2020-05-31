%Filtering of an image having speckle noise
f=imread('C:\Users\Balu\Desktop\dsp_project\DSC_0157.gif');
subplot(2,3,1)
imshow(f),title('Original image');
g=imnoise(f,'speckle',0.05);
subplot(2,3,2)
imshow(g),title('Noisy image')
h = fspecial('unsharp');
m=fspecial('average',[3,3]);
j=imfilter(g,h);
subplot(2,3,3)
imshow(j),title(' Linear filtered image')
k=filter2(fspecial('average',3),g)/255;
subplot(2,3,4)
imshow(k),title('FIR filtered image')
l = medfilt2(g,[3 3]);
subplot(2,3,5)
imshow(l),title(' Median filtered image')
m= wiener2(g,[5 5]);
subplot(2,3,6)
imshow(m),title('Adaptive filtered image') 
