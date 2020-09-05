function a = classificationaccuracyknn(sol,errorknn)

for i = 1:150
lengthsol(i) = length(sol{i});
end

[sortlengthsol, idx] = sort(lengthsol,'Ascend');
sortedsol = sol{idx};
sortederrorknn = errorknn(idx);
as(1:30) = 0;
for i = 1:30
flag = 0;
for j = 1:150
if sortlengthsol(j) == i
as(i) = as(i) + sortederrorknn(j);
flag = flag + 1;
end
end
as(i) = as(i)/flag;
end

a= 100*(1-as);
%a = as;
