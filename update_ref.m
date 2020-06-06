function updatedref = update_ref(refpoint,entropyfn,newsol)
    for i = 1:150
        f2 = function2(entropyfn,newsol,i);
        if refpoint(2) > f2
            refpoint(2) = f2;
        end
    end
    updatedref = refpoint;
end
