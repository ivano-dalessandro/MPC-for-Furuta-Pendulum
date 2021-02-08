%% Physical parameters of Furuta pendulum
g = 9.81;           % Gravitational constant [m/s^2]

% Arm parameters
k1 = 0;             % Spring constant of arm joint
b1 = 0;             % Damping coefficient of arm joint
m1 = 5e-2;          % Mass of arm [kg]
j1 = 5.342e-3*m1;   % Inertia of arm [kg*m^2]
L1 = 0.25;          % Length of arm [m]
l1 = L1/2;          % Center of mass of arm [m]

% Pendulum parameters
k2 = 0;             % Spring constant of pendulum joint
b2 = 2.5e-4;        % Damping coefficient of pendulum joint
m2 = 2.195e-02;     % Mass of pendulum [kg]
j2 = 5.222e-03*m2;  % Inertia of pendulum [kg*m^2]
L2 = 0.25;          % Length of pendulum [m]
l2 = L2/2;          % Center of mass of pendulum [m]