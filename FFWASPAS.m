function [Rank,RScore] = FFWASPAS(EY,Dm,Cf,Wi,landa)
FDMn=getDMmembership(EY);
wdm = weightDM (FDMn);
Adm = aggregated_decision_matrix_2 (wdm,Dm);
epsi = epsical(Adm,Cf);
ci1=ci1cal(Wi,epsi);
ci2=ci2cal(Wi,epsi);
ci=fcical(ci1,ci2,landa);
[Rank,RScore]=ffrank(ci);
end
