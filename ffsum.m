function ffs=ffsum(f1,f2)
% the fermatean sum of two fermatean fuzzy number
ffs = [((f1(1).^3)+(f2(1).^3)-((f1(1).^3)*(f2(1).^3))).^1/3,f1(2)*f2(2)];
end
