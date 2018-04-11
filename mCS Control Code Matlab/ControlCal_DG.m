%% Sample Time
Ts = 0.5;

%% Time delay (seconds) between switching on different relays
delay = 5; % Has to be minimum of 12 sec for Fault Detection to work

%% Voc Threshold for switching on Solar Mode
SVocThresh = 550; % volts

%% Drive Freq threshold for switching to grid
DFThresh = 33; % Hz

%% Timeout for switching between S olar and Grid
PowerModeSwitchDelay = 30; % seconds

%% Battery Threshold voltage for system switch-off
VbatThresh = 22; % volts

%% Ambient temperature thresholds (celsius) to switch on Heater
HeatTempThresh1 = 40; % Here, run heater for 2 min (Don't run heater above this)
HeatTempThresh2 = 30; % Here, run heater for 5 min
HeatTempThresh3 = 20; % Here and below, run heater for 30 min
% Linear interpolation in between

%% Temperature and Humidity setpoints for the 4 HMI buttons
T = [0 4 7 10]; % celsius
H = [90 90 90 90]; % percentage

%% Thermal Storage Setpoints
% TV1 freq threshold
TV1FThresh = 45; % Hz

% TV2 freq threshold
TV2FThresh = 60; % Hz

% Thermal storage temp setpoint
TSTempSetPoint = -2; % C

%% Temperature and Frequency Threshold for switching on Condenser Fan 2
CDF2TempThreshold = 20; % celsius
CDF2FThreshold = 45; % Hz

%% Time to wait after running the pump before checking for Humidity condition again
HStabilizationTime = 2*60; % seconds

%% Ambient temperature threshold for switching on Panel Box Fan
PBFTempThreshold = 30; % celsius

%% Rated Currents (A) for various relays

I_PUMP = -1; %2.5; 
I_VALVE = -1; %0.5; 
I_FAN = -1; %2.5;

%% Logging sampling time
Tlog = 90;

%% Solar Auto-switching Parameters
VocIncrement = 5; % V 
VocDecRate = 0.5; % V/min

%% Initial Settings - [Crop Mode Power]
initialSet = [1 1 1];

%% Add other parameters *before* Bus Object Creation

%% Bus Object Creation
try
    InputsInfo=Simulink.Bus.createObject('mCSControls_DG','mCSControls_DG/Inputs/Bus Creator');
    RelaysInfo=Simulink.Bus.createObject('mCSControls_DG','mCSControls_DG/Controls/RelayInitialization/Bus Creator');
catch
    error('Comment out the Stateflow block in mCSControls_DG->Controls, and the mCSControls_DG->Outputs subsystem, try again, and then uncomment them once this script is executed')
end
