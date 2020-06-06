function f = initialize_cost_f(entropyfn,inisol)
    
    for i = 1:150
        temp1 = 0;
        temp2 = 0;
       
        temp1 = length(inisol{i});
        temp2 = function2(entropyfn,inisol,i);
        
        f{i} = [temp1 temp2];
    end
end

        