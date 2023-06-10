function [hp,hf,hw]=PlotWheel(Px,Py,u,shadecol)
% 
hw=plot(Px,Py,'-bo','LineWidth',3,'MarkerEdgeColor','k',...
              'MarkerFaceColor','k','MarkerSize',1); 
hf=fill(Px,Py,shadecol);
hp=plot(u(1),u(2),'-bo','LineWidth',1,'MarkerEdgeColor','k',...
              'MarkerFaceColor','w','MarkerSize',14); 
end

