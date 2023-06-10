%SCREENSAVER3;
% 
w=8; WS=[-w, w, -w, w];       % the window size  
%shadecol=[0.9,0.9,1.0];       % light blue
shadecol=[1.0,0.1,0.1];     % red
randcol=rand(1,3);
[X,Y,Name] = GetRegular(4,5.5);
hold on;
[X,Y] = RotatePolygon(X,Y,45);
PlotPolygon(X,Y,'w',0,0,WS,Name);
hold on;

d = 15;
for k=5:d:360
    shadecol2=randcol+0.01*mod([k,2*(k-1),3*(k-2)],100);
    shadecol2=shadecol2-floor(shadecol2);
    [X,Y] = RotatePolygon(X,Y,d);
    PlotPolygon(X,Y,shadecol2,0,0,WS,Name);
    pause(0.01)
    hold on;
end
pause
[X,Y,Name] = GetStar(5,3,1);
[X,Y] = RotatePolygon(X,Y,18);
PlotPolygon(X,Y,shadecol,0,0,WS,Name);
hold on;

d = 15;
for k=5:d:360
    shadecol2=randcol+0.01*mod([k,2*(k-1),3*(k-2)],100);
    shadecol2=shadecol2-floor(shadecol2);
    [X,Y] = RotatePolygon(X,Y,d);
    PlotPolygon(X,Y,shadecol2,0,0,WS,Name);
    pause(0.01)
    hold on;
end
pause

[X,Y,Name] = GetRegular(3,0.8);
PlotPolygon(X,Y,shadecol,0,0,WS,Name);
hold on;
d = 15;
for k=5:d:360
    shadecol2=randcol+0.01*mod([k,2*(k-1),3*(k-2)],100);
    shadecol2=shadecol2-floor(shadecol2);
    [X,Y] = RotatePolygon(X,Y,d);
    PlotPolygon(X,Y,shadecol2,0,0,WS,Name);
    pause(0.01)
    hold on;
end




