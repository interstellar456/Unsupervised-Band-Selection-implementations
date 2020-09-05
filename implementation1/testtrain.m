function [X_train, X_test, y_train ,y_test] = testtrain(bandsarray,indian_pines_corrected,indian_pines_gt)
gt = indian_pines_gt;
data = indian_pines_corrected(:,:,bandsarray);

data_vec = reshape(data, 145*145,length(bandsarray));

%Provide location of the desired classes.  
gt_loc = find(and(gt>0,gt<=16));
gt_class = gt(gt_loc);
data_value = data_vec(gt_loc,:);

% explanatories plus Respond variable. 
%[200(variable/channel)+1(labels)= 201])
dat = [data_value, gt_class];

% create random Test and Training set.
[m,n] = size(dat);
P = 0.50 ;
idx = randperm(m);
train = dat(idx(1:round(P*m)),:); 
test = dat(idx(round(P*m)+1:end),:);
X_train = train(:,1:length(bandsarray)); y_train = train(:,length(bandsarray)+1);
X_test = test(:,1:length(bandsarray)); y_test = test(:,length(bandsarray)+1);
