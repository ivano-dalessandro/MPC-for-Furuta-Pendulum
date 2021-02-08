% Simscape(TM) Multibody(TM) version: 7.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(5).translation = [0.0 0.0 0.0];
smiData.RigidTransform(5).angle = 0.0;
smiData.RigidTransform(5).axis = [0.0 0.0 0.0];
smiData.RigidTransform(5).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 0 315];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [0 1 0];
smiData.RigidTransform(1).ID = 'B[Base1:1:-:Asta1:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [5 20 0];  % mm
smiData.RigidTransform(2).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(2).axis = [-0.70710678118654746 0.70710678118654757 0];
smiData.RigidTransform(2).ID = 'F[Base1:1:-:Asta1:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [250 20 5];  % mm
smiData.RigidTransform(3).angle = 1.5707963267948968;  % rad
smiData.RigidTransform(3).axis = [-0 -1 -0];
smiData.RigidTransform(3).ID = 'B[Asta1:1:-:Pendolo1:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [247.5 0 -7.5017824586909576];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(4).axis = [-1 -0 -6.3932200092861953e-17];
smiData.RigidTransform(4).ID = 'F[Asta1:1:-:Pendolo1:1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [17.858615861803727 276.39677838957607 -143.89161001022433];  % mm
smiData.RigidTransform(5).angle = 0.58720909103341856;  % rad
smiData.RigidTransform(5).axis = [0.083317574138921602 -0.2889481697449493 -0.95371229259176959];
smiData.RigidTransform(5).ID = 'RootGround[Base1:1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(3).mass = 0.0;
smiData.Solid(3).CoM = [0.0 0.0 0.0];
smiData.Solid(3).MoI = [0.0 0.0 0.0];
smiData.Solid(3).PoI = [0.0 0.0 0.0];
smiData.Solid(3).color = [0.0 0.0 0.0];
smiData.Solid(3).opacity = 0.0;
smiData.Solid(3).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 1.4227998238750377;  % kg
smiData.Solid(1).CoM = [7.9794362616574472e-09 0 157.49999999999997];  % mm
smiData.Solid(1).MoI = [12280.629938120999 12280.629804878659 1031.707655666213];  % kg*mm^2
smiData.Solid(1).PoI = [0 -7.9580786405131231e-13 1.0913936421275138e-12];  % kg*mm^2
smiData.Solid(1).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Base1.ipt_{57305725-4FC4-8CC1-7E66-C1B631E4DCA8}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.099607300918301264;  % kg
smiData.Solid(2).CoM = [125.00000000000051 20 4.999999999999484];  % mm
smiData.Solid(2).MoI = [14.16411003213206 516.00791380548992 528.50924325565757];  % kg*mm^2
smiData.Solid(2).PoI = [0 6.1618266045115891e-12 0];  % kg*mm^2
smiData.Solid(2).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'Asta1.ipt_{9D21B39C-4C55-9D71-0EFE-C7AF7C14A382}';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.043890845261483367;  % kg
smiData.Solid(3).CoM = [124.19287386409488 2.3366126127390334e-05 -0.00046066036514219295];  % mm
smiData.Solid(3).MoI = [1.236920237014945 226.3376579516819 226.34236654157064];  % kg*mm^2
smiData.Solid(3).PoI = [-4.7243332967816454e-10 0.0012756741895742778 -0.00012463562616491807];  % kg*mm^2
smiData.Solid(3).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'Pendolo1.ipt_{8D6269F0-4EF5-5EE4-0B25-C2A3BB6E2EF0}';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 147.83039806947062;  % deg
smiData.RevoluteJoint(1).ID = '[Base1:1:-:Asta1:1]';

smiData.RevoluteJoint(2).Rz.Pos = 170.0144806909654;  % deg
smiData.RevoluteJoint(2).ID = '[Asta1:1:-:Pendolo1:1]';

