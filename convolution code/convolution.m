clear all;
clc;
k=input('Enter th no of input mesage');
n=input('Enter the no of bits in codeword');
z=input('Enter the constriant length');
m=input('Enter the input message');
for i=1:n
    gi=input('Enter the generator polynomial');
    ci=conv(m,gi);
    di=rem(ci,2);
    disp(di);
    ci=di';
end

    
    

