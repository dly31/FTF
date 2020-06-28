clc;
clear all;
close all;


I1=mat2gray(rgb2gray(imread('IR.png'))); 
    I2=mat2gray(rgb2gray(imread('VIS.png'))); 

      if size(I1,3)==3
 I1=rgb2gray(I1);
      end

 I(:,:,1)= I1;
  
 if size(I2,3)==3
 I2=rgb2gray(I2);
 end

 I(:,:,2)=I2;

% figure, imshow(uint8(I2));
tic

% Assigning values to the parameters
n=20; 
dt=0.9;
k=3;

 % Decomposing input images as high frequency and low frequency layers
 
[A1]=fpdepyou(I1,n);
[A2]=fpdepyou(I2,n);
D1=double(I1)-double(A1);%high frequency
D2=double(I2)-double(A2);%low frequency


 A(:,:,1)=A1;
 A(:,:,2)=A2;

 D(:,:,1)=D1;
 D(:,:,2)=D2;
