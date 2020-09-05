# Unsupervised-Band-Selection-implementations
implementation of papers attempting unsupervised band selection.
####################################################################
Implementation 1 :
paper : doi - 10.1109/TGRS.2015.2461653
run entropy_calc to see entropy vs band plot
run mobs_run to get solutions
crossvalerrorknn - train using knn, crossvalerrorsvm - train using svm
currently the code is bit hardcoded for indian pines data set with water absorbption affected bands removed (included in the repo), dim - 145x145x200. Thus, some modifications are required.
