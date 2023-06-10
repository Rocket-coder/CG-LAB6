 function [XT,YT]= RotatePolygon(X,Y,fi)
%To rotate a polygon (or a segment) around the origin by fi radians
% 
N=size(X,1); 
XT=zeros(N,1); YT=zeros(N,1);
if N~=size(Y,1); 
   printstring('RotatePolygon error:','Dimensions dismatch'); 
   return; 
end;
if N>3;  N=N-1;
elseif N<=0; error('Wrong value of N') 
end;    
for k=1:N;
    P=[X(k); Y(k)];
    PT=Rotation(P,fi);
    XT(k)=PT(1); YT(k)=PT(2);
end;
if N>3;  XT(N+1)=XT(1); YT(N+1)=YT(1); end;
end

