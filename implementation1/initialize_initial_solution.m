function [ninisol,bandeachprob] = initialize_initial_solution()
    m = 1;
    for n = 1:150
        ninisol{n} = randperm(200,m);
        bandeachprob(n) = m;
        if(mod(n,5) == 0)
            m = m + 1;
        end
        
    end
end
