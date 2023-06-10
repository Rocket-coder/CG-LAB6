function [XT,YT]= TranslatePolygon(X,Y,v)
%To translate a polygon (or a segment) by v
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
XT=X+v(1); YT=Y+v(2);
if N>3;  XT(N+1)=XT(1); YT(N+1)=YT(1); end;
end

