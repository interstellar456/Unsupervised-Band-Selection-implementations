function val = function2(entropyfn,sol,n)
    idx = sol{n};
    temp = 0;
    for i = 1:length(idx)
        temp = temp + (entropyfn(idx));
    end
   temp = sum(temp);
   val = 229*2/(temp);
end
