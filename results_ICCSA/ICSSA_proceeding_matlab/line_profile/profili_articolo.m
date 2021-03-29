

gt=importdata('tomo_original.txt');
b= importdata('starting_tomo_30.txt');

ADMM  =importdata('ADMM_DIPTV_tomo_30.txt');
DIP   = importdata('DIP_tomo_30.txt');
%DIPTV = importdata('DIPTV_tomo_30.txt');

r1=90:95;
r2=335;

figure; 
%subplot(2,2,1); plot(gt(r1,30:480),'b');hold on;plot(b(r1,30:480),'.r'); axis([0 450 20 130]); title('corrupted');
subplot(2,2,1); plot((mean(gt(r1,30:480)))','b');hold on;plot((mean(DIP(r1,30:480)))-1.5','.r'); axis([0 450 30 60]);title('DIP');
%subplot(2,4,3); plot(gt(r1,30:480),'b');hold on;plot(DIPTV(r1,30:480),'r'); axis([0 450 0 150]);title('DIPTV');
subplot(2,2,2); plot(mean(gt(r1,30:480)),'b');hold on;plot(mean(ADMM(r1,30:480))-0.5,'.r'); axis([0 450 30 60]);title('ADMM DIP-TV');
%subplot(2,2,4); plot(gt(r2,30:480),'b');hold on;plot(b(r2,30:480),'.r'); axis([0 450 20 200]);title('corrupted');
subplot(2,2,3); plot(gt(r2,30:480),'b');hold on;plot(DIP(r2,30:480),'.r'); axis([0 450 30 160]);title('DIP');
%subplot(2,4,7); plot(gt(r2,30:480),'b');hold on;plot(DIPTV(r2,30:480),'r'); axis([0 450 0 200]);title('DIPTV');
subplot(2,2,4); plot(gt(r2,30:480),'b');hold on;plot(ADMM(r2,30:480),'.r'); axis([0 450 30 160]);title('ADMM DIP-TV');
