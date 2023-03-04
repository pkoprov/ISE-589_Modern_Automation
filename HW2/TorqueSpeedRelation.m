% TorqueSpeedRelation.m
% Fred Livingston (fjliving@ncsu.edu) 2-19-2023

clc;
clear all;
close all;

Ke = 0.2; % Torque Constant Nm/A
Kb = 0.5; % Back-EMF Constant Vs/rad
R = 5;    % Terminal Resistance

counter1 = 1;
for spd = 0:1:50
    V = 3;
        counter2 = 1;
    T(counter1,counter2) = Ke / R * (V - Kb * spd);
    V = 6;
        counter2 = 2;
    T(counter1,counter2) = Ke / R * (V - Kb * spd);
    V = 9;
        counter2 = 3;
    T(counter1,counter2) = Ke / R * (V - Kb * spd);
    counter1 = counter1 + 1;
end
spd = 0:1:50;
figure;
hold on;
plot(spd,T(:,1),'k','linewidth',1.5);
plot(spd,T(:,2),'b','linewidth',1.5);
plot(spd,T(:,3),'r','linewidth',1.5);
xlabel('rotation speed \omega');
ylabel('Torque (T)');
% xlim([0 22]);
% ylim([0 0.4]);


counter1 = 1;
counter2 = 1;
for V = 3:0.05:9
% for V = 3
    for spd = 0.1:0.1:6
        T(counter2,counter1) = Ke / R * (V - Kb * spd);
        counter2 = counter2 + 1;
    end
    counter1 = counter1 + 1;
    counter2 = 1;
end

V = 3:0.05:9;
% V = 3;
spd = 0.1:0.1:6;

figure;
mesh(V,spd,T);
xlabel('V_a (V)');
ylabel('\omega (rad/sed)');
zlabel('T (Nm)');


