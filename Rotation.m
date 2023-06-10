function RP= Rotation(P,fi)
%To rotate a point P around the origin by fi 
%   
R=[cosd(fi), -sind(fi);...
   sind(fi),  cosd(fi)];
RP=R*P;
end

