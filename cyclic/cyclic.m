clc;
clear all;
close all;
n=input('Enter the no of bits in codeword');
k=input('Enter the no of bits in message');
g=input('Enter the generator polynomial');
m=input('Enter the message');
p=zeros(1,n-k);  
m1=horzcat(m,p);  
disp(m1);
[q,r]=deconv(m1,g);
disp(q);
disp(r);
c1=mod(q,2);
c2=conv(c1,g);
c=mod(c2,2);
disp(c);

r=input('Enter the received codeword');
e=eye(1,n);
s=deconv(e,g);
disp(s);


