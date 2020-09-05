function scat = scatterplot(entropyfn,sol)


for i = 1:150
    f1(i) = function1(sol{i});
    f2(i) = function2(entropyfn,sol,i);
end

scatter(f1,f2)
