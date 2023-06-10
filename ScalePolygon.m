function [XT,YT]= ScalePolygon(X,Y,s)
%To scale a polygon (or a segment) by s=[sx,sy];
% 
N=size(X,1); 
XT=zeros(N,1); YT=zeros(N,1);
if N~=size(Y,1); 
   printstring('TranslatePolygon error:','Dimensions dismatch'); 
   return; 
end;
if N>3;  N=N-1;
elseif N<=0; error('Wrong value of N') 
end; 
XT=s(1)*X; YT=s(2)*Y;
if N>3;  XT(N+1)=XT(1); YT(N+1)=YT(1); end;
end

