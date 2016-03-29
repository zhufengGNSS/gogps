% include all subdirectories
addpath(genpath(pwd));

if (isunix)
    delim='/'; %UNIX delimiter
else
    delim='\'; %Win delimiter
end

%GPS
path_GPS=strcat('..',delim,'data',delim,'out',delim,'GPS_position');
load (path_GPS);
goGPS_XYZ = [X_KAL'; Y_KAL'; Z_KAL'];
true_XYZ = [-3607665.3000; 4147867.9975; 3223717.0972];
goGPS_ENU = global2localPos(goGPS_XYZ, repmat(true_XYZ,1,size(goGPS_XYZ,2)));
mean_ENU = [mean(goGPS_ENU(1,:)); mean(goGPS_ENU(2,:)); mean(goGPS_ENU(3,:))];
std_ENU = [std(goGPS_ENU(1,:)); std(goGPS_ENU(2,:)); std(goGPS_ENU(3,:))];
E=[mean_ENU(1) std_ENU(1)];
N=[mean_ENU(2) std_ENU(2)];
U=[mean_ENU(3) std_ENU(3)];


%GLONASS
path_GPS=strcat('..',delim,'data',delim,'out',delim,'GLO_position');
load (path_GPS);
goGPS_XYZ = [X_KAL'; Y_KAL'; Z_KAL'];
true_XYZ = [-3607665.3000; 4147867.9975; 3223717.0972];
goGPS_ENU = global2localPos(goGPS_XYZ, repmat(true_XYZ,1,size(goGPS_XYZ,2)));
mean_ENU = [mean(goGPS_ENU(1,:)); mean(goGPS_ENU(2,:)); mean(goGPS_ENU(3,:))];
std_ENU = [std(goGPS_ENU(1,:)); std(goGPS_ENU(2,:)); std(goGPS_ENU(3,:))];
E=[E; mean_ENU(1) std_ENU(1)];
N=[N; mean_ENU(2) std_ENU(2)];
U=[U; mean_ENU(3) std_ENU(3)];


%BeiDou
path_GPS=strcat('..',delim,'data',delim,'out',delim,'BDS_position');
load (path_GPS);
goGPS_XYZ = [X_KAL'; Y_KAL'; Z_KAL'];
true_XYZ = [-3607665.3000; 4147867.9975; 3223717.0972];
goGPS_ENU = global2localPos(goGPS_XYZ, repmat(true_XYZ,1,size(goGPS_XYZ,2)));
mean_ENU = [mean(goGPS_ENU(1,:)); mean(goGPS_ENU(2,:)); mean(goGPS_ENU(3,:))];
std_ENU = [std(goGPS_ENU(1,:)); std(goGPS_ENU(2,:)); std(goGPS_ENU(3,:))];
E=[E; mean_ENU(1) std_ENU(1)];
N=[N; mean_ENU(2) std_ENU(2)];
U=[U; mean_ENU(3) std_ENU(3)];


%GPS + GLONASS
path_GPS=strcat('..',delim,'data',delim,'out',delim,'GPSGLO_position');
load (path_GPS);
goGPS_XYZ = [X_KAL'; Y_KAL'; Z_KAL'];
true_XYZ = [-3607665.3000; 4147867.9975; 3223717.0972];
goGPS_ENU = global2localPos(goGPS_XYZ, repmat(true_XYZ,1,size(goGPS_XYZ,2)));
mean_ENU = [mean(goGPS_ENU(1,:)); mean(goGPS_ENU(2,:)); mean(goGPS_ENU(3,:))];
std_ENU = [std(goGPS_ENU(1,:)); std(goGPS_ENU(2,:)); std(goGPS_ENU(3,:))];
E=[E; mean_ENU(1) std_ENU(1)];
N=[N; mean_ENU(2) std_ENU(2)];
U=[U; mean_ENU(3) std_ENU(3)];

%GPS + BeiDou
path_GPS=strcat('..',delim,'data',delim,'out',delim,'GPSBDS_position');
load (path_GPS);
goGPS_XYZ = [X_KAL'; Y_KAL'; Z_KAL'];
true_XYZ = [-3607665.3000; 4147867.9975; 3223717.0972];
goGPS_ENU = global2localPos(goGPS_XYZ, repmat(true_XYZ,1,size(goGPS_XYZ,2)));
mean_ENU = [mean(goGPS_ENU(1,:)); mean(goGPS_ENU(2,:)); mean(goGPS_ENU(3,:))];
std_ENU = [std(goGPS_ENU(1,:)); std(goGPS_ENU(2,:)); std(goGPS_ENU(3,:))];
E=[E; mean_ENU(1) std_ENU(1)];
N=[N; mean_ENU(2) std_ENU(2)];
U=[U; mean_ENU(3) std_ENU(3)];

%GPS + Galileo
path_GPS=strcat('..',delim,'data',delim,'out',delim,'GPSGAL_position');
load (path_GPS);
goGPS_XYZ = [X_KAL'; Y_KAL'; Z_KAL'];
true_XYZ = [-3607665.3000; 4147867.9975; 3223717.0972];
goGPS_ENU = global2localPos(goGPS_XYZ, repmat(true_XYZ,1,size(goGPS_XYZ,2)));
mean_ENU = [mean(goGPS_ENU(1,:)); mean(goGPS_ENU(2,:)); mean(goGPS_ENU(3,:))];
std_ENU = [std(goGPS_ENU(1,:)); std(goGPS_ENU(2,:)); std(goGPS_ENU(3,:))];
E=[E; mean_ENU(1) std_ENU(1)];
N=[N; mean_ENU(2) std_ENU(2)];
U=[U; mean_ENU(3) std_ENU(3)];

%GPS + QZSS
path_GPS=strcat('..',delim,'data',delim,'out',delim,'GPSQZS_position');
load (path_GPS);
goGPS_XYZ = [X_KAL'; Y_KAL'; Z_KAL'];
true_XYZ = [-3607665.3000; 4147867.9975; 3223717.0972];
goGPS_ENU = global2localPos(goGPS_XYZ, repmat(true_XYZ,1,size(goGPS_XYZ,2)));
mean_ENU = [mean(goGPS_ENU(1,:)); mean(goGPS_ENU(2,:)); mean(goGPS_ENU(3,:))];
std_ENU = [std(goGPS_ENU(1,:)); std(goGPS_ENU(2,:)); std(goGPS_ENU(3,:))];
E=[E; mean_ENU(1) std_ENU(1)];
N=[N; mean_ENU(2) std_ENU(2)];
U=[U; mean_ENU(3) std_ENU(3)];

%GLONASS + BeiDou
path_GPS=strcat('..',delim,'data',delim,'out',delim,'GLOBDS_position');
load (path_GPS);
goGPS_XYZ = [X_KAL'; Y_KAL'; Z_KAL'];
true_XYZ = [-3607665.3000; 4147867.9975; 3223717.0972];
goGPS_ENU = global2localPos(goGPS_XYZ, repmat(true_XYZ,1,size(goGPS_XYZ,2)));
mean_ENU = [mean(goGPS_ENU(1,:)); mean(goGPS_ENU(2,:)); mean(goGPS_ENU(3,:))];
std_ENU = [std(goGPS_ENU(1,:)); std(goGPS_ENU(2,:)); std(goGPS_ENU(3,:))];
E=[E; mean_ENU(1) std_ENU(1)];
N=[N; mean_ENU(2) std_ENU(2)];
U=[U; mean_ENU(3) std_ENU(3)];


xtick = 0:1/(size(E,1)-1):1;
scrsz = get(0, 'ScreenSize');
figure('Position', [1 1 scrsz(3) scrsz(4)]);subplot(311);bar(xtick,E,1);ylabel('EAST [m]');
legend({'Mean'; 'St.dev.'}, 'Position', [0.85 0.47 0.137 0.11])
grid on
xlim([-0.1 1.1]);
ylim([-2 4]);
ylabel('EAST [m]','FontSize',14);
set(gca,'FontSize',14);
set(gca,'Xtick',xtick);
set(gca,'Xticklabel',{'GPS'; 'GLO'; 'BDS'; 'GPS+GLO'; 'GPS+BDS'; 'GPS+GAL'; 'GPS+QZS'; 'GLO+BDS'});
pos = get(gca,'Position');
pos(1) = pos(1) - 0.07;
set(gca,'Position',pos)
x_bar = xtick(2)/4;
y_bar = E + sign(E).*0.4;
for k = 1 : size(E,1)
    text(xtick(k)-x_bar        , y_bar(k,1), sprintf('%.2f',E(k,1)), 'FontSize', 9 , 'Color', 'blue')
    text(xtick(k)+x_bar/2-0.012, y_bar(k,2), sprintf('%.2f',E(k,2)), 'FontSize', 9 , 'Color', 'red')
end

xtick = 0:1/(size(N,1)-1):1;
subplot(312);bar(xtick,N,1);ylabel('NORTH [m]');
grid on
xlim([-0.1 1.1]);
ylim([-2 4]);
ylabel('NORTH [m]','FontSize',14);
set(gca,'FontSize',14);
set(gca,'Xtick',xtick);
set(gca,'Xticklabel',{'GPS'; 'GLO'; 'BDS'; 'GPS+GLO'; 'GPS+BDS'; 'GPS+GAL'; 'GPS+QZS'; 'GLO+BDS'});
pos = get(gca,'Position');
pos(1) = pos(1) - 0.07;
set(gca,'Position',pos)
x_bar = xtick(2)/4;
y_bar = N + sign(N).*0.4;
for k = 1 : size(N,1)
    text(xtick(k)-x_bar        , y_bar(k,1), sprintf('%.2f',N(k,1)), 'FontSize', 9 , 'Color', 'blue')
    text(xtick(k)+x_bar/2-0.012, y_bar(k,2), sprintf('%.2f',N(k,2)), 'FontSize', 9 , 'Color', 'red')
end

xtick = 0:1/(size(U,1)-1):1;
subplot(313);bar(xtick,U,1);ylabel('UP [m]');
grid on
xlim([-0.1 1.1]);
ylabel('UP [m]','FontSize',14);
set(gca,'FontSize',14);
set(gca,'Xtick',xtick);
set(gca,'Xticklabel',{'GPS'; 'GLO'; 'BDS'; 'GPS+GLO'; 'GPS+BDS'; 'GPS+GAL'; 'GPS+QZS'; 'GLO+BDS'});
pos = get(gca,'Position');
pos(1) = pos(1) - 0.07;
set(gca,'Position',pos)
x_bar = xtick(2)/4;
y_bar = U + sign(U);
for k = 1 : size(U,1)
    text(xtick(k)-x_bar        , y_bar(k,1), sprintf('%.2f',U(k,1)), 'FontSize', 9 , 'Color', 'blue')
    text(xtick(k)+x_bar/2-0.012, y_bar(k,2), sprintf('%.2f',U(k,2)), 'FontSize', 9 , 'Color', 'red')
end


