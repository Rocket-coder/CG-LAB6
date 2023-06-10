%TESTRANSFORMATIONS;
% 
w=8; WS=[-w, w, -w, w];       % the window size  
%-----------------------------------------------------
N=5;
shadecol=[0.9,0.9,1.0];       % light blue
arrow=0; points=1;
[X,Y,Name] = GetStar(N,3,1.1266);
PlotPolygon(X,Y,shadecol,arrow,points,WS,Name);
hold on
MarkPoint([0,0],14,'g',WS,Name);
hold off
pause
%----------------------------------------------------
v=[3,3]; 
W=[Name,' shifted to ',vec2str(v)];

[X,Y]=TranslatePolygon(X,Y,v);
PlotPolygon(X,Y,shadecol,arrow,points,WS,W);
hold on
MarkPoint([0,0],14,'g',WS,W);
hold off
pause
%----------------------------------------------------
d=18;
W=[W,' and rotated ',int2str(d),'^o'];
[X,Y]=TranslatePolygon(X,Y,-v);   
[X,Y]=RotatePolygon(X,Y,d);
[X,Y]=TranslatePolygon(X,Y,v); 
PlotPolygon(X,Y,shadecol,arrow,points,WS,W);
hold on
MarkPoint([0,0],14,'g',WS,W)
hold off
pause
%%----------------------------------------------------
N=32;
[X,Y,Name] = GetRegular(N,3);
PlotPolygon(X,Y,shadecol,0,0,WS,Name);
hold off
pause
s=[0.25,1];
[X,Y]= ScalePolygon(X,Y,s);
v=[3,3]; 
[X,Y]=TranslatePolygon(X,Y,v);
W=[Name,' scaled by ',vector2str(s,5,2)];
W=[W,' and shifted to ',vector2str(v,5,2)];
PlotPolygon(X,Y,shadecol,0,0,WS,W);
pause
hold on
d=10;
for k=0:d:360;
   W1=[W,', then rotated ',int2str(k),'^o'];
   [X,Y]=TranslatePolygon(X,Y,-v);   
   [X,Y]=RotatePolygon(X,Y,d);
   [X,Y]=TranslatePolygon(X,Y,v); 
   PlotPolygon(X,Y,shadecol,0,0,WS,W1);
   hold on
   MarkPoint(v,12,'r',WS,W1)
   hold on
   MarkPoint([0,0],14,'g',WS,W1)
   pause(0.01)
   hold off
end;  


