function [A,B] = MyStateJacobian(x,u,g,m2,m1,b2,b1,j1,j2,L1,l1,l2)
    A = zeros(4,4);
    B = zeros(4,1);
    
    A(1,1) = 0;
    A(1,2) = 1;
    A(1,3) = 0;
    A(1,4) = 0;
    
    A(2,1) = 0;
    A(2,2) = -(b1*(m2*l2^2 + j2) + x(4)*sin(2*x(3))*(m2*l2^2 + j2)^2 + 2*L1*l2*m2*x(2)*sin(2*x(3))*cos(x(3))*((m2*l2^2)/2 + j2/2))/(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1) - L1^2*l2^2*m2^2*cos(x(3))^2);
    A(2,3) = - (2*x(2)*x(4)*cos(2*x(3))*(m2*l2^2 + j2)^2 - L1*g*l2^2*m2^2*cos(2*x(3)) + L1*b2*l2*m2*x(4)*sin(x(3)) - L1*l2*m2*x(4)^2*cos(x(3))*(m2*l2^2 + j2) + 2*L1*l2*m2*x(2)^2*cos(2*x(3))*cos(x(3))*((m2*l2^2)/2 + j2/2) - L1*l2*m2*x(2)^2*sin(2*x(3))*sin(x(3))*((m2*l2^2)/2 + j2/2))/(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1) - L1^2*l2^2*m2^2*cos(x(3))^2) - ((2*cos(x(3))*sin(x(3))*(m2*l2^2 + j2)^2 + 2*L1^2*l2^2*m2^2*cos(x(3))*sin(x(3)))*(u*(m2*l2^2 + j2) - b1*x(2)*(m2*l2^2 + j2) - x(2)*x(4)*sin(2*x(3))*(m2*l2^2 + j2)^2 + (L1*g*l2^2*m2^2*sin(2*x(3)))/2 + L1*b2*l2*m2*x(4)*cos(x(3)) + L1*l2*m2*x(4)^2*sin(x(3))*(m2*l2^2 + j2) - L1*l2*m2*x(2)^2*sin(2*x(3))*cos(x(3))*((m2*l2^2)/2 + j2/2)))/(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1) - L1^2*l2^2*m2^2*cos(x(3))^2)^2;
    A(2,4) = (L1*b2*l2*m2*cos(x(3)) - x(2)*sin(2*x(3))*(m2*l2^2 + j2)^2 + 2*L1*l2*m2*x(4)*sin(x(3))*(m2*l2^2 + j2))/(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1) - L1^2*l2^2*m2^2*cos(x(3))^2);
    
    A(3,1) = 0;
    A(3,2) = 0;
    A(3,3) = 0;
    A(3,4) = 1;
    
    A(4,1) = 0;
    A(4,2) = (L1*b1*l2*m2*cos(x(3)) - x(2)*sin(2*x(3))*(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1)) + L1*l2*m2*x(4)*sin(2*x(3))*cos(x(3))*(m2*l2^2 + j2))/(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1) - L1^2*l2^2*m2^2*cos(x(3))^2);
    A(4,3) = ((2*cos(x(3))*sin(x(3))*(m2*l2^2 + j2)^2 + 2*L1^2*l2^2*m2^2*cos(x(3))*sin(x(3)))*(b2*x(4)*(j1 + sin(x(3))^2*(m2*l2^2 + j2) + L1^2*m2 + l1^2*m1) + (x(2)^2*sin(2*x(3))*(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1)))/2 + g*l2*m2*sin(x(3))*(j1 + sin(x(3))^2*(m2*l2^2 + j2) + L1^2*m2 + l1^2*m1) + (L1^2*l2^2*m2^2*x(4)^2*sin(2*x(3)))/2 + L1*l2*m2*u*cos(x(3)) - L1*b1*l2*m2*x(2)*cos(x(3)) - L1*l2*m2*x(2)*x(4)*sin(2*x(3))*cos(x(3))*(m2*l2^2 + j2)))/(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1) - L1^2*l2^2*m2^2*cos(x(3))^2)^2 - (x(2)^2*cos(2*x(3))*(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1)) + x(2)^2*sin(2*x(3))*cos(x(3))*sin(x(3))*(m2*l2^2 + j2)^2 + g*l2*m2*cos(x(3))*(j1 + sin(x(3))^2*(m2*l2^2 + j2) + L1^2*m2 + l1^2*m1) + 2*b2*x(4)*cos(x(3))*sin(x(3))*(m2*l2^2 + j2) + L1^2*l2^2*m2^2*x(4)^2*cos(2*x(3)) - L1*l2*m2*u*sin(x(3)) + 2*g*l2*m2*cos(x(3))*sin(x(3))^2*(m2*l2^2 + j2) + L1*b1*l2*m2*x(2)*sin(x(3)) + L1*l2*m2*x(2)*x(4)*sin(2*x(3))*sin(x(3))*(m2*l2^2 + j2) - 2*L1*l2*m2*x(2)*x(4)*cos(2*x(3))*cos(x(3))*(m2*l2^2 + j2))/(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1) - L1^2*l2^2*m2^2*cos(x(3))^2);
    A(4,4) = -(b2*(j1 + sin(x(3))^2*(m2*l2^2 + j2) + L1^2*m2 + l1^2*m1) + L1^2*l2^2*m2^2*x(4)*sin(2*x(3)) - L1*l2*m2*x(2)*sin(2*x(3))*cos(x(3))*(m2*l2^2 + j2))/(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1) - L1^2*l2^2*m2^2*cos(x(3))^2);
    
    
    B(1,1) = 0;
    B(2,1) = (m2*l2^2 + j2)/(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1) - L1^2*l2^2*m2^2*cos(x(3))^2);
    B(3,1) = 0;
    B(4,1) = -(L1*l2*m2*cos(x(3)))/(sin(x(3))^2*(m2*l2^2 + j2)^2 + (m2*l2^2 + j2)*(m2*L1^2 + m1*l1^2 + j1) - L1^2*l2^2*m2^2*cos(x(3))^2);

end