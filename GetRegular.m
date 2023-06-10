function [X,Y,Name] = GetRegular(N,r);
% Regular N-polygon (convex)
% r is for size
%-----------------------------------------------------
if N<3; error('N<3'); end;
%rb=4.0;
dt=2*pi/N; 
X=zeros(N+1,1);
Y=zeros(N+1,1);
for k=1:N;
    t=(k-1)*dt;
     X(k)=r*cos(t);
     Y(k)=r*sin(t);
end;
X(N+1)=X(1); Y(N+1)=Y(1); 
%------------------------------------------------------
Name=['Regular ',int2str(N),'-gon '];
%PlotPolygon(X,Y,shadecol,arrow,L,Name);
end

