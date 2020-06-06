function [lambda inisol refpoint] = iniab(entropyfn)
    r = rand(150,1);
    lambda = [r 1-r];
    [inisol bandeachprob] = initialize_initial_solution();
    refpoint = initial_z(entropyfn,inisol);
end
