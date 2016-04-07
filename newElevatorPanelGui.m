function varargout = newElevatorPanelGui(varargin)
% NEWELEVATORPANELGUI MATLAB code for newElevatorPanelGui.fig
%      NEWELEVATORPANELGUI, by itself, creates a new NEWELEVATORPANELGUI or raises the existing
%      singleton*.
%
%      H = NEWELEVATORPANELGUI returns the handle to a new NEWELEVATORPANELGUI or the handle to
%      the existing singleton*.
%
%      NEWELEVATORPANELGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWELEVATORPANELGUI.M with the given input arguments.
%
%      NEWELEVATORPANELGUI('Property','Value',...) creates a new NEWELEVATORPANELGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newElevatorPanelGui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newElevatorPanelGui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newElevatorPanelGui

% Last Modified by GUIDE v2.5 07-Apr-2016 16:08:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newElevatorPanelGui_OpeningFcn, ...
                   'gui_OutputFcn',  @newElevatorPanelGui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before newElevatorPanelGui is made visible.
function newElevatorPanelGui_OpeningFcn(hObject, eventdata, handles, varargin)
    
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newElevatorPanelGui (see VARARGIN)

% Choose default command line output for newElevatorPanelGui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes newElevatorPanelGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newElevatorPanelGui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

end 

function button_Callback(hObject, eventdata, handles)
% hObject    handle to button1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnOnePushed = get (hObject, 'Value');
Disp('hello');
% 1 for pushed, 0 for not pushed 
    if btnOnePushed
    % therefore if 1 then add it to the queue
    % first argument is the block's path,
    % second argument is the name of the parameter you are setting
    % third the actual value to set
        set_param('Simplified/Constant1', Value, str2num(btnOnePushed.SelectedObject.Text));
    end
end

%function pushbutton1_Callback(hObject, eventdata, handles)
    %set_param('modelName','SimulationCommand','start');
%end
end

end