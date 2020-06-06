function errorknn = crossvalerrorknn(sol,indian_pines_corrected,indian_pines_gt)
for i = 1:150
    bands = sol{i};
    [X_train, X_test, y_train, y_test] = testtrain(bands,indian_pines_corrected,indian_pines_gt);
    mdl = fitcknn(X_train,y_train,'NumNeighbors',3,'standardize',1);
    cvmdl = crossval(mdl,'KFold',5);
    errorknn(i) = kfoldLoss(cvmdl);
end
end
