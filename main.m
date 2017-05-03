% Fation Sehai 2355
clear variables; % Remove all variables from the workspace.
close all; % Close all open figure windows.

Open = [210 65 330 295];
Close = [225 90 315 270];

% ************************************************************************
prompt = 'Insert x: ';
x = input(prompt);
prompt = 'Insert y: ';
y = input(prompt);
prompt = 'Insert z: ';
z = input(prompt);

% TROXIA
%xt=a0+a2*t^2+a3*t^3;
%xdot_t=2*a2*t+3*a3*t^2;
%x2dot_t=2*a2+6*a3*t;

% ************************************************************************
% Gia na paei sto xyz
x0=0; xf=x; tf=3;
a0=x0; a1=0; a2=3*(xf-x0)/tf^2; a3=-2*(xf-x0)/tf^3;

y0=0; yf=y; z0=0; zf=z;
y1=0; y2=3*(yf-y0)/tf^2; y3=-2*(yf-y0)/tf^3;
z1=0; z2=3*(zf-z0)/tf^2; z3=-2*(zf-z0)/tf^3;
% ************************************************************************
for t=0:0.05:tf
    xf=a0+a2*t^2+a3*t^3;  % troxia ar8rwsewn
    yf=y0+y2*t^2+y3*t^3;  % troxia ar8rwsewn
    zf=z0+z2*t^2+z3*t^3;  % troxia ar8rwsewn
    %yf=xf*y/x; zf=xf*z/x;
    [T02, T03, T05, T06, t02, t03, t04] = fingers(Open, xf, yf, zf);
    % Plot
    plot3([-xf T02(1,4)],[-yf T02(2,4)],[-zf T02(3,4)],...
          [T02(1,4) T03(1,4)],[T02(2,4) T03(2,4)],[T02(3,4) T03(3,4)],...
          [-xf T05(1,4)],[-yf T05(2,4)],[-zf T05(3,4)],...
          [T05(1,4) T06(1,4)],[T05(2,4) T06(2,4)],[T05(3,4) T06(3,4)],...
          [0 t02(1,4)],[0 t02(2,4)],[0 t02(3,4)],...
          [t02(1,4) t03(1,4)],[t02(2,4) t03(2,4)],[t02(3,4) t03(3,4)],...
          [t03(1,4) t04(1,4)],[t03(2,4) t04(2,4)],[t03(3,4) t04(3,4)],...
          'Marker','.','LineStyle','-');
    grid; % Add grid lines to the current axes.
    axis([-3 1 -3 1 -3 1]); % Set scaling for the x-y- and z-axes.
    axis square; % Make the current axis box square in size.
    xlabel('x');ylabel('y');zlabel('z');
    pause(0.001);
    %xf=a0+a2*t^2+a3*t^3;  % troxia ar8rwsewn
end




% ************************************************************************
prompt = 'Insert x: ';
xt = input(prompt);
prompt = 'Insert y: ';
yt = input(prompt);
prompt = 'Insert z: ';
zt = input(prompt);

% ************************************************************************
% Gia na paei sto xyz
x0=x; xf=xt; tf=3;
a0=x0; a1=0; a2=3*(xf-x0)/tf^2; a3=-2*(xf-x0)/tf^3;
% ***********************************************************************

y0=y; yf=yt; z0=z; zf=zt;
y1=0; y2=3*(yf-y0)/tf^2; y3=-2*(yf-y0)/tf^3;
z1=0; z2=3*(zf-z0)/tf^2; z3=-2*(zf-z0)/tf^3;

%   Arpazei kai gurnaei pisw    ------------------------------------------
for t=0:0.05:tf%tf:-0.05:0
    %yf=xf*yt/xt; zf=xf*zt/xt;
    xf=a0+a2*t^2+a3*t^3;  % troxia ar8rwsewn
    yf=y0+y2*t^2+y3*t^3;  % troxia ar8rwsewn
    zf=z0+z2*t^2+z3*t^3;  % troxia ar8rwsewn
    [T02, T03, T05, T06, t02, t03, t04] = fingers(Close, xf, yf, zf);
    % Plot
    plot3([-xf T02(1,4)],[-yf T02(2,4)],[-zf T02(3,4)],...
          [T02(1,4) T03(1,4)],[T02(2,4) T03(2,4)],[T02(3,4) T03(3,4)],...
          [-xf T05(1,4)],[-yf T05(2,4)],[-zf T05(3,4)],...
          [T05(1,4) T06(1,4)],[T05(2,4) T06(2,4)],[T05(3,4) T06(3,4)],...
          [0 t02(1,4)],[0 t02(2,4)],[0 t02(3,4)],...
          [t02(1,4) t03(1,4)],[t02(2,4) t03(2,4)],[t02(3,4) t03(3,4)],...
          [t03(1,4) t04(1,4)],[t03(2,4) t04(2,4)],[t03(3,4) t04(3,4)],...
          'Marker','.','LineStyle','-');
    grid; % Add grid lines to the current axes.
    axis([-3 1 -3 1 -3 1]); % Set scaling for the x-y- and z-axes.
    axis square; % Make the current axis box square in size.
    xlabel('x');ylabel('y');zlabel('z');
    pause(0.001);
    %xf=a0+a2*t^2+a3*t^3;  % troxia ar8rwsewn
end
    