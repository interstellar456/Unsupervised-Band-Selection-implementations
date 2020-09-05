function f = f_calc(num,refsig,distsig)
    if num == 1
        for i = 1:145
            for j = 1:145
                x1 = refsig(i,j,:);
                x2 = distsig(i,j,:);
                
                norm2 = norm(reshape(x1-x2,200,1,1),2);
                
                stdx1 = std(x1);
                meanx1 = mean(x1);
                
                fxy(i,j)  = 1 - (norm2^2)/(stdx1^2 + meanx1^2);
            end
        end
        f = min(min(fxy));
    else
        for k = 1:200
            t1 = refsig(:,:,k);
            t2 = refsig(:,:,k);
            f1 = t1(:);
            f2 = t2(:);
            
            norm2 = norm(f1 - f2,2);
            
            stdx1 = std(f1);
            meanx1 = mean(f1);
            
            fl(k) = 1 - (norm2.^2)/(stdx1^2 + meanx1^2);
        end
        f = min(fl);
    end
    
