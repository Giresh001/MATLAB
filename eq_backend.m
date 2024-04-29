function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 26-Apr-2024 00:44:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
global  C Fs;

Fs=44100;
C=zeros(1,8);

%slider1
set(handles.slider1, 'min',-20);
set(handles.slider1, 'max',20);
set(handles.slider1, 'value',-20);
set(handles.slider1, 'SliderStep',[0.025, 0.05]);
set(handles.slider1, 'string',num2str(0));

%slider2
set(handles.slider2, 'min',-20);
set(handles.slider2, 'max',20);
set(handles.slider2, 'value',-20);
set(handles.slider2, 'SliderStep',[0.025, 0.05]);
set(handles.slider2, 'string',num2str(0));

%slider3
set(handles.slider3, 'min',-20);
set(handles.slider3, 'max',20);
set(handles.slider3, 'value',-20);
set(handles.slider3, 'SliderStep',[0.025, 0.05]);
set(handles.slider3, 'string',num2str(0));

%slider4
set(handles.slider4, 'min',-20);
set(handles.slider4, 'max',20);
set(handles.slider4, 'value',-20);
set(handles.slider4, 'SliderStep',[0.025, 0.05]);
set(handles.slider4, 'string',num2str(0));

%slider5
set(handles.slider5, 'min',-20);
set(handles.slider5, 'max',20);
set(handles.slider5, 'value',-20);
set(handles.slider5, 'SliderStep',[0.025, 0.05]);
set(handles.slider5, 'string',num2str(0));

%slider6
set(handles.slider6, 'min',-20);
set(handles.slider6, 'max',20);
set(handles.slider6, 'value',-20);
set(handles.slider6, 'SliderStep',[0.025, 0.05]);
set(handles.slider6, 'string',num2str(0));

%slider7
set(handles.slider7, 'min',-20);
set(handles.slider7, 'max',20);
set(handles.slider7, 'value',-20);
set(handles.slider7, 'SliderStep',[0.025, 0.05]);
set(handles.slider7, 'string',num2str(0));

%slider8
set(handles.slider8, 'min',-20);
set(handles.slider8, 'max',20);
set(handles.slider8, 'value',-20);
set(handles.slider8, 'SliderStep',[0.025, 0.05]);
set(handles.slider8, 'string',num2str(0));

% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
global C;
C(1)=get(hObject,'value');
set(handles.slider1_val,'string',num2str(C(1)));
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
global C;
C(2)=get(hObject,'value');
set(handles.slider2_val,'string',num2str(C(2)));
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
global C;
C(3)=get(hObject,'value');
set(handles.slider3_val,'string',num2str(C(3)));
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
global C;
C(4)=get(hObject,'value');
set(handles.slider4_val,'string',num2str(C(4)));
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
global C;
C(5)=get(hObject,'value');
set(handles.slider5_val,'string',num2str(C(5)));
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
global C;
C(6)=get(hObject,'value');
set(handles.slider6_val,'string',num2str(C(6)));
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
global C;
C(7)=get(hObject,'value');
set(handles.slider7_val,'string',num2str(C(7)));
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
global C;
C(8)=get(hObject,'value');
set(handles.slider8_val,'string',num2str(C(8)));
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in Load.
function Load_Callback(hObject, eventdata, handles)
global file_name;
file_name = uigetfile({'*.wav;*.mp3', 'Audio Files (*.wav, *.mp3)'});
% hObject    handle to Load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
global player
stop(player)

set(handles.slider1_val,'string',num2str(0));
set(handles.slider1,'value',0);

set(handles.slider2_val,'string',num2str(0));
set(handles.slider2,'value',0);

set(handles.slider3_val,'string',num2str(0));
set(handles.slider3,'value',0);

set(handles.slider4_val,'string',num2str(0));
set(handles.slider4,'value',0);

set(handles.slider5_val,'string',num2str(0));
set(handles.slider5,'value',0);

set(handles.slider6_val,'string',num2str(0));
set(handles.slider6,'value',0);

set(handles.slider7_val,'string',num2str(0));
set(handles.slider7,'value',0);

set(handles.slider8_val,'string',num2str(0));
set(handles.slider8,'value',0);


% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Play.
function equalizer_play()
global  file_name C x Fs player;
[x, Fs] = audioread(file_name);
[a, b] = coef();
one_var = 2 * Fs;
Nb = round(length(x) / one_var);
y = zeros(size(x));  % Initialize y as a zero vector
num_bands = length(C);  % Get the number of frequency bands from the length of C
for i = 1:floor(Nb)
    var = x((i - 1) * one_var + 1 : i * one_var);
    for k = 1:num_bands
        y((i - 1) * one_var + 1 : i * one_var) = y((i - 1) * one_var + 1 : i * one_var) + filter(10^(C(k)/20) * b{k}, a{k}, var);
        
    end
end
player = audioplayer(x, Fs);  % Create an audioplayer object

function Play_Callback(hObject, eventdata, handles)
equalizer_play()
global  file_name C x Fs player;
play(player);  


% hObject    handle to Play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Stop.
function Stop_Callback(hObject, eventdata, handles)
global  file_name C x Fs player;
stop(player)
% hObject    handle to Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.

% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1

    function [a, b] = coef()
    global Fs;
    Rp1 = 0.5;
    Rs1 = 30;
    
    % Define cutoff frequencies for 8 bands
    Fp1 = 1e3 * [1.5, 2, 3, 4, 5, 6, 7, 8] / (Fs/2);
    Fs1 = 1e3 * [1, 2.4, 3.2, 4.5, 5.5, 6.8, 7.8, 8.5] / (Fs/2);
    
    % Design filters for each band
    a = cell(1, 8);
    b = cell(1, 8);
    for i = 1:8
        n = cheb1ord(Fp1(i), Fs1(i), Rp1, Rs1);
        [b{i}, a{i}] = cheby1(n, Rp1, Fp1(i));
    end
% --- Executes on button press in Plot.
function Plot_Callback(hObject, eventdata, handles)
global C Fs;
% Assuming H, C, b, and a are defined elsewhere in your code
[a,b]=coef();
% Initialize H
H = zeros(1, 1024);

% Compute cumulative frequency response for each band
for i = 1:8
    % Assuming C(i), b{i}, and a{i} are defined
    H = H + 10^(C(i)/20) * abs(freqz(b{i}, a{i}, 1024));
end

% Plot the cumulative magnitude response
Fs = 44100; % Sample rate, assuming 44100 Hz
plot(1e-3 * Fs * [0:1023] / 2048, 20 * log10(H)); 
xlabel('Frequency [kHz]');
ylabel('Magnitude [dB]');
title('8 Band EQ');
axis([0 1e-3 * Fs / 2 -21 21]);
grid on;
% hObject    handle to Plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function Plot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in Plot.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to Plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function slider1_val_Callback(hObject, eventdata, handles)
global C;
C(1)=str2num(get(hObject,'string'));
minn=get(handles.C1_var,'min');
maxx=get(handles.C1_var,'max');
if(C(1)<minn || C(1)>maxx)
    C(1)=get(handles.C1_var,'values');
    set(hObject,'string',num2str(0));
else
    set(handles.slider1_var,'value',C(1));
end
% hObject    handle to slider1_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider1_val as text
%        str2double(get(hObject,'String')) returns contents of slider1_val as a double


% --- Executes during object creation, after setting all properties.
function slider1_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function slider2_val_Callback(hObject, eventdata, handles)
global C;
C(2)=str2num(get(hObject,'string'));
minn=get(handles.C2_var,'min');
maxx=get(handles.C2_var,'max');
if(C(2)<minn || C(2)>maxx)
    C(2)=get(handles.C2_var,'values');
    set(hObject,'string',num2str(0));
else
    set(handles.slider2_var,'value',C(2));
end
% hObject    handle to slider2_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider2_val as text
%        str2double(get(hObject,'String')) returns contents of slider2_val as a double


% --- Executes during object creation, after setting all properties.
function slider2_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function slider3_val_Callback(hObject, eventdata, handles)
global C;
C(3)=str2num(get(hObject,'string'));
minn=get(handles.C3_var,'min');
maxx=get(handles.C3_var,'max');
if(C(3)<minn || C(3)>maxx)
    C(3)=get(handles.C3_var,'values');
    set(hObject,'string',num2str(0));
