function MarkPoint(P,r,colour,L,Name)
% r - size 
set(gcf,'Color','w') 
subplot(1,1,1)
plot(P(1),P(2),'-bo','LineWidth',1,'MarkerEdgeColor','k',...
              'MarkerFaceColor',colour,'MarkerSize',r);     
%---------------------------------------------------------
set(gca,'XColor','b','YColor','b','fontsize',14,'fontweight','b');
ts1='\fontsize{18}\bf\color{red}';
title([ts1,Name]);  
ts3='\fontsize{16}\bf\color{black}';
xlabel([ts3,'x']); ylabel([ts3,'y']); 
axis(L);
axis square; 
grid on
end
%
