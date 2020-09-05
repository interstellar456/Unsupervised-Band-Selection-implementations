function e = entropy_calc(data)
    j = 1;
    while(j<=200)
        h = hist(data(:,:,j),229);
        pdfdata = h/(145*145);
        pdfdata(pdfdata==0) = 1;
        temp = 0;
        for i = 1:229
            temp = temp - sum((pdfdata(i,:).*log(pdfdata(i,:))));
        end
        e(j) = temp;
        j = j + 1;
    end
