function epsi = epsical(Adm,Cf)
%Cf is a logical row vector, the Cf(i) is true if the criteria i is a
%posetive criteria else for other wise
    [na,nc] = size(Adm);
    epsi = cell(size(Adm));
    for i = 1:nc
        for j = 1:na
            if ~Cf(i)
                epsi{j,i} = Adm{j,i}(end:-1:1);
              else
                epsi{j,i} = Adm{j,i};
            end
        end
    end
    % epsi is a cell size Adm
end
