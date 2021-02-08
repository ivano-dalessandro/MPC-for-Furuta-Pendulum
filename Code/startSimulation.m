clc
clear all
close all
%% Matlab file must be run in order to do simulations
run modelParameters;    
run nlmpcSettings;
run Furuta1_DataFile;

%% Final simulation
ampD = 0.01;                      % disturbance amplitude
disturbance = 1;                  % 0 - no disturbance, 1 - disturbance

noise = [-0.01 0.01];             % sensor noise amplitude
sensorNoise = 1;                  % 0 - no noise, 1 - noise

sim('furutaPendulum.slx',Tend)
%% Override simulation parameters for different results
% This section is useful to change NLMPC parameters and do more simulations

% Reference states vector
yref = [0 0 pi 0];                

% NLMPC parameters
nlobj.Ts = 0.05;
nlobj.PredictionHorizon = 10;
nlobj.ControlHorizon = 2;

% Specify limits of MV variable (constraints)
nlobj.MV.Min = -0.35;
nlobj.MV.Max = 0.35;

% Specify limits of OV variables (constraints)
nlobj.OV(4).Min = -14.5;
nlobj.OV(4).Max =  14.5;

% Rate weight of MV (small value for an aggressive control action)
nlobj.Weights.ManipulatedVariablesRate = 0.01;

% Weights of OV (more for the position of pendulum) 
% nlobj.Weights.OutputVariables = [0.1 0.9 7 1];      % Q1
% nlobj.Weights.OutputVariables = [2.5 0.9 7 1];      % Q2
nlobj.Weights.OutputVariables = [4 0.9 9 1];          % Q3


% Disturbance and sensor noise parameters
ampD = 0.01;                      % disturbance amplitude
disturbance = 1;                  % 0 - no disturbance, 1 - disturbance

noise = [-0.01 0.01];             % sensor noise amplitude
sensorNoise = 1;                  % 0 - no noise, 1 - noise

% Simulation time 
Tend = 20;

% Run simulation with the previous parameters of NLMPC
sim('furutaPendulum.slx',Tend)
%% Plot results

figure(1)
sgtitle('States over time','fontweight','bold')
subplot(221)
grid on,hold on;
plot(t,X(:,1));
yline(yref(1),'black--');legend('Q3','Target')
xlabel('time [s]');ylabel('\theta_{0} [rad]')
xlim([0 Tend])
subplot(222)
grid on,hold on;
plot(t,X(:,2));
yline(yref(2),'black--');legend('Q3','Target')
xlabel('time [s]');ylabel('\omega_{0} [rad/s]')
xlim([0 Tend])
subplot(223)
grid on,hold on;
plot(t,X(:,3));
yline(yref(3),'black--');legend('Q3','Target')
xlabel('time [s]');ylabel('\theta_{1} [rad]')
xlim([0 Tend])
subplot(224)
grid on,hold on;
plot(t,X(:,4));
yline(yref(4),'black--');legend('Q3','Target')
xlabel('time [s]');ylabel('\omega_{1} [rad]')
xlim([0 Tend])

figure(2)
subplot(211)
hold on,grid on
title('Manipulated Variable')
plot((1:length(U))*Ts,U);
xlabel('time [s]');ylabel('MV [Nm]')
xlim([0 Tend])
ylim([nlobj.MV.Min-0.1 nlobj.MV.Max+0.1])
h1 = yline(nlobj.MV.Min,'black--');h2 = yline(nlobj.MV.Max,'black--');
legend('Q3','Upper/Lower bound')
subplot(212)
hold on,grid on
title('Unmeasured Disturbance')
plot(t,D,'r');
xlabel('time [s]');ylabel('UD [Nm]')
xlim([0 Tend])
