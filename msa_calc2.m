function msa = msa_calc2(refsig,distsig)
s(1:145,1:145) = 0;
for k = 1:200
    for i = 1:145
        for j = 1:145
            s(i,j) = s(i,j) +  refsig(i,j,k)*distsig(i,j,k);
        end
    end
end

p1(1:145,1:145) = 0;
p2(1:145,1:145) = 0;

for k = 1:200
    for i = 1:145
        for j = 1:145
            p1(i,j) = p1(i,j) + (refsig(i,j,k)*refsig(i,j,k));
            p2(i,j) = p2(i,j) + (distsig(i,j,k)*distsig(i,j,k));
        end
    end
end

asset = s./sqrt(p1.*p2);
msa = max(max(acos(asset)));

