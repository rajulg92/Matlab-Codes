clc;
clear all;
close all;
n=input('enter the no of bits in the codeword');
k=input('enter the no of bits in the message');
a=n-k;
p=input('enter the parity matrix');
disp(p);
c=eye(k);
g=[c p];
disp('The generator matrix is');
disp(g);
m=input('enter the messge');
c=m*g;
z=rem(c,2);
disp('codeword                                           hamming distance');
disp(z);

for i=1:2^k
    cnt=0;
    for j=1:n
        if(c(i,j)==1)
            cnt=cnt+1;
        end  
    end
    z(i,n+1)=cnt;
    disp(z(i,n+1));
    a(i,1)=cnt;    
end
b=sort(a)
dmin=b(2,1);
disp('The minimum distance is dmin=');
disp(dmin);
disp('The error correcting probability of codeword is');
tc=(dmin-1)/2;
disp(tc);
disp('the error detecting capability is');
td=dmin-1;
disp(td);
disp('decoding');
disp('Parity check matrix');
h=[p' eye(n-k)];
disp(h);
disp('Transpose of parity check matrix');
ht=h';
disp(ht);
disp('error vector');
e=eye(n);
disp(e);
disp('syndrome');
s=rem(e*ht,2);
disp(s);
r=input('enter received codeword');
s=rem(r*ht,2);
disp(s);
if(s==0)
    disp('no error');
else
    for i=1:1:size(ht)
        if(ht(i,1:3)==s(1,1:3))
            r(i)=1-r(i);
            break;
        end
    end
    disp('the error is in bit');
    disp(i);
    disp('the corected codeword is')
    disp(r);
end
        




