clc;
clear all;
close all;

%     I1=double(imread('E:\上电\2-实验室\2-小论文\image fusion论文\实验结果\修订稿2\Tree_sequence\thermal\4901i.bmp')); 
%     I2=double(imread('E:\上电\2-实验室\2-小论文\image fusion论文\实验结果\修订稿2\Tree_sequence\visual\4901v.bmp')); 
    I1=double(imread('1.JPG')); 
    I2=double(imread('2.JPG')); 
%     I1=double(imread('source24_2.tif'));
%     I2=double(imread('source24_1.tif'));
%  I(:,:,1)=zero(size(I1))
%   I(:,:,2)=zero(size(I2))
      if size(I1,3)==3
 I1=rgb2gray(I1);
 end
%        figure, imshow((uint8(I1)));

  I(:,:,1)= I1;
  
  
 if size(I2,3)==3
 I2=rgb2gray(I2);
 end

 I(:,:,2)=I2;

%        figure, imshow(uint8(I2));
tic

% Assigning values to the parameters
n=20; 
dt=0.1;
k=4;

 % Decomposing input images as base and detail layers
 
[A1]=fpdepyou(I1,n);
[A2]=fpdepyou(I2,n);
%D1=double(A1)-double(I1);
 D1=double(I1)-double(A1);
D2=double(I2)-double(A2);

 A(:,:,1)=A1;
 A(:,:,2)=A2;
  
 D(:,:,1)=D1;
 D(:,:,2)=D2;
 
 % Detail layer fusion 

%  imf1 = selc_max(D1,D2)
% imf1 = selc_myem(D1,D2)

%  C1 = cov([D1(:) D2(:)]);
% [V11, D11] = eig(C1);
% if D11(1,1) >= D11(2,2)
%   pca1 = V11(:,1)./sum(V11(:,1));
% else  
%   pca1 = V11(:,2)./sum(V11(:,2));
% end
%   imf1 = pca1(1)*D1 + pca1(2)*D2;
imf1=0.5*D1+0.5*D2;
  % Base layer fusion 
   imf2=(0.5*A1+0.5*A2);
%      imf2 = selc_myem1(A1,A2)
% imf2 = selc_em(A1,A2)
% Final fused image

F=(double(imf1)+double(imf2));
toc

% xfused8=uint8(F);
 
figure,imshow(F, []);
F=uint8(F);
% imwrite(F,'C:\Users\Administrator\Desktop\小论文图像/fpde1.png');
%imwrite(F,'\..png');
%评估指标




    