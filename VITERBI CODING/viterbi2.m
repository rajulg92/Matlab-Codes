clear all;
close all;
clc;
k=input('Enter the no of input message');
n=input('Enter the no of bits in codeword');
m=input('Enter the no of shift register');
M=input('Enter the message');
for i=1:n
    g(i)=input('Generator matrix in decimal no');
end
disp(g);
trellis=poly2trellis(m,g);
disp(trellis);
code=convenc(M,trellis);
disp('Generated codeword is');
disp(code);
r=input('Enter the received codeword');
tblen=3;
opmod='trunc';
detype='hard';
out=vitdec(r,trellis,tblen,opmod,detype);
disp('Decoded Message is=');
disp(out);


