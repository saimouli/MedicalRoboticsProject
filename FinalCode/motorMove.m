%% This function always moves in the dir of X,Y,Z dist in mm
function motorMove(distanceX,dirX,distanceY,dirY,distanceZ,dirZ)
%Use following digitial pins on the arduino for the appropriate motor
% 2-3-4-5 for motor X
% 6-7-8-9 for motor Y
% 10-11-12-13 for motor Z

%%
% Setup Arduino Connection
port_name = '/dev/cu.usbmodem1411'; %
arduino=serial(port_name,'BaudRate',9600);

%% Declare Integers for our three motors
motor_x = 1;
motor_y = 2;
motor_z = 3;

%% Integers for Deciding the direction of rotation
%% 
% Sample code for running the motor of your choice.
% This can be used for testing your connections and checking whether all
% three motor are spining correctly.
% The serial connection on the Arduino end is expecting three inputs(in
% the same order) - 
% 1. Motor_number(motor_x(1), motor_y(2), motor_z(3))
% 2. Direction of rotation(clock(1), antoclock(2))
% 3. Number of steps(integer value for number of steps required)

stepsPerRevolution = 200; % 1.8 deg. step angle(200 steps/rev) as 1.8*200=360 deg
pitchLeadscrew = 8; %8mm diameter
% Choose the number of steps

stepsX= (stepsPerRevolution/pitchLeadscrew)*distanceX;% in mm
stepsY= (stepsPerRevolution/pitchLeadscrew)*distanceY;
stepsZ= (stepsPerRevolution/pitchLeadscrew)*distanceZ;

fopen(arduino);
pause(3)
fprintf(arduino, '%s', char(motor_x));
fprintf(arduino, '%s', char(dirX)); 
fprintf(arduino, '%u', floor(stepsX)); % send answer variable content to arduino

pause(3)
fprintf(arduino, '%s', char(motor_Y));
fprintf(arduino, '%s', char(dirY)); 
fprintf(arduino, '%u', floor(stepsY));

pause(3)
fprintf(arduino, '%s', char(motor_Z));
fprintf(arduino, '%s', char(dirZ)); 
fprintf(arduino, '%u', floor(stepsZ));

fclose(arduino);
end