function rrmse = rrmse_calc(refsig,distsig)
rrmse = sqrt((1/(210251*200))*(sum(sum(sum(((refsig - distsig)./refsig).^2)))));
end
