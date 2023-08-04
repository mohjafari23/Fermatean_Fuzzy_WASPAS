function wdm = weightDM (FDMn)
 % based on the Fermatean Number of the DM. The weight of each DM is calculated.
FDMn=FDMn.^3;
pi=1-FDMn(1,:)-FDMn(2,:);
wdm=(FDMn(1,:)+pi.*(FDMn(1,:)./sum(FDMn)))/sum(FDMn(1,:)+pi.*(FDMn(1,:)./sum(FDMn)),2);
% wdm is a row vector with the number of DMs
end
