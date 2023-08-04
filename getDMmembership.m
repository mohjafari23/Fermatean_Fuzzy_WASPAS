function FDMn=getDMmembership(EY)
% EY is the year experience of the DMs in 10 years.
%EY be a Vector.
  if ~isrow(EY)
      EY=EY';
  end
% The membership is calculated by the sigmoidal membership function
    MD = sigmf(EY,[3,1.7]); %is the membership grade
    NMD = sigmf(EY,[-3,1.3]); %is none membership grade
    FDMn=[MD;NMD];
 % the FDMn is a matrix with 2 rows (first for membership grade and the second for the none membership grade) and the number of DM columns.
end
