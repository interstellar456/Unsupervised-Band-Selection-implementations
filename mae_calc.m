function mae = mae_calc(refsig,distsig)
mae = (1/(210251*200))*(sum(sum(sum(abs(refsig - distsig)))));
end

