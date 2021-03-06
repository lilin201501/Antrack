% The human readable label for the tracker, used to identify the tracker in reports
% If not set, it will be set to the same value as the identifier.
% It does not have to be unique, but it is best that it is.
tracker_label = ['MBD32L0_1'];

% Now you have to set up the system command to be run.
% For classical executables this is usually just a full path to the executable plus
% some optional arguments:
%
% tracker_command = fullfile(pwd, '..', 'examples', 'c', 'static');
%
% For MATLAB implementations there are several options. If you are using the TraX protocol
% and you are using MEX function (Linux and OSX systems only) then you have to run Matlab
% in GUI-less mode and run the script at startup (for more details check the Integration
% instructions). You can use the same form of command that can also be used in case of
% the old integration approach:
%
% tracker_command = '<TODO: path to Matlab installation>/bin/matlab -nodesktop -nosplash -r wrapper' % Linux and OSX version  (old approach and TraX using MEX)
% tracker_command = '<TODO: path to Matlab installation>\bin\matlab.exe -wait -minimize -nodesktop -nosplash -r wrapper' % Windows version (old approach only)
%
% If you want to use TraX protocol on Windows, or if the MEX function approach does not work,
% you can use the mwrapper executable found in trax reference implementation repository. In
% this case the command will look something like this:
%
% tracker_command = '<TODO: path to trax>\matlab\mwrapper.exe -I "<TODO: initialization script>" -U "<TODO: update script>"'
%
% For more details look at the instructions in the

cDir='/home/ibogun2010/Code/Antrack/matlab/';

dataFolder='/home/ibogun2010/Code/Antrack/data/';
proto=strcat(dataFolder,'imagenet_memory.prototxt');
weights=strcat(dataFolder,'bvlc_reference_caffenet.caffemodel');

tracker_command = strcat(cDir,['/build/bin/struck_vot2014  --feature=hogANDhist --kernel=int --MBest=32 --lambda_diff=0.1 --lambda_s=0.3 --lambda_e=0.4 --filter=1 --updateEveryNframes=3 --b=10 --P=10 --Q=13 --R=13']);

tracker_command=[tracker_command,' ','--proto_file=',proto,' ','--conv_deep_weights=',weights];

display(tracker_command);
% tracker_interpreter = []; % Set the interpreter used here as a lower case string. E.g. if you are using Matlab, write 'matlab'. (optional)

tracker_linkpath = {'/usr/local/lib'}; % A cell array of custom library directories used by the tracker executable (optional)

%tracker_trax = true; % Using a TraX protocol for communication (default, optional)