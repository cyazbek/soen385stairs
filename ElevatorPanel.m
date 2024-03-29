
function varargout = ElevatorPanel(varargin)
% ELEVATORPANEL MATLAB code for ElevatorPanel.fig
%      ELEVATORPANEL, by itself, creates a new ELEVATORPANEL or raises the existing
%      singleton*.
%
%      H = ELEVATORPANEL returns the handle to a new ELEVATORPANEL or the handle to
%      the existing singleton*.
%
%      ELEVATORPANEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ELEVATORPANEL.M with the given input arguments.
%
%      ELEVATORPANEL('Property','Value',...) creates a new ELEVATORPANEL or raises
%      the existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ElevatorPanel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ElevatorPanel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ElevatorPanel

% Last Modified by GUIDE v2.5 31-Mar-2016 16:34:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ElevatorPanel_OpeningFcn, ...
                   'gui_OutputFcn',  @ElevatorPanel_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
% End initialization code - DO NOT EDIT

% --- Executes just before ElevatorPanel is made visible.
function ElevatorPanel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ElevatorPanel (see VARARGIN)

% Choose default command line output for ElevatorPanel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

initialize_gui(hObject, handles, false);

% UIWAIT makes ElevatorPanel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


function button1_Callback(hObject, eventdata, handles)
% hObject    handle to button1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnOnePushed = get (hObject, 'Value');

% 1 for pushed, 0 for not pushed 
if btnOnePushed
    % therefore if 1 then add it to the queue
    % first argument is the block's path,
    % second argument is the name of the parameter you are setting
    % third the actual value to set
    set_param('Simplified/Constant1', Value, str2num(btnOnePushed.SelectedObject.Text));
end 

function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnTwoPushed = get (hObject, 'Value');

if btnTwoPushed
   set_param('Simplified/Constant1', btnTwoPushed.SelectedObject.Text); 
end 

function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnThreePushed = get (hObject, 'Value');

if btnThreePushed
   set_param('Simplified/Constant1', btnTwoPushed.SelectedObject.Text);
end 


function button4_Callback(hObject, eventdata, handles)
% hObject    handle to button4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnFourPushed = get (hObject, 'Value');

if btnFourPushed
   % add it to queue 
end 

function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnFivePushed = get (hObject, 'Value');

if btnFivePushed
   % add it to queue 
end 

function button6_Callback(hObject, eventdata, handles)
% hObject    handle to button6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnSixPushed = get (hObject, 'Value');

if btnSixPushed
   % add it to queue 
end 

function button7_Callback(hObject, eventdata, handles)
% hObject    handle to button7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnSevenPushed = get (hObject, 'Value');

if btnSevenPushed
   % add it to queue 
end 

function button8_Callback(hObject, eventdata, handles)
% hObject    handle to button8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnEightPushed = get (hObject, 'Value');

if btnEightPushed
  set_param('Simplified/Constant', btnEightPushed.SelectedObject.Text);
end 

function button9_Callback(hObject, eventdata, handles)
% hObject    handle to button9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnNinePushed = get (hObject, 'Value');

if btnNinePushed
   % add it to queue 
end 

function button10_Callback(hObject, eventdata, handles)
% hObject    handle to button10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnTenPushed = get (hObject, 'Value');

if btnTenPushed
   % add it to queue 
end 

function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnElevenPushed = get (hObject, 'Value');

if btnElvenPushed
   % add it to queue 
end 

% --- Executes on button press in button12.
function button12_Callback(hObject, eventdata, handles)
% hObject    handle to button12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
btnTwelvePushed = get (hObject, 'Value');

if btnTwelvePushed
   % add it to queue 
end 

% --- Executes on button press in start_btn.
function start_btn_Callback(hObject, eventdata, handles)
% hObject    handle to start_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
startBtnPushed = get (hObject, 'Value');

if startBtnPushed
   % start the simulation
end 
