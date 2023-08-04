function fscorem = fscore(Adm) 
% fscorem is the fermatean fuzzy score matrix which is number of criteria
% has rows and two columns first for membership grade and the second for the none membership grade
fscorem=0.5.*(((Adm(:,1).^3) + (Adm(:,2).^3) - log((1+((Adm(:,1).^3)))))+1);
end
