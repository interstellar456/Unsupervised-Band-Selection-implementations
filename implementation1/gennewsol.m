function newsol = gennewsol(nh,inisol,data)
    for i = 1:150
        nharray = nh{i};
        randjmn = randperm(15);
        randjmn = randjmn(1:2);
        bandsjmn = nharray(randjmn);
        xjm = inisol{bandsjmn(1)};
        xjn = inisol{bandsjmn(2)};
        temp1 = setdiff(xjn,xjm);
        temp2 = setdiff(xjm,xjn);
        l1 = length(temp1);
        l2 = length(temp2);  
      if l1 > 0 || l2 > 0
        if l1 >= l2 && l2 > 0
            h = randi(l2);
            indicesjm = randperm(length(xjm));
            indicesjm = indicesjm(1:h);
            indicesjn = randperm(length(xjn));
            indicesjn = indicesjn(1:h);
            indicesnm = randperm(length(temp1));
            indicesmn = randperm(length(temp2));
            indicesnm = indicesnm(1:h);
            indicesmn = indicesmn(1:h);
            qjm = xjm;
            qjn = xjn;
            qjm(indicesjm) = temp1(indicesnm);
            qjn(indicesjn) = temp2(indicesmn);
        elseif l2 > l1 && l1 > 0
            h = randi(l1);
            indicesjm = randperm(length(xjm));
            indicesjm = indicesjm(1:h);
            indicesjn = randperm(length(xjn));
            indicesjn = indicesjn(1:h);
            indicesnm = randperm(length(temp1));
            indicesmn = randperm(length(temp2));
            indicesnm = indicesnm(1:h);
            indicesmn = indicesmn(1:h);
            qjm = xjm;
            qjn = xjn;
            qjm(indicesjm) = temp1(indicesnm);
            qjn(indicesjn) = temp2(indicesmn);
        elseif l1 == 0 
            h = randi(min([length(xjn) length(temp2)]));
            indicesjn = randperm(length(xjn));
            indicesjn = indicesjn(1:h);
            indicesmn = randperm(length(temp2));
            indicesmn = indicesmn(1:h);
            qjm = xjm;
            qjn = xjn;
            qjn(indicesjn) = temp2(indicesmn);
        elseif l2 == 0 
            h = randi(min([length(xjm) length(temp1)]));
            indicesjm = randperm(length(xjm));
            indicesjm = indicesjm(1:h);
            indicesnm = randperm(length(temp1));
            indicesnm = indicesnm(1:h);
            qjm = xjm;
            qjn = xjn;
            qjm(indicesjm) = temp1(indicesnm);
        end
        esum1 = 0;
        esum2 = 0;
        e =0;
        for k =1:length(qjm)
            for j = (i+1):length(qjm)
                e = kldiv(data,qjm(i),qjm(j));
                esum1 = esum1 + e;
            end
        end
        e =0;
        for k = 1:length(qjn)
            for j = (i+1):length(qjn)
                e = kldiv(data,qjn(i),qjn(j));
                esum2 = esum2 + e;
            end
        end
        
        if esum1 > esum2 
            newsol{i} = qjm;
        else newsol{i} = qjn;
        end 
        l1 =0;
        l2 = 0;
      else
         newsol{i} = xjm;
      end
    end
end
