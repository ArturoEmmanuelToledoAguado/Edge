clc;
clear all;
close all;

%Extraccion de las imagenes
ruta=["IMG/1.jpg", "IMG/2.jpg", "IMG/3.jpg", "IMG/4.jpg", "IMG/5.jpg", "IMG/6.jpg", "IMG/7.jpg"];

%Abrir la imagen
img=imread(ruta(1));
imshow(img)

Bw=rgb2gray(img);
Bw=edge(Bw);
figure
imshow(Bw)