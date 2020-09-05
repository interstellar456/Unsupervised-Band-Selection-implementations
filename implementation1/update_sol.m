function [solup, gval] = update_sol(inisol,entropyfn,newsol,refpoint,lambdacell,costf)
    fnew = initialize_cost_f(entropyfn,newsol);
    gold = subprobcalc(lambdacell,costf,refpoint);
    gnew = subprobcalc(lambdacell,fnew,refpoint);
    
    for i = 1:150
        if gold(i) > gnew(i)
           gx(i) = gnew(i);
            inisol{i} = 0;
            inisol{i} = newsol{i};
        else gx(i) = gold(i);
        end
    end
    solup = inisol;
    gval = sum(gx);
end
