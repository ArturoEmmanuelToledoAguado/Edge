clc;
clear all;
close all;

%Extraccion de las imagenes
ruta=["IMG/1.jpg", "IMG/2.jpg", "IMG/3.jpg", "IMG/4.jpg", "IMG/5.jpg", "IMG/6.jpg", "IMG/7.jpg"];

%Operadores
op=["Sobel", "Prewitt", "Roberts", "log", "zerocross", "Canny", "approxcanny"];

for i=1:7;
    %Abrir la imagen
    img=imread(ruta(i));
    %Pasamos a gris
    img=rgb2gray(img);
    figure(i)
    subplot(2,1,1)
    imshow(img)
    title('Original')
    
    %for para los metodos
    for j=1:7
        Bw=edge(img,op(j));
        if j<2
            subplot(2,1,2)
            imshow(Bw)
            title(op(j))
        elseif j>=2 && j<4
            figure(i+7)
            subplot(2,1,j-1)
            imshow(Bw)
            title(op(j))
        elseif j>=4 && j<6
            figure(i+14)
            subplot(2,1,j-3)
            imshow(Bw)
            title(op(j))
        else
            figure(i+21)
            subplot(2,1,j-5)
            imshow(Bw)
            title(op(j))
        end
    end
end

%Propio
% img=imread(ruta(1));
% img=rgb2gray(img);
% img=double(img);
% [f,c]=size(img)
% mascaraX=[1,0,-1;2,0,2;1,0,-1]*1/4;
% mascaraY=[-1,-2,-1;0,0,0;1,2,1]*1/4;
% Gx=abs(imfilter(img,mascaraX,'conv'));
% Gy=abs(imfilter(img,mascaraY,'conv'));
% for i=1:f
%     for j=1:c
%         G(i,j)=sqrt(Gx(i,j).^2+Gy(i,j).^2);
%     end
% end
% G=uint8(G);
% figure()
% imshow(G)