function e = kldiv(data,band1,band2)
    h1 = hist(data(:,:,band1),200);
    pdf1 = h1/(145*145);
    pdf1(pdf1==0) = 1;
    
    h2 = hist(data(:,:,band2),200);
    pdf2 = h2/(145*145);
    pdf2(pdf2 == 0) = 1;
    
    sum1 = 0;
    sum2 = 0;
    
    for i = 1:200
        sum1 = sum1 + sum(pdf1(i,:).*log((pdf1(i,:)./pdf2(i,:))));
        sum2 = sum2 + sum(pdf2(i,:).*log((pdf2(i,:)./pdf1(i,:))));
    end
    e = sum1 + sum2;
