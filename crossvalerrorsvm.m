function errorsvm = crossvalerrorsvm(sol,indian_pines_corrected,indian_pines_gt)
t = templateSVM('standardize',true,'KernelFunction','rbf');
for i = 1:150
    bands = sol{i};
    [X_train, X_test, y_train, y_test] = testtrain(bands,indian_pines_corrected,indian_pines_gt);
    mdl = fitcecoc(X_train,y_train,'Learners',t);
    cvmdl = crossval(mdl,'KFold',5);
    errorsvm(i) = kfoldLoss(cvmdl);
    i
end
end