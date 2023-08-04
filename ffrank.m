function [Rank,RScore]=ffrank(ci)
    fscorem = fscore(ci);
    [RScore,Rank]=sort(fscorem);
end
