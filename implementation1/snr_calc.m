function [snr,psnr] = snr_calc(refsig,distsig)
t = 0;
t = std(indian_pines_corrected(:));
mse = mse_calc(refsig,distsig);
t = t^2;
snr = 10*(log(t/mse)/log(10));
peak = max(max(max(refsig)));
psnr = 10*(log((peak^2)/mse)/log(10));
end
