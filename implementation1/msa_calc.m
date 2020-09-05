function vmsa = msa_calc(data,sol,n)
bands = sol{n};

for k = 1:length(bands)
    for j = 1:length(bands)
        temp(k,j) = spectral_angle(data,bands(k),bands(j));
    end
end
stemp = sum(sum(temp));
vmsa = (2/((length(bands)*(length(bands)-1))))*stemp;
