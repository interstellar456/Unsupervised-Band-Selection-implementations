function [solutions gvals] = mobsrun(data)
    entropyfn = entropy_calc(data);
    [lambda inisol refpoint] = iniab(entropyfn);
    for i =1:150
        lambdacell{i} = lambda(i,:);
    end
    
    nh = set_neigh(lambdacell);
    for i = 1:15
    newsol = gennewsol(nh,inisol,data);
    
    refpoint = update_ref(refpoint,entropyfn,newsol);
    costf = initialize_cost_f(entropyfn,inisol);
    [solutions, gvals(i)] = update_sol(inisol,entropyfn,newsol,refpoint,lambdacell,costf);
    inisol = solutions;
    i
    end
end