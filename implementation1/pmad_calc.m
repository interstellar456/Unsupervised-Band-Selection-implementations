function pmad = pmad_calc(refsig,distsig)
pmad = max(max(max(abs(((refsig-distsig)/(refsig))))))*100;
end

