function vect = initial_z(entropyfn,inisol)
    flag = inf;
    for i = 1:150
      t = function2(entropyfn,inisol,i);
      if(flag > t)
          flag = t;
      end
    end
    vect = [1,flag];
end
