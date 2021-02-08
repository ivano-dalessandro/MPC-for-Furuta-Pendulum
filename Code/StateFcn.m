function dx = StateFcn(x,u,g,m2,m1,b2,b1,j1,j2,L1,l1,l2)
% x(1) = theta1;
% x(2) = theta1dot;
% x(3) = theta2;
% x(4) = theta2dot;

j1_hat = j1 + m1*l1^2;
j2_hat = j2 + m2*l2^2;
j0_hat = j1_hat + m2*L1^2;

dx = zeros(4,1);
dx(1) = x(2);
dx(2) = ([-j2_hat*b1, m2*L1*l2*cos(x(3))*b2, -j2_hat^2*sin(2*x(3)), -0.5*j2_hat*m2*L1*l2*cos(x(3))*sin(2*x(3)),j2_hat*m2*L1*l2*sin(x(3))]*[x(2);x(4);x(2)*x(4);x(2)^2;x(4)^2] + [j2_hat, -m2*L1*l2*cos(x(3)),0.5*m2^2*l2^2*L1*sin(2*x(3))]*[u(1);u(2);g])/(j0_hat*j2_hat + j2_hat^2*sin(x(3))^2 - m2^2*L1^2*l2^2*cos(x(3))^2);
dx(3) = x(4);
dx(4) = ([m2*L1*l2*cos(x(3))*b1, -b2*(j0_hat + j2_hat*sin(x(3))^2), m2*L1*l2*j2_hat*cos(x(3))*sin(2*x(3)), -0.5*sin(2*x(3))*(j0_hat*j2_hat + j2_hat^2*sin(x(3))^2), -0.5*m2^2*L1^2*l2^2*sin(2*x(3))]*[x(2);x(4);x(2)*x(4);x(2)^2;x(4)^2] + [-m2*L1*l2*cos(x(3)), j0_hat + j2_hat*sin(x(3))^2, -m2*l2*sin(x(3))*(j0_hat + j2_hat*sin(x(3))^2)]*[u(1);u(2);g])/(j0_hat*j2_hat + j2_hat^2*sin(x(3))^2 - m2^2*L1^2*l2^2*cos(x(3))^2);
end