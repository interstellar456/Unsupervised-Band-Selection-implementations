function mad = mad_calc(refsig,distsig)
mad = max(max(max(abs(refsig - distsig))));
endd

