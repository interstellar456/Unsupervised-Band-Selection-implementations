function msd = msd_calc(data,sol,n)
bands = sol{n};
for k = 1:length(bands)
    for j = 1:length(bands)
        dkls(k,j) = kldiv(data,bands(k),bands(j));
    end
end
msd = (2/(length(bands)*(length(bands)-1)))*sum(sum(dkls));

end
