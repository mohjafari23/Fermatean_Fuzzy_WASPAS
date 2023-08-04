function ci2=ci2cal(Wi,epsi)
% Wi is the wegith matrix for the criteria the first colums is the creteria
% numbe and the second one is the weight
    [tWi,ii] = sort(Wi(:,1),1);
    temp = Wi(:,2);
    SWi = [tWi,temp(ii)];
    [~,nc]=size(SWi);
    [na,~]=size(epsi);
    ci2=zeros([na,2]);
    cc=zeros([nc,2]);
    for i=1:na
        for j=1:nc
           cc(j,:) = ffpower(SWi(j),epsi{i,j}); 
           if j==2
               ci2(i,:)=ffsum(cc(j,:),cc(j-1,:));
           elseif j>2
               ci2(i,:)=ffsum(ci2(i,:),cc(j,:));
           end
        end
    end
end