else
    set(handles.slider3_var,'value',C(3));
end
% hObject    handle to slider3_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider3_val as text
%        str2double(get(hObject,'String')) returns contents of slider3_val as a double


% --- Executes during object creation, after setting all properties.
function slider3_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function slider4_val_Callback(hObject, eventdata, handles)
global C;
C(4)=str2num(get(hObject,'string'));
minn=get(handles.C4_var,'min');
maxx=get(handles.C4_var,'max');
if(C(4)<minn || C(4)>maxx)
    C(4)=get(handles.C4_var,'values');
    set(hObject,'string',num2str(0));
else
    set(handles.slider4_var,'value',C(4));
end
% hObject    handle to slider4_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider4_val as text
%        str2double(get(hObject,'String')) returns contents of slider4_val as a double


% --- Executes during object creation, after setting all properties.
function slider4_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function slider5_val_Callback(hObject, eventdata, handles)
global C;
C(5)=str2num(get(hObject,'string'));
minn=get(handles.C5_var,'min');
maxx=get(handles.C5_var,'max');
if(C(5)<minn || C(5)>maxx)
    C(5)=get(handles.C5_var,'values');
    set(hObject,'string',num2str(0));
else
    set(handles.slider5_var,'value',C(5));
end
% hObject    handle to slider5_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider5_val as text
%        str2double(get(hObject,'String')) returns contents of slider5_val as a double


% --- Executes during object creation, after setting all properties.
function slider5_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function slider6_val_Callback(hObject, eventdata, handles)
global C;
C(6)=str2num(get(hObject,'string'));
minn=get(handles.C6_var,'min');
maxx=get(handles.C6_var,'max');
if(C(6)<minn || C(6)>maxx)
    C(6)=get(handles.C6_var,'values');
    set(hObject,'string',num2str(0));
else
    set(handles.slider6_var,'value',C(6));
end
% hObject    handle to slider6_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider6_val as text
%        str2double(get(hObject,'String')) returns contents of slider6_val as a double


% --- Executes during object creation, after setting all properties.
function slider6_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function slider7_val_Callback(hObject, eventdata, handles)
global C;
C(7)=str2num(get(hObject,'string'));
minn=get(handles.C7_var,'min');
maxx=get(handles.C7_var,'max');
if(C(7)<minn || C(7)>maxx)
    C(7)=get(handles.C7_var,'values');
    set(hObject,'string',num2str(0));
else
    set(handles.slider7_var,'value',C(7));
end
% hObject    handle to slider7_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider7_val as text
%        str2double(get(hObject,'String')) returns contents of slider7_val as a double


% --- Executes during object creation, after setting all properties.
function slider7_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function slider8_val_Callback(hObject, eventdata, handles)
global C;
C(8)=str2num(get(hObject,'string'));
minn=get(handles.C8_var,'min');
maxx=get(handles.C8_var,'max');
if(C(8)<minn || C(8)>maxx)
    C(8)=get(handles.C8_var,'values');
    set(hObject,'string',num2str(0));
else
    set(handles.slider8_var,'value',C(8));
end
% hObject    handle to slider8_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider8_val as text
%        str2double(get(hObject,'String')) returns contents of slider8_val as a double


% --- Executes during object creation, after setting all properties.
function slider8_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider11_Callback(hObject, eventdata, handles)
global C;
C(11)=get(hObject,'value');
set(handles.slider11_val,'string',num2str(C(11)));
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider12_Callback(hObject, eventdata, handles)
global C;
C(12)=get(hObject,'value');
set(handles.slider12_val,'string',num2str(C(12)));
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function slider9_val_Callback(hObject, eventdata, handles)
% hObject    handle to slider9_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider9_val as text
%        str2double(get(hObject,'String')) returns contents of slider9_val as a double


% --- Executes during object creation, after setting all properties.
function slider9_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function slider10_val_Callback(hObject, eventdata, handles)
% hObject    handle to slider10_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of slider10_val as text
%        str2double(get(hObject,'String')) returns contents of slider10_val as a double


% --- Executes during object creation, after setting all properties.
function slider10_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
