%% NLMPC parameters
Ts = 0.05;          % Sampling time [s]
Tend = 20;          % Simulation time [s]
Hp = 10;            % Prediction horizon
Hc = 2;             % Control horizon
x0 = [0,0,0,0];     % Initial states (downward position)
u0 = 0;             % Initial input
nx = 4;             % Number of states
ny = 4;             % Number of measured outputs
nu = 1;             % Number of manipulated inputs

%% Final parameters NLMPC 

% Definition of NLMPC
nlobj = nlmpc(nx,ny,'MV',1,'UD',2);
nlobj.Ts = Ts;
nlobj.PredictionHorizon = Hp;
nlobj.ControlHorizon = Hc;

% Specify the state function of plant
nlobj.Model.StateFcn = "StateFcn";

% Specify number of parameters in the state function
% There are: g,mP,mA,bP,bA,jA,jP,LA,lA,lP
nlobj.Model.NumberOfParameters = 10;

% Specify the output function
nlobj.Model.OutputFcn = "OutFcn";

% Review of NLMPC
%validateFcns(nlobj,x0,u0,[],{g,m2,m1,b2,b1,j1,j2,L1,l1,l2});

% Specify limits of MV variable (constraints)
nlobj.MV.Min = -0.35;
nlobj.MV.Max = 0.35;

% Specify limits of OV variables (constraints)
nlobj.OV(4).Min = -14.5;
nlobj.OV(4).Max =  14.5;

% Rate weight of MV (small value for an aggressive control action)
nlobj.Weights.ManipulatedVariablesRate = 0.01;

% Weights of OV (more for the position of pendulum) Q3
nlobj.Weights.OutputVariables = [4 0.9 9 1];

% Specify reference of output variables
yref = [0 0 pi 0];

% Simulation settings
options = nlmpcmoveopt;
options.x0 = x0;                                   % Initial state
options.Parameters = {g,m2,m1,b2,b1,j1,j2,L1,l1,l2};     % Parameters of NLMPC

% Create bus object for Simulink model
parameters = [g,m2,m1,b2,b1,j1,j2,L1,l1,l2];
mdl = 'furutaPendulum';
createParameterBus(nlobj,[mdl '/Nonlinear MPC Controller'],'myBusObject',{g,m2,m1,b2,b1,j1,j2,L1,l1,l2});



