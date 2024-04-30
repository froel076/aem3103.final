% Example 1.3-1 Paper Airplane Flight Path
% Copyright 2005 by Robert Stengel
% August 23, 2005

global CL CD S m g rho
S = 0.017; % Reference Area, m^2
AR = 0.86; % Wing Aspect Ratio
e = 0.9; % Oswald Efficiency Factor;
m = 0.003; % Mass, kg
g = 9.8; % Gravitational acceleration, m/s^2
rho = 1.225; % Air density at Sea Level, kg/m^3
CLa = 3.141592 * AR/(1 + sqrt(1 + (AR / 2)^2)); % Lift-Coefficient Slope, per rad
CDo = 0.02; % Zero-Lift Drag Coefficient
epsilon = 1 / (3.141592 * e * AR);% Induced Drag Factor
CL = sqrt(CDo / epsilon); % CL for Maximum Lift/Drag Ratio
CD = CDo + epsilon * CL^2; % Corresponding CD
LDmax = CL / CD; % Maximum Lift/Drag Ratio
Gam = -atan(1 / LDmax); % Corresponding Flight Path Angle, rad
V = sqrt(2 * m * g /(rho * S * (CL * cos(Gam) - CD * sin(Gam)))); % Corresponding Velocity, m/s
Alpha = CL / CLa; % Corresponding Angle of Attack, rad

%% Question 2
H = 2; % Initial Height, m
R = 0; % Initial Range, m
to = 0; % Initial Time, sec
tf = 6; % Final Time, sec
tspan = [to tf];
xo = [V;Gam;H;R];
[ta,xa] = ode23('EqMotion',tspan,xo);

% Varying Velocity at Nominal Gamma
Vh = 7.5;
GamN = -0.18;
x1 = [Vh;GamN;H;R];
[tb, xb] = ode23('EqMotion',tspan, x1);

Vn = 3.55;
x2 = [Vn;GamN;H;R];
[tc, xc] = ode23('EqMotion', tspan, x2);

Vl = 2;
x3 = [Vl;GamN;H;R];
[td, xd] = ode23('EqMotion', tspan, x3);

% Varying Gamma at Nominal Velocity
GamH = -0.5;
x4 = [Vn;GamH;H;R];
[te, xe] = ode23('EqMotion', tspan, x4);

GamL = 0.4;
x5 = [Vn;GamL;H;R];
[tf, xf] = ode23('EqMotion', tspan, x5);

figure
subplot(2,1,2)
plot(xa(:,4),xa(:,3))
hold on
plot(xb(:,4),xb(:,3), "color", 'g')
plot(xc(:,4),xc(:,3), "color", 'k')
plot(xd(:,4),xd(:,3), "color", 'r');
xlabel('Range, m'), ylabel('Height, m'), grid
title('Varying Velocity at Nominal Gamma');

subplot(2,1,1)
plot(xa(:,4),xa(:,3))
hold on
plot(xe(:,4),xe(:,3), "color", 'g')
plot(xc(:,4),xc(:,3), "color", 'k')
plot(xf(:,4),xf(:,3), "color", 'r')
xlabel('Range, m'), ylabel('Height, m'), grid
title('Varying Gamma at Nomial Velocity')

%% Question 3


Vrand = 2 + (7.5 - 2).*rand(100,1);
Grand = -0.4 + (0.5 +0.4).*rand(100,1);

%Plot Details
figure 
hold on
for i = 1:1:100
    xrand = [Vrand(i,:), Grand(i,:), H, R];
    [tR, xR] = ode23('EqMotion', tspan, xrand);

    plot(xR(:,4), xR(:,3), 'Color', 'k')

    i = i + 1;
end
title('Varying Velocity and Gamma within Higher and Lower Range')
xlabel('Range, m'), ylabel('Height, m'), grid



