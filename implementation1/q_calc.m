function q = q_calc(num,refsig,distsig)
if num == 1
   
   for i = 1:145
       for j = 1:145
           stdx1x2(i,j) = std(refsig(i,j,:).*distsig(i,j,:));
           stdx1(i,j) = std(refsig(i,j,:));
           stdx2(i,j) = std(distsig(i,j,:));
           meanx1(i,j) = mean(refsig(i,j,:));
           meanx2(i,j) = mean(distsig(i,j,:));
       end
   end
   for i = 1:145
       for j = 1:145
           ql(i,j) = (4*stdx1x2(i,j)*meanx1(i,j)*meanx2(i,j))/((stdx1(i,j)^2 + stdx2(i,j)^2)*(meanx1(i,j)^2 + meanx2(i,j)^2));
       end
   end
   
  

    q = min(min(ql));
elseif num == 2
    
    for k = 1:200
        t1 = refsig(:,:,k);
        t2 = distsig(:,:,k);
        t3 = t1*t2;
        f1 = t1(:);
        f2 = t2(:);
        f3 = t3(:);
        
        stdx1x2(k) = std(f3);
        stdx1(k) = std(f1);
        stdx2(k) = std(f2);
        meanx1(k) = mean(f1);
        meanx2(k) = mean(f2);
        qxy(k) = (4*stdx1x2(k)*meanx1(k)*meanx2(k))/((stdx1(k).^2 + stdx2(k).^2)*(meanx1(k).^2 + meanx2(k).^2));
    end
    q = min(qxy);
   
else
    
  for i = 1:145
       for j = 1:145
           stdx1x2(i,j) = std(refsig(i,j,:).*distsig(i,j,:));
           stdx1(i,j) = std(refsig(i,j,:));
           stdx2(i,j) = std(distsig(i,j,:));
           meanx1(i,j) = mean(refsig(i,j,:));
           meanx2(i,j) = mean(distsig(i,j,:));
       end
   end
   for i = 1:145
       for j = 1:145
           ql(i,j) = (4*stdx1x2(i,j)*meanx1(i,j)*meanx2(i,j))/((stdx1(i,j)^2 + stdx2(i,j)^2)*(meanx1(i,j)^2 + meanx2(i,j)^2));
       end
   end
   
   
   q1 = min(min(ql));
   
   
   for k = 1:200
        t1 = refsig(:,:,k);
        t2 = distsig(:,:,k);
        t3 = t1*t2;
        f1 = t1(:);
        f2 = t2(:);
        f3 = t3(:);
        
        stdx1x2(k) = std(f3);
        stdx1(k) = std(f1);
        stdx2(k) = std(f2);
        meanx1(k) = mean(f1);
        meanx2(k) = mean(f2);
        qxy(k) = (4*stdx1x2(k)*meanx1(k)*meanx2(k))/((stdx1(k).^2 + stdx2(k).^2)*(meanx1(k).^2 + meanx2(k).^2));
    end
    q2 = min(qxy);
    
    q = q1*q2;
   
end
end

             
