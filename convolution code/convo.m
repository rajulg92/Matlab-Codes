clc;
clear all;
close all;
k=input('Enter the no of input message');
n=input('Enter the no of bits in codeword');
m=input('Enter the no of shift register');
g=zeros(n,m)
for i=1:n
    disp(i);
    g(i,1:m)=input('Generator matrix: ');
end
trellis=poly2trellis(3,[4 7 5])
load deriv.mat
tree=[00,00,00,00,10,10,10,10,01,01,01,01,11,11,11,11];
treeplot(tree)
disp('Generator matrix');
disp(g);
mx=input('Enter the input data sequence');
codeword=convenc(mx,trellis)
[row column]=size(mx);
length=m+column-1;
v=zeros(n,length);

for i=1:n
    v(i,1:length)=conv(mx,g(i,1:m));
    v=rem(v,2);
end
disp('Output matrix');
disp(v);
v=v'; 
disp('codeword');
disp(v);
