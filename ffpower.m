function ffp = ffpower(w,epsi)
% the fermatean power of the number to fermatean fuzzy number
ffp=[epsi(1).^3,power((1-((epsi(2).^3).^w)),1/3)];
end
