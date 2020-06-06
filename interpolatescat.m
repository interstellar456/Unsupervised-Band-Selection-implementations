function pl = interpolatescat(datay)

plotx = 1:30;
ploty = datay;
plotxs = plotx(~isnan(ploty));
plotys = ploty(~isnan(ploty));
yi = interp1(plotxs,plotys,plotx,'Linear');
plot(plotx,yi,'-o')