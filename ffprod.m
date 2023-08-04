function fp=ffprod(w,epsi)
% the fermatean prod of the number to fermatean fuzzy number
fp=[power((1-((epsi(1).^3).^w)),1/3),epsi(2).^w];
end
