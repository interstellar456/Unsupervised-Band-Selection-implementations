function neigh = set_neigh(lambdacell)
    for i = 1:150
        for j = 1:150
            if i == j
                v(j) = inf;
            else
                temp1 = lambdacell{i};
                temp2 = lambdacell{j};
                v(j) = norm(temp1 - temp2);
            end
        end
        [sortv idx] = sort(v,'ascend');
        neigh{i} = idx(1:15);
        v = 0;
    end
end

            
        
    
    