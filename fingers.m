% Fation Sehai 2355
function [T02,T03,T05,T06,t02,t03,t04] = fingers( table, x, y, z)

% Fusikes parametroi
l = 0.5;

% Metatroph moirwn se rad
th1 = table(1)*(pi/180);
th1b = table(2)*(pi/180);
th2 = table(3)*(pi/180);
th2b = table(4)*(pi/180);

% Omogeneis pinakes gia ar8rwseis

% 0-1
t01 = [1 0 0 0;
       0 1 0 0;
       0 0 1 0;
       0 0 0 1];
% 1-2
t12 = [1 0 0 0;
       0 1 0 -y;
       0 0 1 0;
       0 0 0 1];
% 2-3
t23 = [1 0 0 -x;
       0 1 0 0;
       0 0 1 0;
       0 0 0 1];
% 3-4
t34 = [1 0 0 0;
       0 1 0 0;
       0 0 1 -z;%-x
       0 0 0 1];

% 0-2
t02 = t01*t12;
% 0-3
t03 = t01*t12*t23;
% 0-4
t04 = t01*t12*t23*t34;


% Omogeneis pinakes gia daxtula, a3onas peristrofhs x
% 0-1
T01 = [1 0 0 -x;
       0 cos(th1) -sin(th1) -y;
       0 sin(th1) cos(th1) -z;
       0 0 0 1];
% 1-2
T12 = [1 0 0 0;
       0 cos(th1b) -sin(th1b) l;
       0 sin(th1b) cos(th1b) 0;
       0 0 0 1];
% 2-3
T23 = [1 0 0 0;
       0 1 0 l;
       0 0 1 0;
       0 0 0 1];

% 0-2
T02 = T01*T12;  
% 0-3
T03 = T01*T12*T23;


% 0-4
T04 = [1 0 0 -x;
       0 cos(th2) -sin(th2) -y;
       0 sin(th2) cos(th2) -z;
       0 0 0 1];
% 4-5
T45 = [1 0 0 0;
       0 cos(th2b) -sin(th2b) l;
       0 sin(th2b) cos(th2b) 0;
       0 0 0 1];
% 5-6
T56 = [1 0 0 0;
       0 1 0 l;
       0 0 1 0;
       0 0 0 1];
   
% 0-5
T05 = T04*T45;  
% 0-6
T06 = T04*T45*T56;

end