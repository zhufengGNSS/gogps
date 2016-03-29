% include all subdirectories
addpath(genpath(pwd));

if (isunix)
    delim='/'; %UNIX delimiter
else
    delim='\'; %Win delimiter
end

path_LAMBDA=strcat('..',delim,'data',delim,'out',delim,'lambda_position');
load (path_LAMBDA);

for i=1:length(X_KAL)
  goGPS_XYZ = [X_KAL(i); Y_KAL(i); Z_KAL(i)];
  true_XYZ = [4421892.6358; 718469.8889; 4525016.2852];
  diff_ENU =  global2localPos(goGPS_XYZ, true_XYZ);
  diff_ENU_LAMBDA(:,i)=diff_ENU;
end


path_EKF=strcat('..',delim,'data',delim,'out',delim,'float_position');
load (path_EKF);

for i=1:length(X_KAL)
  goGPS_XYZ = [X_KAL(i); Y_KAL(i); Z_KAL(i)];
  true_XYZ = [4421892.6358; 718469.8889; 4525016.2852];      
  diff_ENU =  global2localPos(goGPS_XYZ, true_XYZ);
  diff_ENU_EKF(:,i)=diff_ENU;
end



scrsz = get(0, 'ScreenSize');
figure('Position', [1 1 scrsz(3) scrsz(4)]);subplot(311);plot(diff_ENU_EKF(1,:)*100,'bx');hold on;plot(diff_ENU_LAMBDA(1,:)*100,'ro');hold off;axis([0 3000 0 2]);ylabel('dE [cm]');grid on;legend('Float solution (estimated by goGPS EKF)','Integer solution (LAMBDA)');
       subplot(312);plot(diff_ENU_EKF(2,:)*100,'bx');hold on;plot(diff_ENU_LAMBDA(2,:)*100,'ro');hold off;axis([0 3000 2 4]);ylabel('dN [cm]');grid on;%legend('Float solution (estimated by goGPS EKF)','Integer solution (LAMBDA)');
       subplot(313);plot(diff_ENU_EKF(3,:)*100,'bx');hold on;plot(diff_ENU_LAMBDA(3,:)*100,'ro');hold off;axis([0 3000 4 10]);ylabel('dU [cm]');xlabel('Epoch [15 sec]');grid on;%legend('Float solution (estimated by goGPS EKF)','Integer solution (LAMBDA)');


