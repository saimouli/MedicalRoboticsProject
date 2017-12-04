function varargout = Target_Selection(varargin)
% TARGET_SELECTION MATLAB code for Target_Selection.fig
%      TARGET_SELECTION, by itself, creates a new TARGET_SELECTION or raises the existing
%      singleton*.
%
%      H = TARGET_SELECTION returns the handle to a new TARGET_SELECTION or the handle to
%      the existing singleton*.
%
%      TARGET_SELECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TARGET_SELECTION.M with the given input arguments.
%
%      TARGET_SELECTION('Property','Value',...) creates a new TARGET_SELECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Target_Selection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Target_Selection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Target_Selection

% Last Modified by GUIDE v2.5 04-Dec-2017 01:48:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Target_Selection_OpeningFcn, ...
                   'gui_OutputFcn',  @Target_Selection_OutputFcn, ...
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

end
% --- Executes just before Target_Selection is made visible.
function Target_Selection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Target_Selection (see VARARGIN)

% Choose default command line output for Target_Selection
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Target_Selection wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end 

% --- Outputs from this function are returned to the command line.
function varargout = Target_Selection_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

end




% --- Executes on button press in Home.
function Home_Callback(hObject, eventdata, handles)
% hObject    handle to Home (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clockwise = 1;
anticlockwise = 2;

x= 78; %mm
dirX= 1;

y= 32; %mm
dirY= 1;

z=20; %mm
dirZ= 1; 
motorMove(0,dirX,0,dirY,z,dirZ)
pause(3)
motorMove(x,dirX,y,dirY,0,dirZ)
end

% --- Executes on button press in Target1.
function Target1_Callback(hObject, eventdata, handles)
% hObject    handle to Target1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clockwise = 1;
anticlockwise = 2;

x= 6; %mm
dirX= 2;

y= 30; %mm
dirY= 2;

z= 12; %mm
dirZ= 2; 

motorMove(x,dirX,y,dirY,z,dirZ)

end

% --- Executes on button press in Target2.
function Target2_Callback(hObject, eventdata, handles)
% hObject    handle to Target2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clockwise = 1;
anticlockwise = 2;

x= 38; %mm
dirX= 2;

y= 23; %mm
dirY= 2;

z= 17; %mm
dirZ= 1; 
z1 =9;
motorMove(0,dirX,0,dirY,z,dirZ)
pause(3)
motorMove(x,dirX,y,dirY,z1,2)
end

% --- Executes on button press in Target3.
function Target3_Callback(hObject, eventdata, handles)
% hObject    handle to Target3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clockwise = 1;
anticlockwise = 2;

x= 34; %mm
dirX= 2;

y= 24; %mm
dirY= 1;

z=20; %mm
dirZ= 1; 
z1=9;

motorMove(0,dirX,0,dirY,z,dirZ)
pause(3)
motorMove(x,dirX,22,dirY,z1,2)
end

% --- Executes on button press in OFF.
function OFF_Callback(hObject, eventdata, handles)
% hObject    handle to OFF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
port_name = 'COM5'; %
arduino=serial(port_name,'BaudRate',9600);
fclose(arduino);

end
