%SCREENSAVER;
% 
w=8; WS=[-w, w, -w, w];       % the window size  
shadecol=[0.9,0.9,1.0];       % light blue
%shadecol2=[1.0,0.8,0.8];     % light pink
randcol=rand(1,3);
[X,Y,Name] = GetRegular(72,7.5);
grid off
PlotPolygon(X,Y,shadecol,0,0,WS,Name);
hold on
[X,Y,Name] = GetStar(72,7.5,7.1);
PlotPolygon(X,Y,'w',0,0,WS,Name);
hold on
r=170;
MarkPoint([0,0],r,'g',WS,'Screensaver');
hold on
[X,Y,Name] = GetStar(24,2.5,2.0);
u=[4.85,0];
[X,Y]=TranslatePolygon(X,Y,u); 
[hp,hf,hw]=PlotWheel(X,Y,u,shadecol);
hold on
pause
%----------------------------------------------------
d=5;
for k=5:d:360; 
    shadecol2=randcol+0.01*mod([k,2*(k-1),3*(k-2)],100);
    shadecol2=shadecol2-floor(shadecol2);
    delete(hp); delete(hf); delete(hw); 
    [X,Y]=TranslatePolygon(X,Y,-u);   
    [X,Y]=RotatePolygon(X,Y,d);
        w=Rotation(u',d); u=w';
    [X,Y]=TranslatePolygon(X,Y,u); 
    [hp,hf,hw]=PlotWheel(X,Y,u,shadecol2);
    hold on
    pause(0.2)
end;  
hold off

