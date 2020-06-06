function g = subprobcalc(lambda,costf,refpoint)
    for i = 1:150
        temp1 = lambda{i};
        temp2 = costf{i};
        g(i) = max(abs(temp1.*(temp2 - refpoint)));
    end
end
