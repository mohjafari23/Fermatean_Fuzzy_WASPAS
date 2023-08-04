function Adm = aggregated_decision_matrix_2 (wdm,Dm)
%Dm is Cell size [1,number of DMs] each cell include the Decision matrix
%for that DM the number of alternative is on row and the number of criteria
%is on the columns the first is the membership grade and the second one is
%the none membersip grade
    [~,ndm] = size(Dm);
    DMm = cell(size(Dm));
    NDMm = cell(size(Dm));

    for i = 1:ndm
        DMm{i} = Dm{i}(:,1:2:end);
        NDMm{i} = Dm{i}(:,2:2:end);
    end

    MDMm = cell(size(DMm{1}));
    NMDMm = cell(size(NDMm{1}));
    [na,nc] = size(DMm{1});

    for i = 1:na
        for j = 1:nc
            for k = 1:ndm
                MDMm{i,j} = [MDMm{i,j};DMm{k}(i,j)];
                NMDMm{i,j} = [NMDMm{i,j};NDMm{k}(i,j)];
            end
        end
    end

    Adm = cell(na,nc);

    for i = 1:na
        for j = 1:nc
            Adm{i,j}(:,1) = prod(MDMm{i,j}'.^ wdm);
            Adm{i,j}(:,2) = power((1-prod((1-(MDMm{i,j}'.^3)).^wdm)),1/3);
        end
    end
    % Adm is a cell size number of criteria and number of alternative
    % in each cell there is a mtrrixe size 1,2 for membership and
    % nonemembership grade
end
