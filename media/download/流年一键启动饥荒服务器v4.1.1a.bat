@ECHO OFF&setlocal enabledelayedexpansion&cls
set  "licencesui1=*************************************************************************
set  "licencesui2=* ����һ���������ķ�����   OneKeyVersion:v4.1.1     date: 2016��9��23�� *
set  "licencesui3=* ----------------------------------------------------------------------*
set  "licencesui4=* �������䣨QQȺ��497398445������Ȩ���С�                               *
set  "licencesui5=* ----------------------------------------------------------------------*
set  "licencesui6=* LiuNianLiShang Copyright (C) 2015 - All Rights Reserved               *
set  "licencesui7=*************************************************************************
set  "licencesui8=* Author: LiuNianLiShang                                                *
set  "licencesui9=*************************************************************************
set "licencesui10=*     Revision history:                         location                *
set "licencesui11=*       2016-9-23: v4.1.1 �޸���һ��ʹ�ò������Ҳ����ļ�bug             *
set "licencesui12=*                                                                       *
set "licencesui13=*************************************************************************
set  "ui1=               ��������������������������������������������"
set  "ui2=               ��������������������������������������������"
set  "ui3=               �����������������������������"
set  "ui4=               �������ӭ������ʹ�����á���"
set  "ui5=               �����������������������������"
set  "ui6=               ��������������������������������������������"
set  "ui7=               ��������������������������������������������"
set  "ui8=                        �m �� �� .o�� �m  �m.. ��"
set  "ui9=                        �m���m ��  �� .�m �mo�y�z�|�}"
set "ui10=                        �� �� /��\/��\ �m �� �m�m �� �m"
set "ui11=                        �|�}�~�����������~�}�|�z�y���m"
rem call :openPort %1
rem -----------------------���ϴ�������Ķ���������ܵ���δ֪���󣬺���Ը�-------------------------------
rem ����������������������������������һ�������������������򩤩�����������������������������������
rem     ���ڵİ汾���Ƽ��������������ѡ������Ѿ���ֲ��LiuNianOneKey.ini���棬�����ɽű��Զ�
rem     ���ɺ�ά�������ٲ�������ļ��ʣ��������ø��Ӽ�
set     "dstdir=D:\Program Files (x86)\Steam\steamapps\common\Don't Starve Together\bin\"
		rem ����˵�������ü��Ŀͻ���·��
		rem 1�����ü��Ŀͻ���(DST)Ŀ¼���������Է�б��\��β
set     "select_clustername_or_not=false"
		rem ����˵����
		rem 1��true��ʾÿ�γ���ʼ���е�ʱ���Զ���ʾѡ��浵��
		rem 2��false��ʾ�رմ浵��ѡ���ܣ�ʹ��clustername����ָ���Ĵ浵��
set     "clustername=LiuNianOneKey"
		rem ����˵����
		rem 1������Ĭ�ϵĴ浵��
set     "ÿ�ο���ѡ��������ʹ�û����ѻ�ʹ��=false"
		rem ����˵����
		rem 1��true��ʾÿ�γ���ʼ���е�ʱ���Զ���ʾѡ���������Ǿ�����
		rem 2��falseʹ��Ĭ�ϵ�����
set     "consolemod=true"
		rem ����˵��������̨����
		rem 1��true ���ýű��Ŀ���̨����
		rem 2��false �رսű��Ŀ���̨����
set     "advancedconsolemod=true"
		rem ����˵�����߼�����̨����
		rem 1��true ���ýű��ĸ߼�����̨����
		rem 2��false �رսű��ĸ߼�����̨����
set     "customdocumentmod=false"
		rem ����˵����
		rem 1��true��ʾ�����û��Զ����ҵ��ĵ�\Klei\��·��
		rem 2��false�ر��û��Զ����ҵ��ĵ�·��
		rem 3�����棡��һ������벻Ҫ���ã�����һ���Ҳ���·��
set     "customdocument=C:\Users\%USERNAME%\Documents\Klei\"
		rem ����˵����
		rem 1��Klei·��ʾ��C:\Users\%USERNAME%\Documents\Klei\
		rem 2��·�������Է�б��\��β
set     "LiuNianOneKeyVersion=v4.1.1"
		rem ����˵������ʽ��
		rem ����汾�ţ�������ģ��������Ը�����
rem ����������������������������������������������������������������������������������������������
rem -----------------------���´�������Ķ���������ܵ���δ֪���󣬺���Ը�-------------------------------
set SteamAppId=322330
set SteamGameId=322330
set "OneKeyVersion=%LiuNianOneKeyVersion%"         rem ����һ���汾��
set "OverworldTitle=�{��ߨT��һ��������Overworld"     rem �������細����
set "CavesTitle=�{��ߨT��һ��������Caves"             rem �������細����
set "masterarchive=Master"                         rem ������浵��
set "cavesarchive=Caves"                           rem ��������浵��
set "consolecmd=c_save{(}{)}{enter}{enter}"        rem ����̨��������ȫ�ֱ���
set "consoledata=4722"                             rem ��Ʒ�����б���ʼλ��
set "convert=true"                                 rem modת���־����
set "xind=false"                                   rem �ػ����̱�־����
set "oldversion=false"                             rem �ɰ汾��ʶ����
set "nowpath=%0"                                   rem ��ǰ·��
set "folder=LiuNianLiShang"                        rem ��������ļ��е�����
set "autoxind=false"                               rem �Զ������ػ����̱�־����
set "isclient="                                    rem �Ƿ���ʹ�õĿͻ����Դ��ķ����
set "playernum=1"                                  rem ����̨��ǰ��ұ��
set "cmdyorn=����"                                 rem ����̨ˢ�Ķ������ɵ�λ�ã�Ĭ��ˢ�ڵ��ϣ����Ըĳ�ˢ�ڱ���
set "choice_console=����"                          rem ����������ڵ��ϻ��ǵ���\
set "log_dir=%~dp0LiuNianOneKeyLog.txt"           rem ����һ��������־
echo,[%date% %time%]:----------------LiuNianOneKey Log File��version:%LiuNianOneKeyVersion%--------------->"%log_dir%"
echo,[%date% %time%]:-----�������bug�뽫����־�ļ����͵�����qqȺ��497398445���з���----->>"%log_dir%"

call :write_log -----------------------����һ��������ʼ�����------------------------
rem ��־����ǰʱ�䣺%date% %time:~0,-6%
if "%~n0" == "����һ���������ķ�����%OneKeyVersion%" (
    call :write_log �����״����С���
    call :miswt
    call :write_log �������ڴ�С����
    rem --------------�������ڴ�С--------------
    mode con cols=80 
    mode con cp select=936 >nul
    call :write_log ���ô��ڱ��⡭��
    rem --------------���ô��ڱ���--------------
    set "titlestr=����һ���������ķ������û�������Ȩ����"
    title !titlestr!
    call :licences
) else (
    if "%1" neq "h" (
        call :write_log ��ǰ�����״����У��Զ������������Ӧ���ȼ�
    	cls
    	rem echo, start /b /REALTIME "����һ���������ķ����� REALTIME" %0 h
    	start /b /REALTIME "����һ���������ķ����� REALTIME" %0 h
    	rem pause
    	call :write_log �˳���ǰ����v1����
    	exit
    )

)
%~d0
cd "%~dp0"
for /f "delims=" %%i in ("%cd%") do set "folder=%%~i"
rem --------------�������ڴ�С--------------
call :write_log �������ڴ�С����
mode con cols=80 
mode con cp select=936 >nul
rem --------------���ô��ڱ���--------------
call :write_log ���ô��ڱ��⡭��
set "titlestr=����һ���������ķ����� By LiuNianLiShang %OneKeyVersion% ������Դ��� QQȺ497398445"
title %titlestr%
rem --------------����������ɫ--------------
call :write_log ����������ɫ����
color 9f
rem echo Missing someone,i become so sad.I lost myself while lost my white cat.
rem echo Whoever tacked away someone I care,please tack good care of her.
rem echo You don't known how i wanner play this game with you.
rem echo ���������������������������������ڼ������á�����������������������������������
rem echo,                   loading ����������������
rem echo ������������������������������������������������������������������������������
call :write_log ����������ݡ���
set  "initui1=            ******       ******        "
set  "initui2=          **********   **********      "
set  "initui3=        ************* *************    "
set  "initui4=       *****************************   "
set  "initui5=       *****************************   "
set  "initui6=       *****************************   "
set  "initui7=        ***************************    ��������������������������������    "
set  "initui8=          ***********************            ��ӭʹ�á�����һ����     "
set  "initui9=            *******************            LiuNianLiShang %OneKeyVersion%   "
set "initui10=              ***************               ����QQȺ��497398445     "
set "initui11=                ***********              ʹ�ù����г���BUG��ӭ���� "
set "initui12=                  *******                   ����ף����Ϸ���^_^    "
set "initui13=                    ***                ��������������������������������  "
set "initui14=                     *                                               "
set "initui15=                              .^&______~*@*~______^&.           *      "
set "initui16=                            ^"w/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\w^"        ***   "
set "initui17=                              ^`Y^"^"Y^"^"Y^"^"^"^"^"Y^"^"Y^"^"Y'         *****    "
set "initui18=           __/M__          p-p_^|__^|__^|_____^|__^|__^|_q-q      **Y**    "
set "initui19=      ____^|O_^^_O^|_________[EEEEM==M==MM===MM==M==MEEEE]-__....^|....  "
set "initui20s=                         ��������������������������������"
set "initui21s=                                 ���ڼ������á���"
set "initui22s=                         �������������������������������� "
set "initui21=         ^| "
set "initui22=        _^|__--/__  "
set "initui23=       ^|___ 02�� \[OOOOO=======II"
set "initui24=   .-----\^|______/ ____  "
set "initui25=   ^|____________________\   "
set "initui26=    \�ѡ�������� / "
set "initui27=      ~~~~~~~~~~~~~~~~   "
set "initui="
rem --------------��ֹ�������Զ����ɲ�ͬ�汾��һ��-----------------
call :write_log ��ֹ�������Զ����ɲ�ͬ�汾��һ������
if "%ÿ�ο���ѡ��������ʹ�û����ѻ�ʹ��%"=="true" (
    call :write_log ѡ���������͡���
	call :displayui
	echo ��������������������������������ѡ���������ͩ���������������������������������
	echo,            1-------Steam��������
	echo,            2-------����������������������ѡ�������
	rem echo,            ע���������ÿ�ζ������˶Ի�������ȥһ����������ص�
	echo ������������������������������������������������������������������������������
	set /p runningmod=�������������ͣ�
	echo,����Ӧ�����ã����Ժ򡭡�
	
	if "!runningmod!"=="1" (
	     call :write_log �û�ѡ����Steam������ʽ
		 echo,@echo off>LiuNianOneKey.bat
		 echo,ren !nowpath! "����һ���������ķ�����%OneKeyVersion%a.bat">>LiuNianOneKey.bat
		 rem echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
		 echo,start "%titlestr%" /b "%~dp0����һ���������ķ�����%OneKeyVersion%a.bat">>LiuNianOneKey.bat
		 echo,exit>>LiuNianOneKey.bat
		 call :write_log �˳���ǰ����
		 
		 start /b "����һ����������" LiuNianOneKey.bat
	)
	if "!runningmod!"=="2" (
	     call :write_log �û�ѡ���˾�����������ʽ
		 echo,@echo off>LiuNianOneKey.bat
		 echo,ren !nowpath! "����һ���������ķ�����%OneKeyVersion%b.bat">>LiuNianOneKey.bat
		 rem echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
		 echo,start "%titlestr%" /b "%~dp0����һ���������ķ�����%OneKeyVersion%b.bat">>LiuNianOneKey.bat
		 echo,exit>>LiuNianOneKey.bat
		 call :write_log �˳���ǰ����
		 start /b "����һ����������" LiuNianOneKey.bat
	)
	
	exit
) else (
    if "%~n0" == "����һ���������ķ�����%OneKeyVersion%" (
        call :write_log ѡ���������͡���
    	call :displayui
    	echo ��������������������������������ѡ���������ͩ���������������������������������
    	echo,            1-------Steam��������
    	echo,            2-------����������������������ѡ�������
    	rem echo,            ע���������ÿ�ζ������˶Ի�������ȥһ����������ص�
    	echo ������������������������������������������������������������������������������
    	set /p runningmod=�������������ͣ�
    	echo,����Ӧ�����ã����Ժ򡭡�
    	if "!runningmod!"=="1" (
    	     call :write_log �û�ѡ����Steam������ʽ
    		 echo,@echo off>LiuNianOneKey.bat
    		 echo,ren !nowpath! "����һ���������ķ�����%OneKeyVersion%a.bat">>LiuNianOneKey.bat
    		 rem echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
    		 echo,start "%titlestr%" /b "%~dp0����һ���������ķ�����%OneKeyVersion%a.bat">>LiuNianOneKey.bat
    		 echo,exit>>LiuNianOneKey.bat
    		 call :write_log �˳���ǰ����
    		 start /b "����һ����������" LiuNianOneKey.bat
    	)
    	if "!runningmod!"=="2" (
    	     call :write_log �û�ѡ���˾�����������ʽ
    		 echo,@echo off>LiuNianOneKey.bat
    		 echo,ren !nowpath! "����һ���������ķ�����%OneKeyVersion%b.bat">>LiuNianOneKey.bat
    		 rem echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
    		 echo,start "%titlestr%" /b "%~dp0����һ���������ķ�����%OneKeyVersion%b.bat">>LiuNianOneKey.bat
    		 echo,exit>>LiuNianOneKey.bat
    		 call :write_log �˳���ǰ����
    		 start /b "����һ����������" LiuNianOneKey.bat
    	)
    	
    	exit
    )
)

if "%~n0" == "����һ���������ķ�����%OneKeyVersion%a" (
    call :write_log ��ǰ����ģʽ��Steam������ʽ
	set     "runningmod=steam"
) else (
	if "%~n0" == "����һ���������ķ�����%OneKeyVersion%b" (
	    call :write_log ��ǰ����ģʽ�Ǿ�����������ʽ
		set     "runningmod=offline"
	) else (
	    call :write_log ��⵽����һ�����ֱ����ģ��Զ��޸��С���
		echo,�����޸�һ������
		echo,@echo off>LiuNianOneKey.bat
		echo,ren %0 ����һ���������ķ�����%OneKeyVersion%.bat>>LiuNianOneKey.bat
		echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
        echo,exit>>LiuNianOneKey.bat
        start /b /w "����һ����������" LiuNianOneKey.bat
        start "%titlestr%" /b "%~dp0����һ���������ķ�����%OneKeyVersion%.bat"
        rem cls
        color 07
        mode con cols=80
        mode con cp select=936 >nul
        call :write_log �˳���ǰ����
		exit
	)
)
for /l %%a in (2,1,23) do (
    call :write_log ����������ö������桭��
	cls
	set "uid="
	for /l %%a in (1,1,11) do (
		set "uid=%%ui%%a%%"
		call echo !uid!
	)
	echo �����������������������������������ڼ������é���������������������������������
	echo,
	echo,
	for /l %%f in (15,1,27) do (
		set "initui=%%initui%%f%%"
		if %%f gtr 20 (
			for /l %%k in (1,1,%%a) do (
				set /p=* <nul
			)
		)
		call echo,!!initui!!
	)
	rem set /p a=">==============================================================================="<nul
	call :delay 10 >nul
)
rem --------------���䲻ͬ��·��---------------
set "pth=dontstarve_dedicated_server_nullrenderer.exe"
if exist "%~dp0%pth%" (
    call :write_log һ�������õ�binĿ¼���Զ����е��ϼ�Ŀ¼���Զ����С���
    xcopy /y /i /c %0 ..\>nul&cd ..&%~n0
    call :write_log ������ǰ����
    exit
) 

rem ----------------����Ƿ��ǿͻ����Դ��ķ����-------------------
set "pth=bin\dontstarve_steam.exe"
if exist "%~dp0%pth%" (
    call :write_log ��ǰʹ�õ��ǿͻ����Դ��ķ����
	set "isclient=���ͻ��˰桿"
) else (
    call :write_log ��ǰʹ�õ���ר�÷����
)
:runnext
rem ---------------����汾����---------------
call :write_log ����汾����
if "%runningmod%"=="steam" ( set "rnmod=^(����steam������^)" ) else set "rnmod=^(����������������^)"
call :write_log "����汾����Ϊ��%rnmod%"
rem ---------------һ�����ڱ���---------------
set "titlestr=����һ���������ķ�����%rnmod% By LiuNianLiShang %OneKeyVersion% ������Դ��� QQȺ497398445"
title %titlestr%
call :write_log "����һ������Ϊ%titlestr%"
rem ---------------�汾�Ź���--------------
set sv=a
if "%runningmod%"=="steam" (
	SET "sv=a"
) else (
	SET "sv=b"
)
set "OneKeyVersion=%OneKeyVersion%%sv%"
rem --------------�Ҳ���������ʱ�����������Զ�ȫ������ģʽ------------
set "pth=bin\dontstarve_dedicated_server_nullrenderer.exe"
if not exist "%~dp0%pth%" (
    call :write_log �Ҳ��������������������Զ�ȫ������ģʽ����
	call :displayui
	goto patherr
)
rem -------�Զ������ҵ��ĵ�·�����ø���ϵͳĬ�ϵ�·��----------
rem set winOneKeyVersion=win7��8��10^=^=
rem set "Personal=C:\Users\%USERNAME%\Documents\Klei\"
rem ver|find /i "5.1" && set winOneKeyVersion=xp
rem if %winOneKeyVersion%==xp set "Personal=C:\Documents and Settings\%username%\My Documents\Klei\"
call :write_log �Զ������ҵ��ĵ�·�����ø���ϵͳĬ�ϵ�·����
set "hkeystr=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"
if exist "%~dp0LiuNianOneKey.ini" (
    call :read_One_Key_setting_ini
) else (
    if "%customdocumentmod%"=="true" (
    	set "Personal=%customdocument%"
    	call :save_One_Key_setting_ini
    ) else (
    	if "%runningmod%"=="steam" (
    		for /f "tokens=2*" %%a in ('reg query "%hkeystr%" /v Personal 2^>nul') do set "Personal=%%b\Klei\"
    		call :save_One_Key_setting_ini
    	) else (
    		if not exist "%~dp0LiuNianOneKey.ini" (
    			rem call :read_One_Key_setting_ini
    			set "str=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"
    			for /f "tokens=2*" %%a in ('reg query "%hkeystr%" /v Personal 2^>nul') do set "Personal=%%b\Klei\"
    			call :save_One_Key_setting_ini
    		) else (
    		    call :read_One_Key_setting_ini
    		)
    	)
    )
)
rem for /f "tokens=2*" %%a in ('reg query "%hkeystr%" /v Personal 2^>nul') do set "Personal=%%b\Klei\"
rem call :save_One_Key_setting_ini
call :write_log ����һ�������ҵ��ĵ�·������
set "testtitle=����һ�������ҵ��ĵ�·������"
if not exist "%Personal%" (
    call :write_log ·��"%Personal%"�����ڣ���֤�Ƿ�����Ϊ����û�����й����ĳ��򡭡�
	start /min "����һ�������ҵ��ĵ�·������" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe"
	set /p a=">=============================================================================="<nul
	for /l %%i in (1,1,80) do (
		set /p aa=<nul
	)
	
	for /l %%i in (1,1,80) do (
		set /p aa=^><nul
		call :delay 10 >nul
		call :delay 10 >nul
		call :delay 10 >nul
		call :delay 10 >nul
		call :delay 10 >nul
	)
	taskkill /f /im dontstarve_dedic* 1>nul 2>nul
	if not exist "!Personal!" (
	    call :write_log ��ǰ·�����Ϸ����������»�ȡ�����ҵ��ĵ�·������
	    echo,�������»�ȡ�����ҵ��ĵ�·������
		call :vbs_get_document_dir
		call :write_log �ҵ��ĵ�·����ȡ��ɣ�������֤��ȡ�����ҵ��ĵ�·���Ϸ��ԡ���
		echo,�ҵ��ĵ�·����ȡ��ɣ�������֤��ȡ�����ҵ��ĵ�·���Ϸ��ԡ���
		taskkill /f /im dontstarve_dedic* 1>nul 2>nul
		if not exist "!Personal!" (		
			start /min "����һ�������ҵ��ĵ�·������" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe"
			set /p a=">=============================================================================="<nul
			for /l %%i in (1,1,80) do (
				set /p aa=<nul
			)
			for /l %%i in (1,1,80) do (
				set /p aa=^><nul
				call :delay 10 >nul
				call :delay 10 >nul
				call :delay 10 >nul
				call :delay 10 >nul
				call :delay 10 >nul
			)
			echo !Personal!
			if not exist "!Personal!" (	
			    call :write_log �Զ���ȡ�ҵ��ĵ�·��ʧ��
    			echo �Զ���ȡ�ҵ��ĵ�·��ʧ��,��ʹ��һ�����������ֶ�ָ���ҵ��ĵ�·��
    			echo �����ڵ����Ĵ���ֱ��˫�����ű��������µ�·������
    			del LiuNianOneKey.ini >nul 2>nul
    			start "��������" "%~dp0" 1>nul 2>nul
    			pause>nul
    			call :write_log ������ǰ����
    			exit
    		) else (
    		    echo,������֤�ҵ��ĵ�·����ȡ��ȷ����
    		)
		)
	)
) else (
    call :write_log Ĭ���ҵ��ĵ�·����ȷ
	set /p a=">=============================================================================="<nul
	for /l %%i in (1,1,80) do (
		set /p aa=<nul
	)
	for /l %%i in (1,1,80) do (
		set /p aa=^><nul
		call :delay 1 >nul
	)
	if not exist "%~dp0LiuNianOneKey.ini" (
		call :save_One_Key_setting_ini
	)
)
if exist "LiuNianOneKey.bat" del LiuNianOneKey.bat >nul 2>nul
:allstart
rem --------------���������������ʶ����------------------
call :write_log ���������������ʶ��������
for /f "usebackq" %%i in (` dir "%Personal%DoNotStarveTogether\" /A:D /B 2^>nul`) do (
	if "%%i" NEQ "client_save" (
		if "%%i" NEQ "save" (
		    if "%%i" NEQ "save.old" (
			    if exist "%Personal%DoNotStarveTogether\%%i\runningflag.lnls" del "%Personal%DoNotStarveTogether\%%i\runningflag.lnls"
		    )
		)
	)
)

rem -----------�л��浵��--------------
if "%select_clustername_or_not%" neq "true" goto start
call :write_log �л��浵�ۡ���
:changecluster
call :displayui
set "clustername=LiuNianOneKey"
if not EXIST "%Personal%DoNotStarveTogether\" md "%Personal%DoNotStarveTogether\"
echo ����������������������������������ѡ��浵�۩���������������������������������
echo, һ��ѡ���ϵͳĬ�ϴ浵������ǵ�����Ļ�,�����ȡϵͳ�浵�������½�һ�����磡
echo, ������ͬ�浵�۵ķ���������ͬʱ���ڣ�������ʵ�ַ������࿪����Ҫ����ĳ���浵��
echo, �����ķ�����ֻ��Ҫ�����˵���17�л���Ҫ���÷������Ĵ浵�۾Ϳ��Զ����������
echo, �ġ��������ÿ�����ж������˶Ի�������ȥһ����������ص�
echo,               0----------------ɾ��ָ���浵��
set clusternum=0
set clustertmp=0
for /f "usebackq" %%i in (` dir "%Personal%DoNotStarveTogether\" /A:D /B 2^>nul`) do (
	if "%%i" NEQ "client_save" (
		if "%%i" NEQ "save" (
		    if "%%i" NEQ "save.old" (
		        if "%%i" NEQ "backup" (
        			set clustertmp=%%i
        			set /a clusternum=!clusternum!+1
        			if "!clustertmp:~0,8!"=="Cluster_" (
        				echo,               !clusternum!----------------[%%i]��ϵͳ�浵��,����ѡ��
        			) else (
        				echo,               !clusternum!----------------[%%i]
        			)
        		)
    		)
		)
	)
)
set /a clusternum=%clusternum%+1
echo,               %clusternum%----------------ʹ������һ��Ĭ�ϵĴ浵�� ���Ƽ�
set /a clusternum=%clusternum%+1
echo,               %clusternum%----------------���Ƹ��Ի��浵��
echo ������������������������������������������������������������������������������
set "usercluster=-1"
set /a "allcundang=%clusternum%-2"
set /p usercluster=���ҵ�%allcundang%���浵�ۣ������������:
set clustergl=0
if "%usercluster%"=="0" (
	set /p usercluster=������Ҫɾ���浵��ǰ��ı�ţ�
	for /f "usebackq" %%i in (`dir "%Personal%DoNotStarveTogether\" /A:D /B`) do (
		if "%%i" NEQ "client_save" (
			if "%%i" NEQ "save" (
			    if "%%i" NEQ "save.old" (
			        if "%%i" NEQ "backup" (
        				set /a clustergl=!clustergl!+1
        				if "!clustergl!"=="!usercluster!" (
        					 echo,����ɾ��%%i�浵�ۡ���
        					 set "clustername=%%i"
        					 set "OverworldTitle=�{��ߨT��һ��������Overworld �浵�ۡ�!clustername!��һ���汾��%OneKeyVersion%���������汾��%dstver%��"             rem �������細����
        					 set "CavesTitle=�{��ߨT��һ��������Caves �浵�ۡ�!clustername!��һ���汾��%OneKeyVersion%���������汾��%dstver%��"					 rem �������細����
        					 call :killserver>nul
        					 set "usercluster=-1"
        					 rd /s /q "!Personal!DoNotStarveTogether\%%i\"
        					 call :write_log "����ɾ��%%i�浵�ۡ���"
        					 goto changecluster
        				)
        				)
    			)
			)
		)
	)
)
if "%usercluster%"=="-1" goto changecluster
if "%usercluster%"=="%clusternum%" (
	 call :displayui
	 echo ����������������������������������ѡ��浵�۩���������������������������������
	 echo      1���浵�������в���������
	 echo      2���浵�������в��ܰ����ո�^"��^&�������ַ�
	 echo ������������������������������������������������������������������������������
	 set /p usercluster=�������Զ���浵�����ƣ�
	 set "clustername=!usercluster!"
	 if not exist "!Personal!DoNotStarveTogether\!clustername!" md "!Personal!DoNotStarveTogether\!clustername!" >nul
	 goto start
)
set clustergl=0
for /f "usebackq" %%i in (`dir "%Personal%DoNotStarveTogether\" /A:D /B`) do (
	if "%%i" NEQ "client_save" (
		if "%%i" NEQ "save" (
    		if "%%i" NEQ "save.old" (
    		    if "%%i" NEQ "backup" (
        			set /a clustergl=!clustergl!+1
        			call :write_log "����ʹ��%%i�浵�۴򿪷���������"
        			if "!clustergl!"=="!usercluster!" echo,����ʹ��%%i�浵�۴򿪷���������&set clustername=%%i&goto start
        		)
		    )
		)
	)
)
:start
call :DarkerCavesleveldataoverridesettings
call :DefaultCavesleveldataoverridesettings
call :defaultOverworldleveldataoverridesetting
rem if not exist "%dstdir%dontstarve_steam.exe" (
rem    call :vbs_get_dst_dir
rem )
call :save_One_Key_setting_ini
if exist "%Personal%DoNotStarveTogether\%clustername%\" (
	set /p=true<nul >"%Personal%DoNotStarveTogether\%clustername%\runningflag.lnls"
)
set "pth=%~dp0"
set "dstver=0"
if exist "!pth!version.txt" (
	for /f "usebackq delims= " %%a in ("!pth!version.txt") do set "dstver=%%a"
)
if exist "%~dp0version.txt" (
	if "%dstver%" NEQ "" (
		if "%dstver%" LEQ "164609" (
			rem echo,��ǰ�������汾�ţ� %dstver%
			set "oldversion=true"
		) else (
			rem echo,��ǰ�������汾�ţ� %dstver%
			set "oldversion=false"
		)
	) else (
			rem set "dstver=999999"
			set "oldversion=false"
	)
) else (
	rem echo,δ����OneKeyVersion.txt,Ĭ��Ϊ���°�
	set "dstver=�汾��δ֪"
	set "oldversion=false"
)
call :write_log "�������汾�ţ�%dstver%"
rem if "%clustername%"=="" set "clustername=LiuNianOneKey"

rem -------------����Ƿ��з�������������-------------------
call :write_log ����Ƿ��з������������С���
set "OverworldTitle=�{��ߨT��һ��������Overworld �浵�ۡ�%clustername%��һ���汾��%OneKeyVersion%���������汾��%dstver%��"   				    rem �������細����
set "CavesTitle=�{��ߨT��һ��������Caves �浵�ۡ�%clustername%��һ���汾��%OneKeyVersion%���������汾��%dstver%��"					            rem �������細����
set "existserver=0"
tasklist /fi "windowtitle eq %OverworldTitle%"|find "dontstarve_dedicated_serv">nul&&set "existserver=1"
if "%existserver%"=="1" (
	call :displayui
	goto exiterr
)
rem ------------------���浵������--------------------
call :write_log ���浵�����ԡ���
set /a op=100
set modFlag=0
set GLFlag=1
%~d0
cd "%~dp0"
cd bin >nul

if "%oldversion%"=="true" (
	if not exist "!Personal!" (md "!Personal!")
	if not exist "!Personal!DoNotStarveTogether\%clustername%\" (
		 md "%Personal%DoNotStarveTogether\%clustername%\"
		 goto init
	)
	if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\" (
		 md "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\"
		 goto init
	)
	if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\settings.ini" goto init
	if not exist "%Personal%DoNotStarveTogether" (
		md "%Personal%DoNotStarveTogether"
		GOTO init
	)
) else (
    if "%dstver%" geq "173098" (
    	if not exist "%Personal%" (md "%Personal%")
    	if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%" goto init
    	if not exist "%Personal%DoNotStarveTogether\%clustername%\cluster.ini" goto init
    	if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server.ini" goto init
    	if not exist "%Personal%DoNotStarveTogether" goto init
    ) else (
    	if not exist "%Personal%" (md "%Personal%")
    	if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%" goto init
    	if not exist "%Personal%DoNotStarveTogether\%clustername%\cluster.ini" goto init
    	if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server.ini" goto init
    	if not exist "%Personal%DoNotStarveTogether" goto init
    )
)
set /a GLFlag+=3
rem ---------------��������������ʱ��UI-----------------
call :write_log ��������������ʱ��UI����
:ui
%~d0
cd "%~dp0"
cd bin >nul
set /a op=100
rem ----------�Զ�����modsetting.lua�ȷ����������ļ�------------------
call :write_log �Զ�����modsetting.lua�ȷ����������ļ�����
if not exist "%~dp0mods\modsettings.lua" (
	echo ��������modsettings.lua����
	call :modsettingsregen
)
set "modpth1=%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\modoverrides.lua"
set "modpth2=%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\modoverrides.lua"
if not EXIST "%modpth1%" echo,��������modoverrides.lua���� &call :modoverrides
if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" (
	if not EXIST "%modpth2%" echo,��������modoverrindes.lua���� &call :modoverrides
)
if "%dstver%" lss "173098" (
    if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\worldgenoverride.lua" (
    	echo,�������� worldgenoverride.lua����
    	call :worldgenoverride 120 >nul
    )
)
rem ----------------���ɿͻ��˰汾��-----------------
set "pth=%~dp0"
set "clientver="
call :write_log ���ɿͻ��˰汾�š���
if exist "!pth!version.txt" (
    if not exist "%dstdir%dontstarve_steam.exe" (
        rem set "dstdir=δ�ҵ����Ŀͻ��ˣ��밴20�������ÿͻ���·��"
        set "clientver=��δ�ڵ�ǰĿ¼���ҵ����Ŀͻ��˳�����ȷ��·���Ƿ����󣬻��߰�20��������·����"
    ) else (
        if exist "%dstdir:~0,-4%version.txt" (
    	    for /f "usebackq delims= " %%a in ("%dstdir:~0,-4%version.txt") do set "clientver=��ver%%a��"
    	    rem for /f "usebackq delims= " %%a in ("!pth!version.txt") do set "cmpdstver=%%a"
    	) else (
    	    set "clientver=���汾δ֪��"
    	) 
    )
) 
call :write_log "�ͻ��˰汾�ţ�%clientver%"
call :displayui

rem -------------�Զ���������--------------

if not exist "%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt" (
    call :write_log �Զ��������ơ���
	if exist "%Personal%DoNotStarveTogether\cluster_token.txt" (
	    call :write_log "��%Personal%DoNotStarveTogether\cluster_token.txt���������ļ�����"
		COPY /y "%Personal%DoNotStarveTogether\cluster_token.txt" "%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt" 1>nul 2>nul
	) else (
	    call :write_log "ʹ������Ԥ�õ����ơ���"
		set/p=xyXThBqSds+ku7ObcWRS1gbH/GlXdtKZ<nul>"%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt"
		call :codeconvert
		cscript "%~dp0codeconvert.vbs" "%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt" 1 1>nul 2>nul
		del "%~dp0codeconvert.vbs"
	)
)
if %GLFlag%==6 goto s6
if %GLFlag%==7 goto exiterr
echo �����������������������������������÷��������Ժ򡭡���������������������������
echo                          Made By LiuNianLiShang %OneKeyVersion%
echo                          ������Դ��� QQȺ497398445
echo                         ���õ�mod�����ʹ����ʱ������
echo            ������ֻ���ߵ�������λ�ø�����ͣ�����룬������λ��ͣ��������
echo            �״�ʹ����Ҫ���з��������ã�����Ҳ��Ҫʮ������ʱ�䣬�����ĵȴ�
echo ������������������������������������������������������������������������������
if %GLFlag%==5 goto s5
echo ������������������������������������»��������ͣ�����멤��������������������
if %GLFlag%==1 goto s1
if %GLFlag%==2 goto s2
if %GLFlag%==3 goto s3
if %GLFlag%==4 goto s4
if %GLFlag%==9 goto s2
:s1
rem -------������Ԥ����---------------
call :write_log ������Ԥ���á���
if "%oldversion%" NEQ "true" (
	if "%runningmod%"=="steam" (
		start /min "��������Ԥ���á���" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %masterarchive% -console
	) else (
		start /min "��������Ԥ���á���" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %masterarchive% -console -offline
	)
	if "%runningmod%"=="steam" (
		if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" start /min "��������Ԥ���á���" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %cavesarchive% -console
	) else (
		if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" start /min "��������Ԥ���á���" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %cavesarchive% -console -offline
	)
) else (
    start /min "%OverworldTitle%" /d "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -conf_dir "DoNotStarveTogether\%clustername%\%masterarchive%" -console -offline -port !port!
    if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" (
    	start /min "%CavesTitle%" /d "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -conf_dir "DoNotStarveTogether\%clustername%\%cavesarchive%" -console -offline -port !port!
    )
)
rem ---------------�������������Ч��-----------------
call :write_log �������������Ч������
set /a GLFlag+=1
:s2
set/p= -<nul
for /L %%i in (0 1 22) do set /p a=��<nul&call :delay 10>nul
set /a GLFlag+=1
goto ui
:s3
set/p= -<nul
for /L %%i in (0 1 22) do set /p a=��<nul
for /L %%i in (22 1 36) do set /p a=��<nul&call :delay 10>nul
taskkill /f /im dontstarve_dedic* 1>nul 2>nul
set /a GLFlag=5
goto ui
:s4
set/p= -<nul
for /L %%i in (0 1 37) do set /p a=��<nul
set /a GLFlag=5
goto ui
:s5
echo ������������������������������������������ɩ���������������������������������
set/p= -<nul
for /L %%i in (0 1 37) do set /p a=��<nul
echo.
echo ������������������������������������������������������������������������������
:ss
rem -------�ٴ�ȷ���Ƿ����modsetting.lua--------
call :write_log �ٴ�ȷ���Ƿ����modsetting.lua����
if not exist "%~dp0mods\modsettings.lua" echo,��������modsettings.lua���� &call :modsettingsregen
rem -----------�Զ�ɨ����ö˿�----------------
rem --------�������ķ�������----------
call :startserver
if "%autoxind%"=="true" set "xind=true"
SET status=1
set modFlag=0
rem ------------------�������Ŀͻ��ˣ���ֹ�ظ������㷨��-----------------------
call :write_log �������Ŀͻ��ˣ���ֹ�ظ������㷨������
(TASKLIST|FIND /I "dontstarve_steam"||SET status=0) 2>nul 1>nul
IF %status% EQU 0 (
	if exist "%dstdir%dontstarve_steam.exe" start "DST" /d "%dstdir%" "%dstdir%dontstarve_steam.exe"
)
rem echo                      �������Ѿ���С�������������ڼ����ر�
set /a GLFlag=6
goto ui
call :write_log "�������細�������{��ߨT��һ��������Overworld �浵�ۡ�%clustername%��һ���汾��%OneKeyVersion%���������汾��%dstver%��"
call :write_log "�������細�������{��ߨT��һ��������Caves �浵�ۡ�%clustername%��һ���汾��%OneKeyVersion%���������汾��%dstver%��"
set "OverworldTitle=�{��ߨT��һ��������Overworld �浵�ۡ�%clustername%��һ���汾��%OneKeyVersion%���������汾��%dstver%��"   rem �������細����
set "CavesTitle=�{��ߨT��һ��������Caves �浵�ۡ�%clustername%��һ���汾��%OneKeyVersion%���������汾��%dstver%��"					 rem �������細����
rem ---------------------���˵�UI---------------------
:s6
echo ����������������������������ִ����ϣ������㻹���ԩ���������������������������
echo    1------ǿ������������������ע�⣺�������������δ��Ӧ��رշ�����Ȼ��ѡ�ң�
echo    2------ǿ�ƹرշ�����                 ��������������������������������
echo    3------�˳���ǿ�ƹرշ�����               Made By LiuNianLiShang
echo    4------����̨�����˵�                     %OneKeyVersion%%rnmod%
echo    5------���÷��������õ�mods              ������Դ��� QQȺ497398445
echo    6------���´���modsettings.lua������  ��������������������������������
echo    7------ǿ��ɾ������     (ע�⣬ֻɾ��sessionĿ¼�����´������磩
echo    8------�ָ���ʼ״̬     (ע�⣬��ɾ��saveĿ¼�����ð���mod���á�����Ա==��
echo    9------�򿪷����������ļ������Ը��ķ���������������ȣ�ע�⣬��رշ�������
echo    10-----���ù���Ա�ļ�        11-----���������ļ�worldgenoverride.lua
echo    12-----���ݴ浵������        13-----�ӱ��ݻָ��浵������
echo    14-----ɾ��ָ����ŵı���    15-----ɾ��ĳ����֮ǰ�����б���
echo    16-----����cluster_token.txt 17-----�л��浵�ۣ��࿪��
echo    18-----���������������ػ�    19-----�ӿͻ��˸���mod�ļ�����������modsĿ¼
echo    20-----�����������Ŀͻ���    30-----�˳���ǿ�ƹر����м��ķ������Ϳͻ���
echo    D------���ҵ��ĵ�Ŀ¼      L------�򿪵�����־�ļ���Сд��l�򿪵���log
echo    0------�����������͸���      C------��ʼ��һ��
echo    E------�Զ���������������״̬����������������ʧ�ܵ�ԭ����޸����ݣ�
echo    ������·��:��%folder%\bin\(�������汾%dstver%%isclient%)��
echo    �ͻ���·��:��%dstdir%%clientver%��
echo    Klei·��:��%Personal%��

call :write_log "������·��:��%folder%\bin\(�������汾%dstver%%isclient%)��"
call :write_log "�ͻ���·��:��%dstdir%%clientver%��"
call :write_log "Klei·��:��%Personal%��"
rem if exist "%~dp0/dontstarve_steam.exe" set /p=���ͻ��˷�������<nul
echo ������������������������������������������������������������������������������
if "%xind%"=="true" call :serverxind
set /p op="----------����������룬���س�ȷ�ϣ�"
if "%op%"=="e" (
    call :errerany
    goto :ui
)
if "%op%"=="E" (
    call :errerany
    goto :ui
)
if "%op%"=="19" (
    call :write_log �ӿͻ��˸���mod�ļ�����������modsĿ¼����
    rem call :killserver
    call :aotucopymodfile
    goto :ui 
)
if "%op%"=="c" (
    call :write_log ��ʼ��һ������
    call :killserver
    del /q "%~dp0LiuNianOneKey.ini">nul 2>nul
    rem start /b "clear" %0
	echo,���ڳ�ʼ��һ������
	echo,@echo off>LiuNianOneKey.bat
	echo,ren %0 ����һ���������ķ�����%LiuNianOneKeyVersion%.bat>>LiuNianOneKey.bat
	echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
    echo,exit>>LiuNianOneKey.bat
    start /b /w "����һ����������" LiuNianOneKey.bat
    start "%titlestr%" /b "%~dp0����һ���������ķ�����%LiuNianOneKeyVersion%.bat"
    call :write_log �˳���ǰ���̡���
    exit
) 
if "%op%"=="C" (
    call :write_log ��ʼ��һ������
    call :killserver
    del /q "%~dp0LiuNianOneKey.ini">nul 2>nul
    start /b "clear" %0
    echo,���ڳ�ʼ��һ������
	echo,@echo off>LiuNianOneKey.bat
	echo,ren %0 ����һ���������ķ�����%LiuNianOneKeyVersion%.bat>>LiuNianOneKey.bat
	echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
    echo,exit>>LiuNianOneKey.bat
    start /b /w "����һ����������" LiuNianOneKey.bat
    start "%titlestr%" /b "%~dp0����һ���������ķ�����%LiuNianOneKeyVersion%.bat"
    call :write_log �˳���ǰ���̡���
    exit
) 
if "%op%"=="18" (
    call :write_log ���������������ػ�
    set "xind=true"& goto ui
)
if "%op%"=="17" goto changecluster
if "%op%"=="16" (
    call :write_log ����cluster_token.txt����
	set taken=0
	set /p taken=������token�����س�ȷ��:
	if !taken!==0 (
		echo,����д��cluster_token.txt����
		call :write_log �û�û�������κ����ݣ�ʹ��Ԥ�������д�롭��
		rem ------�������ļ�д��ķ�����������д����ı�û�ж���Ļس�����-----
		set/p=xyXThBqSds+ku7ObcWRS1gbH/GlXdtKZ<nul>"%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt"
	) else (
	    call :write_log ʹ���û����������д�롭��
		echo,����д��cluster_token.txt����
		set/p=!taken!<nul>"%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt"
	)
	rem ��cluster_token.txt��ANSIת�����BOM��UTF-8
	call :codeconvert
	cscript "%~dp0codeconvert.vbs" "%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt" 1 1>nul 2>nul
	del "%~dp0codeconvert.vbs"
	call :write_log �������ɳɹ���
	echo,�������ɳɹ��������������&pause>nul
	goto ui
)
if "%op%"=="0" (
	call :myhelp & goto ui
)
if "%op%"=="4" (
    call :write_log ��������һ������̨�˵�����
	set "existserver=0"
	tasklist /fi "windowtitle eq %OverworldTitle%"|find "dontstarve_dedicated_serv">nul&&set "existserver=1"
	if "!existserver!"=="1" (
		if "%consolemod%"=="true" (
			 call :Consoleshurufatiaozheng1
			 call :Consoleshurufatiaozheng2
			 goto consolemenu
			 goto ui
		)
		echo ���������������ýű�����̨������ʹ�ã�
		pause
		goto ui
	) else (
	    call :write_log "δ��⵽�������е��ԡ�%clustername%��Ϊ�浵�۵ķ��������뿪������ʹ��һ������̨���ܡ���"
		echo,δ��⵽�������е��ԡ�%clustername%��Ϊ�浵�۵ķ��������뿪������ʹ��һ������̨���ܣ����������������&pause>nul&goto ui
	)
)

rem ----------�������ķ�������־�ļ�----------------
if "%op%"=="l" (
    call :write_log �������ĵ��·�������־�ļ�����
	start "log" notepad "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"
	start "log" notepad "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_chat_log.txt"
	goto ui
)
if "%op%"=="L" (
    call :write_log �������ĵ��Ϸ�������־�ļ�����
	start "log" notepad "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"
	start "log" notepad "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_chat_log.txt"
	goto ui
)
rem ---------------------�����ҵ��ĵ�Ŀ¼----------------------
if EXIST "%Personal%" (
    
	if "%op%"=="d" (
    	call :write_log �����ҵ��ĵ�Ŀ¼����
    	start "�ҵ��ĵ�Ŀ¼" "%Personal%" &goto ui
	) 
	if "%op%"=="D" (
	    call :write_log �����ҵ��ĵ�Ŀ¼����
	    start "�ҵ��ĵ�Ŀ¼" "%Personal%" &goto ui
	) 
) ELSE (
    call :write_log ���ҵ��ĵ�Ŀ¼������ȷ�����Ƿ���Ĺ��������ϵ��ҵ��ĵ�·������
	ECHO ���ҵ��ĵ�Ŀ¼������ȷ�����Ƿ���Ĺ��������ϵ��ҵ��ĵ�·��
	pause&goto ui
)
rem -------------------�������Ŀͻ���----------------
if "%op%"=="20" (
    call :write_log �������Ŀͻ��ˡ���
	SET status=1
	set modFlag=0
	taskkill /f /im dontstarve_s* 2>nul
	(TASKLIST|FIND /I "dontstarve_steam"||SET status=0) 2>nul 1>nul
	IF "%status%" EQU "0" (
		if exist "%dstdir%dontstarve_steam.exe" (
			start "DST" /d "%dstdir%" "%dstdir%dontstarve_steam.exe"
			call :write_log "DST�������������DST��ʱ��û��������������ִ�д˲�����������ת�������桭��"
			echo DST�������������DST��ʱ��û��������������ִ�д˲�����������ת�������桭��
			for /l %%i in (1,1,60) do (
    			call :delay 10 >nul
    			call :delay 10 >nul
		    )
		) else (
			if not exist "%dstdir%dontstarve_steam.exe" (
                call :vbs_get_dst_dir
            )
            call :save_One_Key_setting_ini
            if exist "!dstdir!dontstarve_steam.exe" (
			    start "DST" /d "!dstdir!" "!dstdir!dontstarve_steam.exe"
		    )
		)
	) else (
	    call :write_log "���Ŀͻ��ˣ�DST��������δ��ȫ��������ȴ�Ƭ�����ԣ�������ת�������桭��"
	    echo,���Ŀͻ��ˣ�DST��������δ��ȫ��������ȴ�Ƭ�����ԣ�������ת�������桭��
    	for /l %%i in (1,1,60) do (
			call :delay 10 >nul
			call :delay 10 >nul
	    )
	)
	goto ui
)
if "%op%"=="12" goto savebak&goto ui
if "%op%"=="14" goto delonebak&goto ui
if "%op%"=="15" goto delbak &goto ui
goto confirm
:ops
if "%op%"=="1" call :killserver&goto start >nul
if "%op%"=="2" call :killserver&set /a GLFlag=6>nul&goto ui
if "%op%"=="3" (
    call :write_log �˳���ǿ�ƹرշ���������
    call :killserver&exit >nul
)
if "%op%"=="30" (
    call :write_log �˳���ǿ�ƹر����м��ķ������Ϳͻ��ˡ���
    taskkill /f /im dontstarve* 2>nul&exit >nul
)
if "%op%"=="5" (
    call :killserver
    if EXIST "%~dp0LiuNianModSetTool.exe" (
        call :write_log ����LiuNianModSetTool.exe�ȴ��û�����mod�ļ�����
        echo,�ȴ��û�����mod�ļ�����
        start /w /d "%~dp0" LiuNianModSetTool.exe "�浵��" "%clustername%"
        goto ui
    )
    call :write_log ������LiuNianModSetTool.exe��ʹ������һ������mod�ļ�����
	set /a modFlag=0
	call :killserver
    %~d0
    cd "%~dp0"
	set "modpth=%~dp0%mods\modsettings.lua"
	set "modpth1=%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\modoverrides.lua"
	set "modpth2=%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\modoverrides.lua"
    set "modpth3=%~dp0%mods\dedicated_server_mods_setup.lua"
	if not EXIST "!modpth1!" call :modoverrides
	if exist "%Personal%DoNotStarveTogether\!clustername!\!cavesarchive!\" (
		if not EXIST "!modpth2!" call :modoverrides
	)
	%~d0
    cd "%~dp0"
	if not EXIST "!modpth!" echo,��������modsettings.lua����& call :modsettingsregen
	%~d0
    cd "%~dp0"
	if EXIST "!modpth!" echo,�ȴ��û�����modsettings.lua���� &start /w NOTEPAD "!modpth!"
	if EXIST "!modpth1!" echo,�ȴ��û����õ���modoverrides.lua���� &start /w NOTEPAD "!modpth1!"
	if EXIST "!modpth2!" echo,�ȴ��û����õ���modoverrides.lua���� &start /w NOTEPAD "!modpth2!"
	if EXIST "!modpth3!" echo,�ȴ��û�����dedicated_server_mods_setup.lua���� &start /w NOTEPAD "!modpth3!"
	goto ui
)
if "!op!"=="6" (
    call :killserver
    if EXIST "%~dp0LiuNianModSetTool.exe" (
        echo,�ȴ��û�����mod�ļ�����
        call :write_log ����LiuNianModSetTool.exe�ȴ��û�����mod�ļ�����
        start /w /d "%~dp0" LiuNianModSetTool.exe "�浵��" "%clustername%"
        goto ui
    )
	set "modpth=%~dp0%mods\modsettings.lua"
	set "modpth1=!Personal!DoNotStarveTogether\!clustername!\!masterarchive!\modoverrides.lua"
	set "modpth2=!Personal!DoNotStarveTogether\!clustername!\!cavesarchive!\modoverrides.lua"
    set "modpth3=!~dp0!mods\dedicated_server_mods_setup.lua"
    call :write_log ������LiuNianModSetTool.exe��ʹ������һ������mod�ļ�����
	echo,��������modsetting.lua����
	call :modsettingsregen
	echo,��������modoverrides.lua����
	call :modoverrides
	if EXIST "modpth!" echo,�ȴ��û�����modsettings.lua���� &start /w NOTEPAD "!modpth!"
	if EXIST "!modpth1!" echo,�ȴ��û����õ���modoverrides.lua���� & start /w NOTEPAD "!modpth1!"
	if EXIST "!modpth2!" echo,�ȴ��û����õ���modoverrides.lua���� & start /w NOTEPAD "!modpth2!"
	if EXIST "!modpth3!" echo,�ȴ��û�����dedicated_server_mods_setup.lua���� &start /w NOTEPAD "!modpth3!"
	goto ui
)
if "%op%"=="7" call :killserver&goto miniinit
if "%op%"=="8" call :killserver&goto init
if "%op%"=="9" call :killserver&goto settings
if "%op%"=="10" call :killserver&goto admin
if "%op%"=="11" (
    call :write_log �Զ��������������ļ�����
    call :worldgenoverride_for_refer
    if "%dstver%" geq "173098" (
        if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\leveldataoverride.lua" (
            call :Overworldleveldataoverride    
        )
        start /w "test" "notepad" "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\leveldataoverride.lua">nul
        if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" (
            if not exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\leveldataoverride.lua" (
                call :Cavesleveldataoverride
            ) 
            start /w "test" "notepad" "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\leveldataoverride.lua">nul  
        )
    )   else    (
        call :write_log �ɰ汾���ķ��������������������ļ�����
        CALL :killserver
        call :worldgenoverride 11
    )
)
if "%op%"=="13" call :killserver&goto selectbaktoreturn
goto ui
exit

:mods
    rem ----------------����modsettings.lua------------------------
    rem ----------------����------------------------
    %~d0
    cd "%~dp0"
    cd mods>nul
    call :write_log ����modsettings.lua����
    set "pth=mods\modsettings.lua"
    if %modFlag%==1 del "%~dp0%pth%">nul
    if exist "%~dp0%pth%" goto modover
    echo,��������modsettings.lua����
    echo,-- Use the "ForceEnableMod" function when developing a mod. This will cause the>"%~dp0%pth%"
    echo,-- game to load the mod every time no matter what, saving you the trouble of>>"%~dp0%pth%"
    echo,-- re-enabling it from the main menu.>>"%~dp0%pth%"
    echo,-->>"%~dp0%pth%"
    echo,-- Note! You shout NOT do this for normal mod loading. Please use the Mods menu>>"%~dp0%pth%"
    echo,-- from the main screen instead.>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    echo,-- ForceEnableMod("kioskmode_dst")>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    echo,-- Use "EnableModDebugPrint()" to show extra information during startup.>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    echo,-- EnableModDebugPrint()>>"%~dp0%pth%"
    echo,--    ��������������������������������������������������������>>"%~dp0%pth%"
    echo,--        1��������modsettings.luaĬ������>>"%~dp0%pth%"
    echo,--        2�����ĵ���������һ���������ķ�����%OneKeyVersion%����>>"%~dp0%pth%"
    echo,--        3���б�������:%date% %time:~0,-6%>>"%~dp0%pth%"
    echo,--        4��--Ϊע�ͣ���Ӱ��ʹ��>>"%~dp0%pth%"
    echo,--        5��Ĭ�ϲ������κ�mod>>"%~dp0%pth%"
    echo,--        6��ɾ����ǰ���ע��--��Ϊ���õ�ǰ�е�mod>>"%~dp0%pth%"
    echo,--        7����л�彣�����ӵ�modsettings.lua��������>>"%~dp0%pth%"
    echo,--        8��������Դ��� QQȺ497398445>>"%~dp0%pth%"
    echo,--    ��������������������������������������������������������>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    call :displayui
    call :confirmconvert
    if "%convert%"=="true" (
    	call :codeconvert
    	if exist "%~dp0codeconvert.vbs" (
    		rem ---------------��modinfo.lua����ת��---------------
    		for /f "usebackq tokens=1,3 delims=\=" %%i in (`findstr /s "^name" modinfo.lua`) do (
    			echo ���ڱ��ݲ�ת��%%i:%%j����
    			copy /y "%~dp0mods\%%i\modinfo.lua" "%~dp0mods\%%i\modinfo.bak" 1>nul 2>nul
    			cscript "%~dp0codeconvert.vbs" "%~dp0mods\%%i\modinfo.lua"  1>nul 2>nul
    		)
    	)
    )
    rem -----------��ȡmodinfo.lua������modsetting.lua�ļ�-----------
    for /f "usebackq tokens=1,3 delims=\=" %%i in (`findstr /s "^name" modinfo.lua`) do (
    	if not "%%i"=="current:C:" (
    		echo,--ForceEnableMod^("%%i"^)	--%%j>>"%~dp0%pth%"
    	)
    )
    rem -----------��ԭmodinfo.lua ------------------------
    if "%convert%"=="true" (
    	if exist "%~dp0codeconvert.vbs" (
    		for /f "usebackq tokens=1,3 delims=\=" %%i in (`findstr /s "^name" modinfo.lua`) do (
    			echo ���ڻָ�%%i:%%j����
    			copy /y "%~dp0mods\%%i\modinfo.bak" "%~dp0mods\%%i\modinfo.lua" 1>nul 2>nul
    			del "%~dp0mods\%%i\modinfo.bak" 1>nul 2>nul
    		)
    		del "%~dp0codeconvert.vbs"
    	)
    )
    echo,modsettings.lua���ɳɹ�
    rem ----------�ļ�ռ�ü��---------------
    call :delay 30 >nul
    :modover
    ren "%~dp0%pth%" "modsettings.lua" 1>nul 2>nul
    if %errorlevel% neq 0 (
    	echo modsettings.lua�ļ��Ѿ�����������ռ��
    	call :delay 30 >nul
    	goto modover
    	) else (
    	if "%1"=="f" (
    		goto :eof
    	) else (
    		echo �ȴ��û�����modsettings.lua
    		start /w "test" "notepad" "%~dp0%pth%">nul
    	)
    )
set /a GLFlag=6 >nul& goto ui

rem ----------------����modoverrides.lua---------------------
if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\modoverrides.lua" (
    if EXIST "%~dp0LiuNianModSetTool.exe" (
        echo,�ȴ��û�����mod�ļ�����
        start "GUI" /w /d "%~dp0" "%~dp0LiuNianModSetTool.exe" "�浵��" "%clustername%"
        goto :eof
    )
)

:modoverrides
    %~d0
    cd "%~dp0"
    cd mods>nul
    call :write_log modoverrides����
    if not exist "%Personal%DoNotStarveTogether\%clustername%\" md "%Personal%DoNotStarveTogether\%clustername%\"
    if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\" md "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\"

    set "modpth1=%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\modoverrides.lua"
    set "modpth2=%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\modoverrides.lua"
    set "modsettingui1=--    ��������������������������������������������������������"
    set "modsettingui2=--        1�����ĵ���������һ���������ķ�����%OneKeyVersion%����"
    set "modsettingui3=--        2���б�������:%date% %time:~0,-6%"
    set "modsettingui4=--        3��--Ϊע�ͣ���Ӱ��ʹ��"
    set "modsettingui5=--        4��Ĭ�ϲ������κ�mod"
    set "modsettingui6=--        5����enabled = false�ĳ�enabled = true��Ϊ����mod"
    set "modsettingui7=--        6��������Դ��� QQȺ497398445"
    set "modsettingui8=--    ��������������������������������������������������������"
    set "modsettingui="
    call :codeconvert
    set/p=<nul>"%modpth1%"
    if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" set/p=<nul>"%modpth2%"
    for /l %%a in (1,1,8) do (
    	set "modsettingui=%%modsettingui%%a%%"
    	call echo,!modsettingui!>>"%modpth1%"
    	if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" call echo,!modsettingui!>>"%modpth2%"
        set "ServerModSetuptmp=��"
    	set/p=!ServerModSetuptmp!<nul 2>nul
    )
    call :codeconvert
    if "%convert%"=="true" cscript "%~dp0codeconvert.vbs" "%modpth1%" 1 1>nul 2>nul
    if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" (
    	if "%convert%"=="true" cscript "%~dp0codeconvert.vbs" "%modpth2%" 1 1>nul 2>nul
    )
    echo return {>>"%modpth1%"
    if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" echo return {>>"%modpth2%"
    for /f "usebackq tokens=1,3 delims=\=" %%i in (`findstr /s "^name" modinfo.lua`) do (
    	if not "%%i"=="current:C:" (
    		if not "%%i"=="current:D:" (
    			if not "%%i"=="current:E:" (
    				if not "%%i"=="current:F:" (
    					if not "%%i"=="current:G:" (
    						echo,	^[^"%%i^"^] ^= ^{ enabled ^= false ^},--%%j>>"%modpth1%"
    						if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" 	echo,	^[^"%%i^"^] ^= ^{ enabled ^= false ^},--%%j>>"%modpth2%"
    					    set "ServerModSetuptmp=��"
            				set/p=!ServerModSetuptmp!<nul 2>nul
    					)
    				)
    			)
    		)
    	)
    )
    echo,}>>"%modpth1%"
    if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" echo,}>>"%modpth2%"
    if "%convert%"=="true" cscript "%~dp0codeconvert.vbs" "%modpth1%" 1>nul 2>nul
    if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" (
    	if "%convert%"=="true" cscript "%~dp0codeconvert.vbs" "%modpth2%" 1>nul 2>nul
    )
    del "%~dp0codeconvert.vbs"
    echo,��
goto :eof

rem ----------------�Ľ����modsettings.lua�����㷨---------------------
if not exist "%~dp0mods\modsettings.lua" (
    echo,>"%~dp0mods\modsettings.lua"
    goto :eof
    if EXIST "%~dp0LiuNianModSetTool.exe" (
        echo,�ȴ��û�����mod�ļ�����
        start "GUI" /w /d "%~dp0" "%~dp0LiuNianModSetTool.exe" "�浵��" "%clustername%"
        goto :eof
    )
)

:modsettingsregen
    %~d0
    cd "%~dp0"
    cd mods>nul
    call :write_log modsettingsregen����
    if "!runningmod!"=="steam" (
    call :displayui
    set /a mods_setuppthconfirmop=0
        echo �����������Ƿ�Ҫ��ÿ��������������ʱ���Զ��Ӵ��⹤���Զ�����mod�ļ�����������
        echo      ��棡��������mod��ķ�һ����ʱ�䣬����������Ҫ���µ�mod�ļ��Ƚ϶࣬
        echo,     �����������ֲ������ֻ����������steam�Ĵ������ʱ����ķ�������
        echo,     ��һֱ��������mod�Ľ��棬�����û��ʱ��ȴ�����ִ��һ���Ĳ���5
        echo,     ��رշ������Զ�����mod����Ȼ������������
        echo            1-----------ÿ�������������Զ��Ӵ��⹤������mod�ļ�
        echo            ����--------������mod�ļ�
        echo ������������������������������������������������������������������������������
        set /p mods_setuppthconfirmop=����������룺
    )
    call :displayui
    call :confirmconvert
    if "!mods_setuppthconfirmop!"=="1" (
        echo ��������modsettings.lua ��dedicated_server_mods_setup.lua����
    )   else    (
        echo ��������modsettings.lua����
    )
    set "mods_setuppth=%~dp0%mods\dedicated_server_mods_setup.lua"
    set "modpth=%~dp0%mods\modsettings.lua"
    set "modpth1=%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\modoverrides.lua"
    set "modpth2=%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\modoverrides.lua"
    set "modoverride1=-- Use the ^"ForceEnableMod^" function when developing a mod. This will cause the"
    set "modoverride2=-- game to load the mod every time no matter what, saving you the trouble of"
    set "modoverride3=-- re-enabling it from the main menu."
    set "modoverride4="
    set "modoverride5=-- Note You shout NOT do this for normal mod loading. Please use the Mods menu"
    set "modoverride6=-- from the main screen instead."
    set "modoverride7="
    set "modoverride8=-- ForceEnableMod^(^"kioskmode_dst^"^)"
    set "modoverride9="
    set "modoverride10="
    set "modoverride11=-- Use ^"EnableModDebugPrint^(^)^" to show extra information during startup."
    set "modoverride12="
    set "modoverride13=-- EnableModDebugPrint^(^)"
    set "modoverride14=--    ��������������������������������������������������������"
    set "modoverride15=--        1��������modsettings.luaĬ������"
    set "modoverride16=--        2�����ĵ���������һ���������ķ�����%OneKeyVersion%����"
    set "modoverride17=--        3���б�������:%date% %time:~0,-6%"
    set "modoverride18=--        4��--Ϊע�ͣ���Ӱ��ʹ��"
    set "modoverride19=--        5��Ĭ�ϲ������κ�mod"
    set "modoverride20=--        6��ɾ����ǰ���ע��--��Ϊ���õ�ǰ�е�mod"
    set "modoverride21=--        7����л�彣�����ӵ�modsettings.lua��������"
    set "modoverride22=--        8��������Դ��� QQȺ497398445"
    set "modoverride23=--    ��������������������������������������������������������"
    set "modoverrideb13=--    ��������������������������������������������������������"
    set "modoverrideb14=--        1�����ĵ���������һ���������ķ�����%OneKeyVersion%�Զ�����"
    set "modoverrideb15=--        2���б�������:%date% %time:~0,-6%"
    set "modoverrideb16=--        3��--Ϊע�ͣ���Ӱ��ʹ��,һ�������mod�����Զ����˵��Ǵ��⹤����mod"
    set "modoverrideb17=--        4��Ĭ����������mod���Զ�����"
    set "modoverrideb18=--        5����һ����ǰ�����ע��--��Ϊ���õ�ǰ��mod���Զ�����"
    set "modoverrideb19=--        6������Ҫ���µ�mod�Ƚ϶�����������ٲ�������ʱ���ٻ���steam�������ʱ��"
    set "modoverrideb20=--        7�����ķ�������һֱ��������mod�Ľ��棬���ʱ��Ҫ�����һֱ�ȴ�ֱ��������mod�������"
    set "modoverrideb21=--        8��Ҫ����ִ��һ������5�رշ������Զ�����mod����"
    set "modoverrideb22=--        9��������Դ��� QQȺ497398445"
    set "modoverrideb23=--    ��������������������������������������������������������"
    set "modoverride="
    set/p=<nul>"%modpth%"
    if "!mods_setuppthconfirmop!"=="1" (
        set/p=<nul>"%mods_setuppth%"
    )
    for /l %%a in (1,1,23) do (
    	set "modoverride=%%modoverride%%a%%"
    	call echo,!modoverride!>>"%modpth%"
    	if "!mods_setuppthconfirmop!"=="1" (
        	if %%a gtr 12 (
        	    set "modoverride=%%modoverrideb%%a%%"
        	    call echo,!modoverride!>>"%mods_setuppth%"
        	)
        )
        set "ServerModSetuptmp=��"
        set/p=!ServerModSetuptmp!<nul 2>nul
    )
    call :codeconvert

    if "%convert%"=="true" (
    	cscript "%~dp0codeconvert.vbs" "%modpth%" 1 1>nul 2>nul
    	if "!mods_setuppthconfirmop!"=="1" (
            cscript "%~dp0codeconvert.vbs" "%mods_setuppth%" 1 1>nul 2>nul
        )
    )
    rem --------------�Զ�����modoverride.lua�ļ����Ĳ���---------------
    for /f "usebackq tokens=1,3 delims=\=" %%i in (`findstr /s "^name" modinfo.lua`) do (
    	if not "%%i"=="current:C:" (
    		if not "%%i"=="current:D:" (
    			if not "%%i"=="current:E:" (
    				if not "%%i"=="current:F:" (
    					if not "%%i"=="current:G:" (
    						echo,--ForceEnableMod^("%%i"^)	--%%j>>"%modpth%"
    						if "!mods_setuppthconfirmop!"=="1" (
        						set "ServerModSetuptmp=%%i"
        						if "!ServerModSetuptmp:~0,9!"=="workshop-" (
            						echo,ServerModSetup^("!ServerModSetuptmp:~9!"^)	--%%j>>"%mods_setuppth%"
            					)
        					)
                            set "ServerModSetuptmp=��"
                            set/p=!ServerModSetuptmp!<nul 2>nul
    					)
    				)
    			)
    		)
    	)
    )
    if "%convert%"=="true"  (
        cscript "%~dp0codeconvert.vbs" "%modpth%" 1>nul 2>nul
        if "!mods_setuppthconfirmop!"=="1" (
            if "!convert!"=="true"  cscript "%~dp0codeconvert.vbs" "%mods_setuppth%" 1>nul 2>nul
        )
    )

    del "%~dp0codeconvert.vbs"
    echo,��
goto :eof

rem ----------------��������ʼ��----------------
:init
    %~d0>nul
    cd "%~dp0">nul
    cd mods>nul
    call :write_log ��������ʼ������
    set "pth=mods\modsettings.lua"
    if exist "%~dp0%pth%" del "%~dp0%pth%">nul
    if exist "%Personal%DoNotStarveTogether\%clustername%" rd /s /q "%Personal%DoNotStarveTogether\%clustername%"
    rem -------------��ʼ���������ò���ֵ---------------
    set "game_mode= endless"
    set "max_players= 6"
    set "cluster_intention= cooperative"
    set "server_password="
    set "pvp= false"
    set "pause_when_empty= true"
    set "shard_enable= true"
    set "default_server_name=��������"
    set "default_server_description=���������ɡ�����һ���������ķ��������������˽�������Ⱥ497398445"
    set cavesenabal=false
    call :displayui
    echo ������������������������������Ҫ�������������𣿩�����������������������������
    echo,        1--------���¶�Ѩ���Ӵ̼�����������Ϸ�ԣ����鿪��
    echo,        ����-----���������¶�Ѩ
    echo ������������������������������������������������������������������������������
    set /p cavesenabal=�����������:
    if "%oldversion%"=="true" (
    	if "%cavesenabal%" == "1" (
    		call :interactive_ui
    		ECHO,�������ɶ�Ѩ�����ļ�����
    		call :Caves_settings_ini 1 11000
    	) else (
    		call :interactive_ui
    	)
    	call :Overworld_settings_ini 1
    	set /a GLFlag=1
    ) else (
    	if "%cavesenabal%" == "1" ( 
    		echo,�������ɶ�Ѩ�����ļ�����
    		call :cave_server_ini 10998
    	)
    	call :cluster_ini
    	call :master_server_ini 10999
    	set /a GLFlag=1
    )
goto ui

rem -----------------����ɾ��--------------------
:miniinit
    call :write_log ����ɾ������
    if exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\save\session" rd /s /q "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\save\session"
    if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\save\session" rd /s /q "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\save\session"
    echo, �浵�Ѿ�ɾ�����,�����������������&pause>nul
    goto start
rem ------------------���ɷ��������òο��ļ����Ѿ����ڣ�--------------------
:settings
    set "pth=bin\���������òο��ļ�.txt"
    if exist "%~dp0%pth%" del "%~dp0%pth%">nul
    echo,���ڴ���ʾ���ĵ�
    echo,>"%~dp0%pth%"
    echo,�����������������������òο��ļ���������������>>"%~dp0%pth%"
    echo,  1������ݴ��ļ��޸ķ����������ļ�>>"%~dp0%pth%"
    echo,  2����һ�ε������ļ��ǵ��Ϸ����������ļ�>>"%~dp0%pth%"
    echo,  3���ڶ��ε������ļ��ǵ��·����������ļ�>>"%~dp0%pth%"
    echo,  4��ÿһ�ε������ļ����ܱ���ǰ���ļ��ڵ�>>"%~dp0%pth%"
    echo,  5���϶����µ�ǰ���ļ��Ϳ��Կ����������ļ�>>"%~dp0%pth%"
    echo,  6���޸��������ֿ���ֻ�޸ĵ��������ļ�>>"%~dp0%pth%"
    echo,  7���޸��������������������ͬʱ�޸������ļ�>>"%~dp0%pth%"
    echo,  8�������������ļ�������Ҫ�������ظ���>>"%~dp0%pth%"
    echo,  9������������ô����·���������ʧ��>>"%~dp0%pth%"
    echo,  10�������б��������8�ָ���ʼ״̬>>"%~dp0%pth%"
    echo,  11����л����ʹ�ã�������Դ���Ⱥ>>"%~dp0%pth%"
    echo,  12��  Made By LiuNianLiShang %OneKeyVersion% >>"%~dp0%pth%"
    echo,  13�� ������Դ��� QQȺ497398445>>"%~dp0%pth%"
    echo,����������������������������������������������>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    echo,[network]>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    echo,default_server_name ^= A unique server name>>"%~dp0%pth%"
    echo,^-^-������Ĭ����������>>"%~dp0%pth%"
    echo,default_server_description ^= A very nice server>>"%~dp0%pth%"
    echo,^-^-������Ĭ����������>>"%~dp0%pth%"
    echo,server_port ^= 10999>>"%~dp0%pth%"
    echo,^-^-�����Ƕ˿ڣ�Ĭ�ϼ��ɡ�>>"%~dp0%pth%"
    echo,server_password ^= password>>"%~dp0%pth%"
    echo,^-^-�������룬������Ҫ���õ����룬����û�����롣>>"%~dp0%pth%"
    echo,max_players ^= 1 .. 64>>"%~dp0%pth%"
    echo,^-^-����������1-64����һ����>>"%~dp0%pth%"
    echo,pvp ^= true ^| false>>"%~dp0%pth%
    echo,^-^-PvP��true��Ϊ������false��Ϊ�ر�>>"%~dp0%pth%"
    echo,game_mode ^= endless ^| survival ^| wilderness>>"%~dp0%pth%"
    echo,^-^-��Ϸģʽ���������������޾�������ͻ�Ұģʽ>>"%~dp0%pth%"
    echo,enable_snapshots ^= [true ^| false]>>"%~dp0%pth%"
    echo,^-^-�Ƿ�������ع���֮ǰ����Ŀ��գ�Ĭ�Ϲرա�>>"%~dp0%pth%"
    echo,enable_autosaver ^= [true ^| false]>>"%~dp0%pth%"
    echo,^-^-�Ƿ��Զ��浵���Է����⣬Ĭ�Ͽ�����>>"%~dp0%pth%"
    echo,tick_rate ^= 30 [ 10 ^| 15 ^| 30 ^| 60 ]>>"%~dp0%pth%"
    echo,^-^-֡ˢ���ʣ�Խ�߽���Խ�õ���Ϸ���飬��������CPU�Ϳ���ĸ������Լ�����ɡ�>>"%~dp0%pth%"
    echo,connection_timeout ^= 8000>>"%~dp0%pth%"
    echo,^-^-�ȴ�δ��Ӧ����������ӵ�ʱ�䣬�Ժ����ʱ��>>"%~dp0%pth%"
    echo,server_save_slot ^= 1 [1^-5��������]>>"%~dp0%pth%"
    echo,^-^-��ȡ���Ŵ浵�����ѡ��Ĵ浵��û�д浵���½�һ���浵��>>"%~dp0%pth%"
    echo,enable_vote_kick ^= true [true ^| false]>>"%~dp0%pth%"
    echo,^-^-�Ƿ�����ͶƱ���ˣ�Ĭ�Ͽ�����>>"%~dp0%pth%"
    echo,pause_when_empty ^= true [ true ^| false ]>>"%~dp0%pth%"
    echo,^-^-����û��ʱ�Ƿ��Զ���ͣ��>>"%~dp0%pth%"
    echo,cluster_intention ^= cooperative ^| social ^| competitive ^| madness>>"%~dp0%pth%"
    echo,^-^-��Ϸ��񣬷ֱ��� ���� ���� ���� ���>>"%~dp0%pth%"
    echo,offline_only_server ^= false [ true ^| false ]>>"%~dp0%pth%"
    echo,^-^-�Ƿ����������ģʽ��Ĭ�Ϲرա������û�����ƣ����鿪����>>"%~dp0%pth%"
    echo,[account]>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    echo,dedicated_offline_server ^= false [ true ^| false ]>>"%~dp0%pth%"
    echo,^-^-�Ƿ����������ģʽ��Ĭ�Ϲرա������û�����ƣ����鿪����>>"%~dp0%pth%"
    echo,^-^-ע����˵�����klei�Ѳ��Ƽ�ʹ�á�>>"%~dp0%pth%"
    echo,ʾ���ļ����ɳɹ�
    start "" notepad "%~dp0%pth%"
    if "%oldversion%" NEQ "true" (
    	echo �ȴ��û�����cluster.ini
    	if exist "%Personal%DoNotStarveTogether\%clustername%\cluster.ini" start /w "����" "%Personal%DoNotStarveTogether\%clustername%\cluster.ini"
    	echo �ȴ��û����õ��Ϸ����������ļ�
    	if exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server.ini" start /w "����" "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server.ini"
    	echo �ȴ��û����õ��·����������ļ�
    	if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server.ini" start /w "����" "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server.ini"
    ) else (
    	echo �ȴ��û����õ��Ϸ����������ļ�
    	if exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\settings.ini" start /w "����" "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\settings.ini"
    	echo �ȴ��û����õ��·����������ļ�
    	if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\settings.ini" start /w "����" "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\settings.ini"
    )
    del "%~dp0%pth%">nul
set /a GLFlag=6 >nul& goto ui

:exiterr
    call :write_log �Ѿ��м��ķ�����������У�
    echo ���������������������Ѿ��м��ķ�����������У�����ԩ�������������������������
    echo                1---------���������
    echo                ����------�˳�
    echo ������������������������������������������������������������������������������
    set "op=1"
    set /p op="----------����������룬���س�ȷ�ϣ�"
    if %op%==1 set /a GLFlag=6 >nul& goto ui
    call :write_log �˳���ǰ���̡���
exit

rem --------------ȷ��UI----------------------
:confirm
    call :write_log ���˵�ȷ��UI����
    set /a confirmop=0
    echo �����������������������������������棡����������������������������������������
    echo      ��ǰ�������ܻ��漰ǿ�ƹرշ�������ɾ���浵�ȿ��ܶ�ʧ���ݵĲ���
    echo      ע�⣬�������ر�ǰ����ȱ��棬����浵�ص������糿
    echo      ������ÿ���糿�Զ����棬��������ʱ��ʱ�������ڿ���̨����ָ�� c_save()
    echo    1----------------------�ǵģ���������Ҫ����
    echo    ����-------------------No No NO�����������ҵ������
    echo ������������������������������������������������������������������������������
    if "%consolemod%"=="trueeeerrr" (
    set /p=�ȴ��������浵�����Ժ󡭡� <nul
    set /p=<nul
    SET status=1
    (TASKLIST|FIND /I "dontstarve_dedicated_serv"||SET status=0) 2>nul 1>nul
    IF "%status%" EQU "1" set "consolecmd=c_save{(}{)}{enter}{enter}"&call :ConsoleOutput
    )
    set /p confirmop="----------����������룬���س�ȷ�ϣ�"
    if "%confirmop%"=="1" goto ops
set /a GLFlag=6 >nul& goto ui

rem -------------------����̨ȷ��UI------------------
:consoleconfirm
    call :write_log ����̨ȷ��UI����
    set /a confirmop=0
    echo �����������������������������������棡����������������������������������������
    echo      ��ǰ�������ܻ��漰ǿ�ƹرշ�������ɾ���浵�ȿ��ܶ�ʧ���ݵĲ���
    echo      ע�⣬�������ر�ǰ����ȱ��棬����浵�ص������糿
    echo      ������ÿ���糿�Զ����棬��������ʱ��ʱ�������ڿ���̨����ָ�� c_save()
    echo    1----------------------�ǵģ���������Ҫ����
    echo    ����-------------------No No NO�����������ҵ������
    echo ������������������������������������������������������������������������������
    set /p confirmop="----------����������룬���س�ȷ�ϣ�"
    if "%confirmop%"=="1" goto :eof
goto consolemenu

rem -------------------���ɹ���Ա�����ļ�---------------------
:admin
    call :write_log ���ɹ���Ա�����ļ�����
    if "%oldversion%" NEQ "true" (
    	start "log" notepad "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_chat_log.txt"
    ) else (
    	start "log" notepad "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\chat_log.txt"
    )
    if "%oldversion%" NEQ "true" (
    	set "adminpath=%Personal%DoNotStarveTogether\%clustername%\"
    ) else (
    	set "adminpath=%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\save\"
    )
    set "adminfilename=\adminlist.txt"
    if not exist "%adminpath%%adminfilename%" (
    echo,--���ļ�������һ������������%OneKeyVersion%�Զ�����>"%adminpath%%adminfilename%"
    echo,--�ڴ��ļ�����Ҫ�������Ա��ID>>"%adminpath%%adminfilename%"
    echo,--����Ա��ID����ͨ������Ϸ��˵һ�仰��Ȼ���ڷ���˲鿴>>"%adminpath%%adminfilename%"
    echo,--ÿ������ԱID���뵥��ռ��һ�У���Ҫ�ڱ��ļ�����λ�������κ���������>>"%adminpath%%adminfilename%"
    echo,--������������ܱ�����������������>>"%adminpath%%adminfilename%"
    echo,--�����ǹ���ԱIDʾ����>>"%adminpath%%adminfilename%"
    echo,KU_VNyTVYGs>>"%adminpath%%adminfilename%"
    echo,OU_76561197961083523>>"%adminpath%%adminfilename%"
    )
    echo �ȴ��û�����adminlist.txt
    start /w "" "notepad" "%adminpath%%adminfilename%"
set /a GLFlag=6 >nul& goto ui

rem -----------------һ���Ҳ����������ļ�������������-------------------
:patherr
    call :write_log ����ȫ�̲����������ϴ��ڵļ��ķ���ˣ�������Ҫ��ʮ�뵽�����ӵ�ʱ�䡭��
    set n=0
    echo ����������δ�ҵ��������ļ������ű�������õ����ķ�������Ŀ¼�Ż���Ч����������
    echo                       Made By LiuNianLiShang %OneKeyVersion%
    echo                       ������Դ��� QQȺ497398445
    echo ������������������������������������������������������������������������������
    echo,                                 �����ĵȴ�����
    echo ��������ȫ�̲����������ϴ��ڵļ��ķ���ˣ�������Ҫ��ʮ�뵽�����ӵ�ʱ�䡭������
    for /f "skip=1" %%a in ('wmic logicaldisk where "drivetype=3" get name') do call :mve %%a
    rem ------------���ȫ�������Ҳ������ķ������ļ����͵����������û�����------------------
    if "!n!"=="0" (
        call :write_log ȫ�������Ҳ������ķ������ļ��������������û����ء���
    	echo,        ��δ�����ĵ����ϲ��ҵ����ķ������ˣ������ؼ��ķ���˺�
    	echo,           �ѱ��ű����뼢�ķ�������Ŀ¼������ת����������
    	echo ������������������������������������������������������������������������������
    	start "" "http://pan.baidu.com/share/home?uk=4045161541&view=share#category/type=0"
    	call :myhelp
    	call :write_log �˳���ǰ���̡���
    	exit
    ) else (
        call :write_log "���������Ϲ��ҵ�!n!�����ķ���ˡ���"
    	echo,    ���������Ϲ��ҵ�!n!�����ķ����.
    )
    echo ������������������������������������������������������������������������������
    echo,
    rem --------------------�Զ��򿪲��ҵ��ļ��ķ�����Ŀ¼�͸��Ƶ���Ŀ¼�µ�һ��-------------------
    set serverdirnum=0
    set /p serverdirnum=  �Ѿ��ѱ��ű����Ƶ��������ķ�����Ŀ¼��������Ҫ��Ŀ¼ǰ��ı��:
    set n2=1
    call :displayui
    echo,������������������������������������������������������������������������������
    echo,              ����Ϊ������ѡ��ķ�����Ŀ¼�������ĵȴ�����
    echo,������������������������������������������������������������������������������
    for /f "skip=1" %%a in ('wmic logicaldisk where "drivetype=3" get name') do call :openserverdir %%a
    call :write_log �˳���ǰ���̡���
exit

:mve
    
    set "displaydstver=�汾��δ֪"
    for /r %1 %%b in (dontstarve*renderer.exe) do (
    	set "pth=%%~b"&set "pth=!pth:~,-48!"
    	set /a n+=1
    	if exist "!pth!version.txt" (
    		for /f "usebackq delims= " %%a in ("!pth!version.txt") do set displaydstver=%%a
    	)
    	echo,!n!:!pth! ^(�汾��!displaydstver!^)
    	call :write_log  "����һ������������Ŀ¼!pth! ^(�汾��!displaydstver!^)����"
    	copy /y "%~f0" "!pth!" >nul
    )
goto :eof

rem --------�Զ����û�ѡ���ļ��ķ����Ŀ¼���򿪱����Ƶ���Ŀ¼��һ��-----------
:openserverdir
    call :write_log �Զ����û�ѡ���ļ��ķ����Ŀ¼���򿪱����Ƶ���Ŀ¼��һ������
    for /r %1 %%b in (dontstarve*renderer.exe) do (
    	::set /p=<nul
    	set pth=%%~b&set pth=!pth:~,-48!
    	if "!n2!"=="%serverdirnum%" (
    	    call :write_log �˳���ǰ���̡���
    		start "��������" "!pth!" 1>nul 2>nul
    		start "��������" "!pth!����һ���������ķ�����%OneKeyVersion%.bat" &exit
    	)
    	set /a nowsi=!n2!*100/!serverdirnum!
    	set /a n2+=1
    	echo,"����ɣ�!nowsi!%%"
    )
goto :eof
exit

rem ----------worldgenoverride.lua----------------
:worldgenoverride
    call :write_log worldgenoverride����
    set caveoreht=1
    :worldgenoverrideseted
    if %caveoreht%==1 (
    	set "pah=%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\worldgenoverride.lua"
    ) else (
    	set "pah=%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\worldgenoverride.lua"
    )
    set filesize=0
    if not %caveoreht%==1 goto nextssss
    set ptmp="%Personal:~0,2%"
    set ptmp=%ptmp:~1,2%
    %ptmp%
    cd "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\"
    for /f "delims=" %%i in ('dir /a-d /b worldgenoverride.lua') do ( set filesize=%%~zi )
    rem echo -------%filesize%----------
    if not %filesize%==53 goto nextssss
    rem del worldgenoverride.lua
    :nextssss
    if not exist "%pah%" (
    	echo.>"%pah%"
    	if %caveoreht%==1 (
    		echo,--���������������ĵ������������ļ���������������>>"%pah%"
    	) else (
    		echo,--���������������ĵ������������ļ���������������>>"%pah%"
    	)
    	echo,--   1�����ļ�������һ������������%OneKeyVersion%�Զ�����>>"%pah%"
    	echo,--   2����������������иĶ�����ֱ�ӹر�>>"%pah%"
    	echo,--   3��never,rare,default,often,always�ֱ��Ӧ>>"%pah%"
    	echo,--   4����Դ�����ޡ����١�Ĭ�ϡ��϶ࡢ����>>"%pah%"
    	echo,--   5��ÿһ�С�^-^�C����������ݷ������Զ�����>>"%pah%"
    	echo,--   6��������DST������Ԥ���õ����ƣ�����������������������>>"%pah%"
    	echo,--   7��Ҫ����Ч�������ã����ڿ���̨����c^_regenerateworld^(^)>>"%pah%"
    	echo,--   8����Ļ�Ĭ�ϵ��������ã���ִ������8>>"%pah%"
    	echo,--   9��Ȼ��ȷ������ȶ�������c^_regenerateworld^(^)>>"%pah%"
    	echo,--   10��    Made By LiuNianLiShang  >>"%pah%"
    	echo,--   11��   ������Դ��� QQȺ497398445>>"%pah%"
    	echo,--����������������������������������������������>>"%pah%"
    	echo,return {>>"%pah%"
    	echo,	override_enabled = true,>>"%pah%"
    	if %caveoreht%==1 (
    		echo,	preset = "SURVIVAL_TOGETHER", --  or "SURVIVAL_TOGETHER" or "SURVIVAL_TOGETHER_CLASSIC" or "SURVIVAL_DEFAULT_PLUS" or "COMPLETE_DARKNESS" or "DST_CAVE">>"%pah%"
    	) else (
    		echo,	preset = "DST_CAVE", --  or "SURVIVAL_TOGETHER" or "SURVIVAL_TOGETHER_CLASSIC" or "SURVIVAL_DEFAULT_PLUS" or "COMPLETE_DARKNESS" or "DST_CAVE">>"%pah%"
    	)
    	echo,	--Ԥ��		�����ǣ�Ĭ�ϣ����䣬���俪�֣���ҹ����Ѩ>>"%pah%"
    	echo,	unprepared = { >>"%pah%"
    	echo,	--ʳ��>>"%pah%"
    	echo,	--"never", "rare", "default", "often", "always">>"%pah%"
    	echo,		banana = "default",--�㽶>>"%pah%"
    	echo,		berrybush = "default",--������>>"%pah%"
    	echo,		cactus = "default",--������>>"%pah%"
    	echo,		carrot = "default",--���ܲ�>>"%pah%"
    	echo,		lichen = "default",--̦޺>>"%pah%"
    	echo,		mushroom = "default",--Ģ��>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	misc = { >>"%pah%"
    	echo,	--����>>"%pah%"
    	echo,		autumn = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--���쳤��>>"%pah%"
    	echo,		boons = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--����>>"%pah%"
    	echo,		branching = "default", -- "never", "least", "default", "most">>"%pah%"
    	echo,		--��ͼ��֧>>"%pah%"
    	echo,		cavelight = "default", -- "veryslow", "slow", "default", "fast", "veryfast">>"%pah%"
    	echo,		--��Ѩ���գ�>>"%pah%"
    	echo,		day = "default", -- "default", "longday", "longdusk", "longnight", "noday", "nodusk", "nonight", "onlyday", "onlydusk", "onlynight">>"%pah%"
    	echo,		--��ҹ����>>"%pah%"
    	echo,		earthquakes = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--����Ƶ��>>"%pah%"
    	echo,		frograin = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--������>>"%pah%"
    	echo,		lightning = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--����>>"%pah%"
    	echo,		loop = "default", -- "never", "default", "always">>"%pah%"
    	echo,		--��״����>>"%pah%"
    	echo,		regrowth = "default", -- "veryslow", "slow", "default", "fast", "veryfast">>"%pah%"
    	echo,		--�����ٶ�>>"%pah%"
    	echo,		season_start = "default", -- "default", "winter", "spring", "summer", "autumnorspring", "winterorsummer", "random">>"%pah%"
    	echo,		--��ʼ����>>"%pah%"
    	echo,		spring = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--���쳤��>>"%pah%"
    	echo,		start_location = "default", -- "caves", "default", "plus", "darkness">>"%pah%"
    	echo,		--��ʼλ��>>"%pah%"
    	echo,		summer = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--���쳤��>>"%pah%"
    	echo,		task_set = "default", -- "classic", "default", "cave_default">>"%pah%"
    	echo,		--����Ⱥ��>>"%pah%"
    	echo,		touchstone = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--����̨>>"%pah%"
    	echo,		weather = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--����>>"%pah%"
    	echo,		wildfires = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--Ұ����ȼ��>>"%pah%"
    	echo,		winter = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--���쳤��>>"%pah%"
    	echo,		world_size = "default", -- "small", "medium", "default", "huge">>"%pah%"
    	echo,		--��ͼ��С>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	animals = { >>"%pah%"
    	echo,	--����>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		alternatehunt = "default",--�㼣>>"%pah%"
    	echo,		angrybees = "default",--ɱ�˷䳲Ѩ>>"%pah%"
    	echo,		beefalo = "default",--ţ>>"%pah%"
    	echo,		beefaloheat = "default",--��ƨ��ţ>>"%pah%"
    	echo,		bees = "default",--�۷䳲Ѩ>>"%pah%"
    	echo,		birds = "default",--��>>"%pah%"
    	echo,		bunnymen = "default",--����>>"%pah%"
    	echo,		butterfly = "default",--����>>"%pah%"
    	echo,		buzzard = "default",--ͺ��>>"%pah%"
    	echo,		catcoon = "default",--�è>>"%pah%"
    	echo,		frogs = "default",--����>>"%pah%"
    	echo,		hunt = "default",--����>>"%pah%"
    	echo,		lightninggoat = "default",--����>>"%pah%"
    	echo,		moles = "default",--����>>"%pah%"
    	echo,		monkey = "default",--����>>"%pah%"
    	echo,		penguins = "default",--���>>"%pah%"
    	echo,		perd = "default",--��>>"%pah%"
    	echo,		pigs = "default",--����>>"%pah%"
    	echo,		rabbits = "default",--����>>"%pah%"
    	echo,		rocky = "default",--ʯϺ>>"%pah%"
    	echo,		slurper = "default",--�ʳ��>>"%pah%"
    	echo,		slurtles = "default",--��ţ>>"%pah%"
    	echo,		tallbirds = "default",--����>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	monsters = { >>"%pah%"
    	echo,	--����>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		bats = "default",--����>>"%pah%"
    	echo,		bearger = "default",--��boss>>"%pah%"
    	echo,		chess = "default",--������>>"%pah%"
    	echo,		deciduousmonster = "default",--����>>"%pah%"
    	echo,		deerclops = "default",--��¹>>"%pah%"
    	echo,		dragonfly = "default",--��Ӭ>>"%pah%"
    	echo,		fissure = "default",--�ѷ�>>"%pah%"
    	echo,		goosemoose = "default",--��boss>>"%pah%"
    	echo,		houndmound = "default",--��Ȯ��>>"%pah%"
    	echo,		hounds = "default",--�Թ�>>"%pah%"
    	echo,		krampus = "default",--С͵>>"%pah%"
    	echo,		liefs = "default",--����>>"%pah%"
    	echo,		lurepofflinets = "default",--ʳ�˻�>>"%pah%"
    	echo,		merm = "default",--����>>"%pah%"
    	echo,		spiders = "default",--֩��>>"%pah%"
    	echo,		tentacles = "default",--����>>"%pah%"
    	echo,		walrus = "default",--����Ѩ>>"%pah%"
    	echo,		worms = "default",--���>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	resources = { >>"%pah%"
    	echo,	--��Դ>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		fern = "default",--ާ��ֲ��>>"%pah%"
    	echo,		flint = "default",--��ʯ>>"%pah%"
    	echo,		flower_cave = "default",--ӫ�⻨>>"%pah%"
    	echo,		flowers = "default",--��>>"%pah%"
    	echo,		grass = "default",--�ɲ�>>"%pah%"
    	echo,		marshbush = "default",--��̹�ľ>>"%pah%"
    	echo,		meteorshowers = "default",--��ʯ>>"%pah%"
    	echo,		meteorspawner = "default",--��ʯ��>>"%pah%"
    	echo,		mushtree = "default",--Ģ����>>"%pah%"
    	echo,		reeds = "default",--«έ>>"%pah%"
    	echo,		rock = "default",--��ʯ>>"%pah%"
    	echo,		rock_ice = "default",--����>>"%pah%"
    	echo,		sapling = "default",--С��֦>>"%pah%"
    	echo,		trees = "default",--��>>"%pah%"
    	echo,		tumbleweed = "default",--�����>>"%pah%"
    	echo,		wormlights = "default",--���⽬��>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,}>>"%pah%"
    	echo,worldgenoverride.lua���ɳɹ�
    )
    if "%1"=="120" (
    	echo,�ȴ��û�����worldgenoverride.lua����
    	if %caveoreht%==1 set /a caveoreht=0
    	goto :eof
    )
    echo,�ȴ��û�����worldgenoverride.lua����
    start /w "test" "notepad" "%pah%">nul
    if "%caveoreht%"=="1" set /a caveoreht=0
goto :eof
goto ui


rem -----------------�������òο��ĵ�-------------------
:worldgenoverride_for_refer
    call :write_log �����������òο��ļ�worldgenoverride����
    set "pah=%~dp0worldgenoverride.lua"
    	echo.>"%pah%"
    	echo,--�����������������������òο��ļ���������������>>"%pah%"
    	echo,--   1�����ļ�������һ������������%OneKeyVersion%�Զ�����>>"%pah%"
    	echo,--   2����������������иĶ�����ֱ�ӹر�>>"%pah%"
    	echo,--   3��never,rare,default,often,always�ֱ��Ӧ>>"%pah%"
    	echo,--   4����Դ�����ޡ����١�Ĭ�ϡ��϶ࡢ����>>"%pah%"
    	echo,--   5��ÿһ�С�^-^�C����������ݷ������Զ�����>>"%pah%"
    	echo,--   6��������DST������Ԥ���õ����ƣ�����������������������>>"%pah%"
    	echo,--   7��Ҫ����Ч�������ã����ڿ���̨����c^_regenerateworld^(^)>>"%pah%"
    	echo,--   8����Ļ�Ĭ�ϵ��������ã���ִ������8>>"%pah%"
    	echo,--   9��Ȼ��ȷ������ȶ�������c^_regenerateworld^(^)>>"%pah%"
    	echo,--   10��    Made By LiuNianLiShang  >>"%pah%"
    	echo,--   11��   ������Դ��� QQȺ497398445>>"%pah%"
    	echo,--����������������������������������������������>>"%pah%"
    	echo,return {>>"%pah%"
    	echo,	override_enabled = true,>>"%pah%"
    	echo,	preset = "SURVIVAL_TOGETHER", --  or "SURVIVAL_TOGETHER" or "SURVIVAL_TOGETHER_CLASSIC" or "SURVIVAL_DEFAULT_PLUS" or "COMPLETE_DARKNESS" or "DST_CAVE">>"%pah%"
    	echo,	--Ԥ��		�����ǣ�Ĭ�ϣ����䣬���俪�֣���ҹ����Ѩ>>"%pah%"
    	echo,	unprepared = { >>"%pah%"
    	echo,	--ʳ��>>"%pah%"
    	echo,	--"never", "rare", "default", "often", "always">>"%pah%"
    	echo,		banana = "default",--�㽶>>"%pah%"
    	echo,		berrybush = "default",--������>>"%pah%"
    	echo,		cactus = "default",--������>>"%pah%"
    	echo,		carrot = "default",--���ܲ�>>"%pah%"
    	echo,		lichen = "default",--̦޺>>"%pah%"
    	echo,		mushroom = "default",--Ģ��>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	misc = { >>"%pah%"
    	echo,	--����>>"%pah%"
    	echo,		autumn = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--���쳤��>>"%pah%"
    	echo,		boons = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--����>>"%pah%"
    	echo,		branching = "default", -- "never", "least", "default", "most">>"%pah%"
    	echo,		--��ͼ��֧>>"%pah%"
    	echo,		cavelight = "default", -- "veryslow", "slow", "default", "fast", "veryfast">>"%pah%"
    	echo,		--��Ѩ���գ�>>"%pah%"
    	echo,		day = "default", -- "default", "longday", "longdusk", "longnight", "noday", "nodusk", "nonight", "onlyday", "onlydusk", "onlynight">>"%pah%"
    	echo,		--��ҹ����>>"%pah%"
    	echo,		earthquakes = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--����Ƶ��>>"%pah%"
    	echo,		frograin = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--������>>"%pah%"
    	echo,		lightning = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--����>>"%pah%"
    	echo,		loop = "default", -- "never", "default", "always">>"%pah%"
    	echo,		--��״����>>"%pah%"
    	echo,		regrowth = "default", -- "veryslow", "slow", "default", "fast", "veryfast">>"%pah%"
    	echo,		--�����ٶ�>>"%pah%"
    	echo,		season_start = "default", -- "default", "winter", "spring", "summer", "autumnorspring", "winterorsummer", "random">>"%pah%"
    	echo,		--��ʼ����>>"%pah%"
    	echo,		spring = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--���쳤��>>"%pah%"
    	echo,		start_location = "default", -- "caves", "default", "plus", "darkness">>"%pah%"
    	echo,		--��ʼλ��>>"%pah%"
    	echo,		summer = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--���쳤��>>"%pah%"
    	echo,		task_set = "default", -- "classic", "default", "cave_default">>"%pah%"
    	echo,		--����Ⱥ��>>"%pah%"
    	echo,		touchstone = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--����̨>>"%pah%"
    	echo,		weather = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--����>>"%pah%"
    	echo,		wildfires = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--Ұ����ȼ��>>"%pah%"
    	echo,		winter = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--���쳤��>>"%pah%"
    	echo,		world_size = "default", -- "small", "medium", "default", "huge">>"%pah%"
    	echo,		--��ͼ��С>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	animals = { >>"%pah%"
    	echo,	--����>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		alternatehunt = "default",--�㼣>>"%pah%"
    	echo,		angrybees = "default",--ɱ�˷䳲Ѩ>>"%pah%"
    	echo,		beefalo = "default",--ţ>>"%pah%"
    	echo,		beefaloheat = "default",--��ƨ��ţ>>"%pah%"
    	echo,		bees = "default",--�۷䳲Ѩ>>"%pah%"
    	echo,		birds = "default",--��>>"%pah%"
    	echo,		bunnymen = "default",--����>>"%pah%"
    	echo,		butterfly = "default",--����>>"%pah%"
    	echo,		buzzard = "default",--ͺ��>>"%pah%"
    	echo,		catcoon = "default",--�è>>"%pah%"
    	echo,		frogs = "default",--����>>"%pah%"
    	echo,		hunt = "default",--����>>"%pah%"
    	echo,		lightninggoat = "default",--����>>"%pah%"
    	echo,		moles = "default",--����>>"%pah%"
    	echo,		monkey = "default",--����>>"%pah%"
    	echo,		penguins = "default",--���>>"%pah%"
    	echo,		perd = "default",--��>>"%pah%"
    	echo,		pigs = "default",--����>>"%pah%"
    	echo,		rabbits = "default",--����>>"%pah%"
    	echo,		rocky = "default",--ʯϺ>>"%pah%"
    	echo,		slurper = "default",--�ʳ��>>"%pah%"
    	echo,		slurtles = "default",--��ţ>>"%pah%"
    	echo,		tallbirds = "default",--����>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	monsters = { >>"%pah%"
    	echo,	--����>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		bats = "default",--����>>"%pah%"
    	echo,		bearger = "default",--��boss>>"%pah%"
    	echo,		chess = "default",--������>>"%pah%"
    	echo,		deciduousmonster = "default",--����>>"%pah%"
    	echo,		deerclops = "default",--��¹>>"%pah%"
    	echo,		dragonfly = "default",--��Ӭ>>"%pah%"
    	echo,		fissure = "default",--�ѷ�>>"%pah%"
    	echo,		goosemoose = "default",--��boss>>"%pah%"
    	echo,		houndmound = "default",--��Ȯ��>>"%pah%"
    	echo,		hounds = "default",--�Թ�>>"%pah%"
    	echo,		krampus = "default",--С͵>>"%pah%"
    	echo,		liefs = "default",--����>>"%pah%"
    	echo,		lurepofflinets = "default",--ʳ�˻�>>"%pah%"
    	echo,		merm = "default",--����>>"%pah%"
    	echo,		spiders = "default",--֩��>>"%pah%"
    	echo,		tentacles = "default",--����>>"%pah%"
    	echo,		walrus = "default",--����Ѩ>>"%pah%"
    	echo,		worms = "default",--���>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	resources = { >>"%pah%"
    	echo,	--��Դ>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		fern = "default",--ާ��ֲ��>>"%pah%"
    	echo,		flint = "default",--��ʯ>>"%pah%"
    	echo,		flower_cave = "default",--ӫ�⻨>>"%pah%"
    	echo,		flowers = "default",--��>>"%pah%"
    	echo,		grass = "default",--�ɲ�>>"%pah%"
    	echo,		marshbush = "default",--��̹�ľ>>"%pah%"
    	echo,		meteorshowers = "default",--��ʯ>>"%pah%"
    	echo,		meteorspawner = "default",--��ʯ��>>"%pah%"
    	echo,		mushtree = "default",--Ģ����>>"%pah%"
    	echo,		reeds = "default",--«έ>>"%pah%"
    	echo,		rock = "default",--��ʯ>>"%pah%"
    	echo,		rock_ice = "default",--����>>"%pah%"
    	echo,		sapling = "default",--С��֦>>"%pah%"
    	echo,		trees = "default",--��>>"%pah%"
    	echo,		tumbleweed = "default",--�����>>"%pah%"
    	echo,		wormlights = "default",--���⽬��>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,}>>"%pah%"
    	echo,�������òο��ļ����ɳɹ�
    	start "" "%pah%"
goto :eof
rem -----------------��ʱ����--------------------
:delay
    rem call :write_log ��ʱ����
    set /a num+=1
    if "%num%" geq "%1" (set num=0)&goto :eof
goto delay

rem --------------���ݺ���-------------------
:savebak
    cls
    call :displayui
    call :write_log ���ݺ�������
    echo,������������������������������������������������������������������������������
    call :get_time_for_dir
    set "beizhu="
    set /p beizhu=������ı���������֣�
    set "datetime=%timestr%"
    XCOPY  "%Personal%DoNotStarveTogether\%clustername%\"*  "%Personal%LiuNianOneKeyBak\%datetime%\clusterbak\" /s  /e /c /y
    set "pth=mods\modsettings.lua"
    if exist "%~dp0%pth%" copy /y "%~dp0%pth%" "%Personal%LiuNianOneKeyBak\%datetime%\"
    echo,"��%beizhu%���汾�ţ�%dstver%����">"%Personal%LiuNianOneKeyBak\%datetime%\note.liunian"
    echo ��������ɣ������ļ������֣���%datetime%�������������&pause>nul
goto ui
goto :eof

rem ----------���ݻָ�����-------------
:selectbaktoreturn
    cls
    call :displayui
    call :write_log ���ݻָ�����
    set timen=0
    set "pathname="
    if not exist "%Personal%LiuNianOneKeyBak\" (md "%Personal%LiuNianOneKeyBak\" & goto bakerr)
    set ptmp="%Personal:~0,2%"
    set ptmp=%ptmp:~1,2%
    %ptmp%
    cd "%Personal%LiuNianOneKeyBak\"
    set timen=0
    call :beifenui
    if "%timen%"=="0" goto bakerr
    set ch=err
    set /p ch=������%timen%�����ݣ�������Ҫ�ָ����ݵı�ţ�
    if "%ch%"=="err"  echo ������������,����������ع���˵���&pause>nul&goto ui
    if %ch% LSS 0 echo ������������,����������ع���˵���&pause>nul&goto ui
    if %ch% GTR %timen% echo ������������,����������ع���˵���&pause>nul&goto ui
    set timen=0
    for /d %%f in (*) do (
    if "!timen!"=="%ch%" (
        call :write_log "���ڴ�!timen!�ű���:��%%f���ָ��浵�ͷ��������á���"
        echo ���ڴ�!timen!�ű���:��%%f���ָ��浵�ͷ��������á���&set "pathname=%%f" & goto end
    ) 
    set /a timen+=1
    )
    :end
    if exist "%Personal%LiuNianOneKeyBak\%pathname%\note.lnls" echo �˱������ɾɰ汾���ɵģ���ʹ�þɰ�һ��(v3.2.4֮ǰ�汾)�ָ�������&pause>nul&goto ui
    if EXIST "%Personal%DoNotStarveTogether\%clustername%\" rd /s /q "%Personal%DoNotStarveTogether\%clustername%\"
    rem echo �Ѿ�ɾ��%Personal%EasyConfigCaves\
    if not exist "%Personal%DoNotStarveTogether\%clustername%\" md "%Personal%DoNotStarveTogether\%clustername%\"
    xcopy "%Personal%LiuNianOneKeyBak\%pathname%\clusterbak\"* "%Personal%DoNotStarveTogether\%clustername%\" /s  /e /c /h /y
    rem xcopy "%Personal%LiuNianOneKeyBak\%pathname%\"* "%Personal%DoNotStarveTogether\" /s  /e /c /h /y
    if exist "%Personal%LiuNianOneKeyBak\%pathname%\modsettings.lua" copy /y "%Personal%LiuNianOneKeyBak\%pathname%\modsettings.lua" "%~dp0mods\modsettings.lua"
    echo ��������ɣ����������&pause>nul
goto ui

:bakerr
    call :write_log "����Ŀ¼��!"
    echo ���ı���Ŀ¼�տ���Ҳ��Ϊ���������ݰ�ȫ���촴��һ�����ݰɣ��������������&pause>nul
    goto ui
goto :eof

rem ----------------ɾ����������-------------------
:delonebak
    cls
    call :displayui
    call :write_log ɾ����������
    set timen=0
    set "pathname="
    if not exist "%Personal%LiuNianOneKeyBak\" (md "%Personal%LiuNianOneKeyBak\"&goto bakerr)
    set ptmp="%Personal:~0,2%"
    set ptmp=%ptmp:~1,2%
    %ptmp%
    cd "%Personal%LiuNianOneKeyBak\"
    call :beifenui
    if "%timen%"=="0" goto bakerr
    set ch=err
    set /p ch=������%timen%�����ݣ�������Ҫɾ���浵�ı�ţ�
    if "%ch%"=="err"  echo ������������,����������ع���˵���&pause>nul&goto ui
    if %ch% LSS 0 echo ������������,����������ع���˵���&pause>nul&goto ui
    if %ch% GTR %timen% echo ������������,����������ع���˵���&pause>nul&goto ui
    set timen=0
    for /d %%f in (*) do (
    	if "!timen!" == "%ch%" (
    	    call :write_log "����ɾ��!timen!�ű���:��%%f������"
    	    echo ����ɾ��!timen!�ű���:��%%f������&rd /s /q "%Personal%LiuNianOneKeyBak\%%f\" 2>nul else goto ui
    	) 
    	set /a timen+=1
    )
    :delover
    echo �����ɹ�&pause
goto ui

rem -----------------����ɾ������----------------
:delbak
    
    cls
    call :displayui
    call :write_log ����ɾ�����ݡ���
    set timen=0
    set "pathname="
    if not exist "%Personal%LiuNianOneKeyBak\" (md "%Personal%LiuNianOneKeyBak\"&goto bakerr)
    set ptmp="%Personal:~0,2%"
    set ptmp=%ptmp:~1,2%
    %ptmp%
    cd "%Personal%LiuNianOneKeyBak\"
    call :beifenui
    if "%timen%"=="0" goto bakerr
    set ch=err
    set /p ch=������%timen%�����ݣ�������Ҫɾ�����Ŵ浵����������ѡ��֮ǰ�Ĵ浵������������1��%timen%֮����������֣�����%timen%ɾ�����У���
    if "%ch%"=="err"  echo ������������,����������ع���˵���&pause>nul&goto ui
    if %ch% LSS 0 echo ������������,����������ع���˵���&pause>nul&goto ui
    if %ch% GTR %timen% echo ������������,����������ع���˵���&pause>nul&goto ui
    set timen=0
    for /d %%f in (*) do (
    	if !timen! LSS %ch% (
    	    call :write_log "����ɾ��!timen!�ű���:��%%f������"
    	    echo ����ɾ��!timen!�ű���:��%%f������&rd /s /q "%Personal%LiuNianOneKeyBak\%%f\" 2>nul else goto ui
    	) 
    	set /a timen+=1
    )
    :delover
    echo �����ɹ�&pause
goto ui

rem ---------------��UI-----------------------
:displayui
    
    cls
    set "uid="
    for /l %%a in (1,1,11) do (
    	set "uid=%%ui%%a%%"
    	call echo !uid!
    )
    echo,                        ��ǰ�浵�ۣ���%clustername%��
    call :write_log "��ǰ�浵�ۣ���%clustername%��"
    rem  ������λ�á�%folder:~0,30%.�� �˱����Ѿ��ڲ˵���������λ��ʵ��
    call :write_log ��ʾ��UI����
goto :eof

rem ---------------����UI----------------------
rem �˺�����Ҫ��������ʾ��ǰ�����Ѿ����ڵı����б�
:beifenui
    call :write_log "�˺�����Ҫ��������ʾ��ǰ�����Ѿ����ڵı����б���"
    echo,������������������������������������������������������������������������������
    for /d %%f in (*) do (
    	if exist "%Personal%LiuNianOneKeyBak\%%f\note.liunian" (
    		for /f "usebackq tokens=2* delims=��" %%o in ("%Personal%LiuNianOneKeyBak\%%f\note.liunian") do (
    			set "beizhustr=%%o"
    			call echo    !timen!:%%f ��ע��"%%beizhustr%%"
    			set /a timen+=1
    		)
    	) else (
    		echo    !timen!:%%f ��ע��"�ޱ�ע"
    		set /a timen+=1
    	)
    )
    echo,������������������������������������������������������������������������������
goto :eof

rem ----------------����--------------------
:myhelp
    call :write_log "��������˵�����"
    set op=100
    call :displayui
    echo ���������������������������������ʾѡ��ϣ����ȡ�İ���������������������������
    echo                0--------- ����������ġ�����һ���桱QQȺ
    echo                1--------- һ���������ķ�����ʹ��˵����
    echo                2--------- һ���������ķ������Ҳ����ļ��Ľ���취
    echo                3--------- ͨ�������������ķ�������ͬʱ������������ķ���
    echo                4--------- һ���������ķ������ٶ�����
    echo                5--------- ���꼢�Ŀ���ָ̨���ȫ
    echo                6--------- �������°汾������һ������������
    echo                h--------- һ���������ķ������汾���¼�¼
    echo                ����------�˳�
    echo ������������������������������������������������������������������������������
    set /p op="----------����������룬���س�ȷ�ϣ�"
    if "%op%"=="0" start http://qm.qq.com/cgi-bin/qm/qr?k=KmbPqsBaMEsfeA3FTFSyVeKQIrq46Jdv
    if "%op%"=="1" start http://wenku.baidu.com/view/cba87ebcf46527d3250ce00b
    if "%op%"=="2" start http://wenku.baidu.com/view/09f2c1276294dd88d0d26be8
    if "%op%"=="3" start http://wenku.baidu.com/view/c412f7d2c5da50e2534d7f14
    if "%op%"=="4" start http://tieba.baidu.com/p/4247626325
    if "%op%"=="5" start http://wenku.baidu.com/view/ccd56cfacfc789eb162dc8a3
    if "%op%"=="6" start http://pan.baidu.com/share/home?uk=4045161541&view=share#category/type=0
    if "%op%"=="h" call :UpdateLog
goto :eof

rem --------------ת��VBS�ű�-------------------
:codeconvert
    call :write_log "ת��VBS�ű�"
    if not exist "%~dp0codeconvert.vbs" (
    	echo, >"%~dp0codeconvert.vbs"
    	echo, ^'made by LiuNianLiShang                >>"%~dp0codeconvert.vbs"
    	echo, Set objArgs=WScript.Arguments           >>"%~dp0codeconvert.vbs"
    	echo, myfile^=objArgs^(0^)                       >>"%~dp0codeconvert.vbs"
    	echo, set stm2^=createobject^(^"ADODB.Stream^"^) >>"%~dp0codeconvert.vbs"
    	echo, if objArgs.Count=1 then                 >>"%~dp0codeconvert.vbs"
    	echo, 	stm2.Charset =^"utf-8^"               >>"%~dp0codeconvert.vbs"
    	echo, else                                    >>"%~dp0codeconvert.vbs"
    	echo, 	stm2.Charset =^"gb2312^"              >>"%~dp0codeconvert.vbs"
    	echo, end if                                  >>"%~dp0codeconvert.vbs"
    	echo, stm2.Open                               >>"%~dp0codeconvert.vbs"
    	echo, stm2.LoadFromFile myfile                >>"%~dp0codeconvert.vbs"
    	echo, readfile = stm2.ReadText                >>"%~dp0codeconvert.vbs"
    	echo, stm2.Close                              >>"%~dp0codeconvert.vbs"
    	echo, Stm2.Type = 2                           >>"%~dp0codeconvert.vbs"
    	echo, Stm2.Open                               >>"%~dp0codeconvert.vbs"
    	echo, if objArgs.Count=2 then                 >>"%~dp0codeconvert.vbs"
    	echo, 	stm2.Charset =^"utf^-8^"               >>"%~dp0codeconvert.vbs"
    	echo, else                                    >>"%~dp0codeconvert.vbs"
    	echo, 	stm2.Charset =^"gb2312^"              >>"%~dp0codeconvert.vbs"
    	echo, end if                                  >>"%~dp0codeconvert.vbs"
    	echo, Stm2.Position = Stm2.Size               >>"%~dp0codeconvert.vbs"
    	echo, Stm2.WriteText readfile                 >>"%~dp0codeconvert.vbs"
    	echo, Stm2.SaveToFile myfile,2                >>"%~dp0codeconvert.vbs"
    	echo, Stm2.Close                              >>"%~dp0codeconvert.vbs"
    )
goto :eof

rem ----ͨ������vbs�ű��Զ���ȡ�û�����������ҵ��ĵ�����·����ʹ�����ַ�����ԭ���������������£���bat���ʱ�����ע���ķ�ʽ��ȡ�ҵ��ĵ�·�����в�ͨ�ģ���ͨ������vbs����ȡ�ҵ��ĵ�·����û��Ӱ��-----
:vbs_get_document_dir
    call :write_log "ͨ������vbs�ű��Զ���ȡ�û�����������ҵ��ĵ�����·����ʹ�����ַ�����ԭ���������������£���bat���ʱ�����ע���ķ�ʽ��ȡ�ҵ��ĵ�·�����в�ͨ�ģ���ͨ������vbs����ȡ�ҵ��ĵ�·����û��Ӱ��"
    if exist "%~dp0dirtmp.txt" del /q "%~dp0dirtmp.txt">nul 2>nul
    echo,Set ws = CreateObject^(^"WScript.Shell^"^)>"%~dp0codeconvert.vbs"
    echo,PathMyDocuments = ws.specialfolders^(^"MyDocuments^"^)>>"%~dp0codeconvert.vbs"
    echo, set stm2^=createobject^(^"ADODB.Stream^"^) >>"%~dp0codeconvert.vbs"
    echo, Stm2.Type = 2                           >>"%~dp0codeconvert.vbs"
    echo, Stm2.Open                               >>"%~dp0codeconvert.vbs"
    echo, stm2.Charset =^"gb2312^"              >>"%~dp0codeconvert.vbs"
    echo, Stm2.Position = Stm2.Size               >>"%~dp0codeconvert.vbs"
    echo, Stm2.WriteText ^"Personal=^"+PathMyDocuments+^"\Klei\^"  >>"%~dp0codeconvert.vbs"
    echo, Stm2.SaveToFile ^"%~dp0dirtmp.txt^",2                >>"%~dp0codeconvert.vbs"
    echo, Stm2.Close                              >>"%~dp0codeconvert.vbs"
    call :delay 10
    call :delay 10
    start /w "vbs��ȡ�ҵ��ĵ�·��" "%~dp0codeconvert.vbs"
    set tmp=0
    rem ---------------��ȡһ�����ñ���ֵ------------------
    for /f "eol=[ tokens=1,2* usebackq delims==" %%i in ("%~dp0dirtmp.txt") do (
        set /a tmp+=1
        call set "%%i=%%j"
    )
    rem ----------------����һ������-------------------
    call :save_One_Key_setting_ini
    del "%~dp0codeconvert.vbs"
    del /q "%~dp0dirtmp.txt"
goto :eof

rem ----ͨ��vbs���ô��ļ��жԻ�����ѡ�񼢻Ŀͻ������ڵ�·����ͨ���ļ�ת����bat�ļ��ı�����-----
:vbs_get_dst_dir
    call :write_log "ͨ��vbs���ô��ļ��жԻ�����ѡ�񼢻Ŀͻ������ڵ�·����ͨ���ļ�ת����bat�ļ��ı����С���"
    if exist "%~dp0dirtmp.txt" del /q "%~dp0dirtmp.txt">nul 2>nul
    set "get_dstdir_vbs1=strPath = BrowseForFolder^(^"��ѡ�񼢻Ŀͻ������ڵ�Ŀ¼��^"^)"
    set "get_dstdir_vbs2=strPath = strPath + ^"\^" "
    set "get_dstdir_vbs3=Function BrowseForFolder^(ByVal strTips^)"
    set "get_dstdir_vbs4=  Dim objFolder"
    set "get_dstdir_vbs5=  Set objFolder = CreateObject^(^"Shell.Application^"^).BrowseForFolder ^(^&H0, strTips, ^&H0010 + ^&H0001^)"
    set "get_dstdir_vbs6=  If ^(Not objFolder Is Nothing^) Then BrowseForFolder = objFolder.Self.Path  'objFolder.Items^(^).Item^(^).Path"
    set "get_dstdir_vbs7=End Function"
    set "get_dstdir_vbs8=set stm2^=createobject^(^"ADODB.Stream^"^)"
    set "get_dstdir_vbs9=Stm2.Type = 2"
    set "get_dstdir_vbs10=Stm2.Open"
    set "get_dstdir_vbs11=stm2.Charset =^"gb2312^""
    set "get_dstdir_vbs12=Stm2.Position = Stm2.Size"
    set "get_dstdir_vbs13=Stm2.WriteText ^"dstdir=^"+strPath" 
    set "get_dstdir_vbs14=Stm2.SaveToFile ^"%~dp0dirtmp.txt^",2 "
    set "get_dstdir_vbs15=Stm2.Close "
    set "get_dstdir_vbs="
    echo,>"%~dp0DSTServerConsole.vbs"
    for /l %%a in (1,1,15) do (
    	set "get_dstdir_vbs=%%get_dstdir_vbs%%a%%"
    	call echo,!get_dstdir_vbs!>>"%~dp0DSTServerConsole.vbs"
    )
    call :delay 10
    call :delay 10
    echo,δ�ҵ����Ŀͻ��ˣ����ڵ�����Ŀ¼�Ի�����ѡ�����ļ��Ŀͻ�������Ŀ¼����
    start /w "vbs��ȡ���Ŀͻ���·��" "%~dp0DSTServerConsole.vbs"
    set tmp=0
    for /f "eol=[ tokens=1,2* usebackq delims==" %%i in ("%~dp0dirtmp.txt") do (
        set /a tmp+=1
        call set "%%i=%%j"
    )
    rem �����û�ѡ��ļ��Ŀͻ��˵ľ���·��������֮ǰ�����һ·�����кϷ��Լ���Լ��汾�����Լ��
    if exist "%dstdir%dontstarve_steam.exe" (
        call :save_One_Key_setting_ini
    ) else (
        if exist "%dstdir%bin\dontstarve_steam.exe" (
            set "dstdir=!dstdir!bin\"
            call :save_One_Key_setting_ini
        ) else (
            call :write_log ��ѡ�ļ��Ŀͻ���Ŀ¼������ȷ����ѡ���Ŀ¼���Ƿ��м��Ŀͻ��ˣ�֧��ѡ�񼢻ĸ�Ŀ¼�ͼ��ĵ�binĿ¼�������Զ�ʶ��
            echo,��ѡ�ļ��Ŀͻ���Ŀ¼������ȷ����ѡ���Ŀ¼���Ƿ��м��Ŀͻ��ˣ�֧��ѡ�񼢻ĸ�Ŀ¼�ͼ��ĵ�binĿ¼�������Զ�ʶ��
            pause
        )
    )
    set "pth=%~dp0"
    set "cmpdstver=0"
    set "clientver=0"
    if exist "!pth!version.txt" (
        if exist "%dstdir:~0,-4%version.txt" (
    	    for /f "usebackq delims= " %%a in ("%dstdir:~0,-4%version.txt") do set "clientver=%%a"
    	    for /f "usebackq delims= " %%a in ("!pth!version.txt") do set "cmpdstver=%%a"
    	    if "!clientver!" neq "!cmpdstver!" (
    	        call :write_log "���棬��ѡ��ļ��Ŀͻ��ˣ�ver!clientver!���ͼ��ķ������ˣ�ver!cmpdstver!���汾��ƥ�䣬ֻ����ͬ�汾�ŵļ��Ŀͻ��˺ͷ������˲����ѵ����䲢���ϣ�"
                echo,���棬��ѡ��ļ��Ŀͻ��ˣ�ver!clientver!���ͼ��ķ������ˣ�ver!cmpdstver!���汾��ƥ�䣬ֻ����ͬ�汾�ŵļ��Ŀͻ��˺ͷ������˲����ѵ����䲢���ϣ�
                pause
            )
    	)
    )
    del /q "%~dp0DSTServerConsole.vbs"
    del /q "%~dp0dirtmp.txt"
goto :eof

rem ----------������modsettings.lua �� modoverride.lua�ļ�֮ǰѯ���û��Ƿ�Ҫ���������ļ����б���ת��---------
:confirmconvert
    call :write_log "������modsettings.lua �� modoverride.lua�ļ�֮ǰѯ���û��Ƿ�Ҫ���������ļ����б���ת������"
    set convert=false
    echo �����������������������Ƿ���Ҫ��modsettings.lua ת�멤������������������������
    echo                1---------����Ҫת�� ���Ƽ�
    echo                ����------�Ҳ���Ҫת��
    echo ������������������������������������������������������������������������������
    set /p op="----------����������룬���س�ȷ�ϣ�"
    if %op%==1 set convert=true
    echo, ����ִ�У����Ժ򡭡�
goto :eof

rem -------------VBSģ�ⰴ���ű�-----------------
:ConsoleOutput
    call :write_log VBSģ�ⰴ���ű�
    set "console1=on error resume next"
    set "console2=SET WS=CreateObject(^"WScript.Shell^")"
    if "!choice_console!" == "����" (
      set "console3=WS.AppActivate ^"%OverworldTitle%^""
    ) else (
    	set "console3=WS.AppActivate ^"%CavesTitle%^""
    )
    set "console4=WS.SendKeys ^"%consolecmd%^""
    set "console5=wscript.sleep 1"
    set "console6=WS.AppActivate ^"%titlestr%^""
    set "console7=WS.AppActivate ^"Don^'t Starve Together^""
    set "console="
    echo,'���ű�������һ������%OneKeyVersion%�Զ�����>"%~dp0DSTServerConsole.vbs"
    for /l %%a in (1,1,7) do (
    	set "console=%%console%%a%%"
    	call echo,!console!>>"%~dp0DSTServerConsole.vbs"
    )
    start /w "����̨����ͳ���" "%~dp0DSTServerConsole.vbs"
    del "%~dp0DSTServerConsole.vbs"
goto :eof

rem -------------------��������ͬʱ����-------------------
:DoubleConsoleOutput
    call :write_log DoubleConsoleOutput����
    set "console1=on error resume next"
    set "console2=SET WS=CreateObject(^"WScript.Shell^")"
    set "console3=WS.AppActivate ^"%OverworldTitle%^""
    set "console4=WS.SendKeys ^"%consolecmd%^""
    set "console5=wscript.sleep 1"
    set "console6=WS.AppActivate ^"%titlestr%^""
    set "console="
    echo,'���ű�������һ������%OneKeyVersion%�Զ�����>"%~dp0DSTServerConsole.vbs"
    for /l %%a in (1,1,6) do (
    	set "console=%%console%%a%%"
    	call echo,!console!>>"%~dp0DSTServerConsole.vbs"
    )
    start /w "����̨����ͳ���" "%~dp0DSTServerConsole.vbs"
    del "%~dp0DSTServerConsole.vbs"
    call :DoubleConsoleOutput2
goto :eof

:DoubleConsoleOutput2
    call :write_log DoubleConsoleOutput2����
    set "console3=WS.AppActivate ^"%CavesTitle%^""
    rem set "console7=WS.AppActivate ^"Don^'t Starve Together^""
    set "console="
    echo,'���ű�������һ������%OneKeyVersion%�Զ�����>"%~dp0DSTServerConsole.vbs"
    for /l %%a in (1,1,6) do (
    	set "console=%%console%%a%%"
    	call echo,!console!>>"%~dp0DSTServerConsole.vbs"
    )
    start /w "����̨����ͳ���" "%~dp0DSTServerConsole.vbs"
    del "%~dp0DSTServerConsole.vbs"
goto :eof

rem -------------�Զ���������̨���뷨--------------
:Consoleshurufatiaozheng1
    call :write_log Consoleshurufatiaozheng1����
    set "console1=on error resume next"
    set "console2=SET WS=CreateObject(^"WScript.Shell^")"
    set "console3=WS.AppActivate ^"%OverworldTitle%^""
    set "console4=WS.SendKeys ^"^^^^ ^""
    set "console5=wscript.sleep 1"
    set "console6=WS.AppActivate ^"%titlestr%^""
    set "console="
    echo,'���ű�������һ������%OneKeyVersion%�Զ�����>"%~dp0DSTServerConsole.vbs"
    for /l %%a in (1,1,6) do (
    	set "console=%%console%%a%%"
    	call echo,!console!>>"%~dp0DSTServerConsole.vbs"
    )
    start /w "����̨����ͳ���" "%~dp0DSTServerConsole.vbs"
    del "%~dp0DSTServerConsole.vbs"
goto :eof

:Consoleshurufatiaozheng2
    call :write_log Consoleshurufatiaozheng2����
    set "console1=on error resume next"
    set "console2=SET WS=CreateObject(^"WScript.Shell^")"
    set "console3=WS.AppActivate ^"%CavesTitle%^""
    set "console4=WS.SendKeys ^"^^^^ ^""
    set "console5=wscript.sleep 1"
    set "console6=WS.AppActivate ^"%titlestr%^""
    set "console="
    echo,'���ű�������һ������%OneKeyVersion%�Զ�����>"%~dp0DSTServerConsole.vbs"
    for /l %%a in (1,1,6) do (
    	set "console=%%console%%a%%"
    	call echo,!console!>>"%~dp0DSTServerConsole.vbs"
    )
    start /w "����̨����ͳ���" "%~dp0DSTServerConsole.vbs"
    del "%~dp0DSTServerConsole.vbs"
goto :eof

rem --------------------����̨�˵�----------------------
:consolemenu
    call :displayui
    call :write_log ����̨�˵�����
    set op=LiuNianLiShang
    echo,������������������̨�����˵���ע�⣬����̨Ӧ����Ӣ�����뷨�£�����������������
    echo,  12---����ˢ�����ұ�š�%playernum%��         13----��Ʒˢ�ڱ������ǵ��ϡ�%cmdyorn%��
    echo,  0----������һ���˵�                  20----���λ���ڵ���or���¡�%choice_console%��
    echo,  �����������������������������������ķָ��ߩ�������������������������������
    echo,  1----�浵                            21----ʹ��%playernum%��������˳�ѡ��
    echo,  2----�ص�                            22----�г���ǰ�����û�
    echo,  3----���³�ʼ����Ϸ                  23----�����˼��ϵ���%playernum%�������
    echo,  4----������������                    24----��û�����ʲô(��_��)
    echo,  5----��رշ�����                    25----��û�����ʲô(��_��)
    echo,  6----��ֹ��Ҽ�����Ϸ                26----��û�����ʲô(��_��)
    echo,  7----������Ҽ�����Ϸ                27----��û�����ʲô(��_��)
    echo,  8----ϵͳ����,ֻ֧��Ӣ��             28----��û�����ʲô(��_��)
    echo,  9----����������                      29----��û�����ʲô(��_��)
    echo,  10---�л����뷨��ˢ��ʧ����ִ�У�    30----��û�����ʲô(��_��)
    echo,  11---�ظ���һ������                  31----��û�����ʲô(��_��)
    echo,  h----����                            32----��û�����ʲô(��_��)
    echo,  ����- �������������Ʒ�����������Ļ�Ӣ�ģ���ˢ�뱳����ˢ�ڵ���
    echo,������������������������������������������������������������������������������
    set /p op="---��������������Ҫˢ�����Ʒ��������Ӣ���������س�ȷ�ϣ�"
    if "%op%"=="LiuNianLiShang" (
        call :write_log ����̨�����˵��������������󡭡�
        echo �������󣬰����������&pause >nul&goto consolemenu
    )
    if "%op%"=="20" (
        if "%choice_console%" == "����" (
            call :write_log �������λ���ڵ��ϡ���
            set "choice_console=����"
        ) else (
            set "choice_console=����"
            call :write_log �������λ���ڵ��ϡ���
        )
        call :save_One_Key_setting_ini
        goto consolemenu
    )
    if "%op%"=="12" (
    	set "op"="err"
    	call :write_log ���Ľ���ˢ����ұ�š���
    	set /p op=���������ˢ�����ұ�ţ���ұ��Ϊ��TAB�������б��е�λ�ã�
    	if "!op!" == "err" echo �������󣬰����������&pause >nul&goto consolemenu
    	if !op! LSS 0 echo �������󣬰����������&pause >nul&goto consolemenu
    	if !op! GTR 250 echo ������������,����������ع���˵���&pause>nul&goto consolemenu
    	set "playernum=!op!"
    	call :save_One_Key_setting_ini
    	goto consolemenu
    )
    if "%op%"=="13" (
        
        if "%cmdyorn%" == "����" (
            call :write_log ������Ʒˢ�ڵ��ϡ���
            SET "cmdyorn=����"
        ) else (
            call :write_log ������Ʒˢ�ڱ�������
            SET "cmdyorn=����"
        )
        call :save_One_Key_setting_ini
        goto consolemenu
    )
    if "%op%"=="11" call :ConsoleOutput&goto consolemenu

    if "%op%"=="21" (
        call :write_log "ʹ��%playernum%��������˳�ѡ��"
        set "consolecmd=c_despawn{(}AllPlayers{[}%playernum%{]}{)}{enter}{enter}"
        call :ConsoleOutput
        goto consolemenu
    )
    if "%op%"=="22" (
        call :write_log �г���ǰ�����û�
        set "consolecmd=c_listplayers{(}{)}{enter}{enter}"
        call :ConsoleOutput
        goto consolemenu
    )
    if "%op%"=="23" (
        call :write_log "�����˼��ϵ���%playernum%�������"
        set "consolecmd=local x,y,z ^= AllPlayers{[}%playernum%{]}.Transform:GetWorldPosition{(}{)} for k,v in pairs{(}AllPlayers{)} do v.Transform:SetPosition{(}x,y,z{)} end{enter}{enter}"
        call :ConsoleOutput
        goto consolemenu
    )
    rem if "%op%"=="24" (
    rem    set "consolecmd=for i, v in ipairs{(}AllPlayers{)} do if i ^=^= %playernum% local player ^=v if player ~^= nil then SuUsed{(}+{'}c_godmode+{'}, true{)} if player:HasTag{(}+{'}playerghost+{'}{)} then player:PushEvent{(}+{'}respawnfromghost+{'}{)} print{(}+{'}Reviving +{'}..player.name..+{'} from ghost.+{'}{)} return elseif player.components.health ~^= nil then local godmode ^= player.components.health.invincible player.components.health:SetInvincible{(}not godmode{)} print{(}+{'}God mode: +{'}..tostring{(}not godmode{)}{)} end end end"
    rem    call :ConsoleOutput
    rem    goto consolemenu
    rem )

    set "consolecmd=c_save{(}{)}{enter}{enter}"
    if "%op%"=="1" (
        call :write_log �浵����
        call :ConsoleOutput&goto consolemenu
    )
    if "%op%"=="2" (
        call :consoleconfirm
        
        set /p numOfRoll=�ص�����಻Ҫ������ʣ��浵������һ����6�������ص����������С��һ��������ʣ��浵���������������ʼ�����磬�������ǰ���ݴ浵��������ص�����:
        call :write_log "�ص�!numOfRoll!������"
        call set "consolecmd=c_rollback{(}^%%numOfRoll%%^{)}{enter}{enter}"
        call :ConsoleOutput&goto consolemenu
    )
    set "consolecmd=c_regenerateworld{(}{)}{enter}{enter}"
    if "%op%"=="3" call :consoleconfirm&call :ConsoleOutput&goto consolemenu
    set "consolecmd=c_reset{(}{)}{enter}{enter}"
    if "%op%"=="4" call :consoleconfirm&call :ConsoleOutput&goto consolemenu
    set "consolecmd=c_shutdown{(}{)}{enter}{enter}"
    if "%op%"=="5" (
        CALL :consoleconfirm
        call :DoubleConsoleOutput
        goto ui
    )
    set "consolecmd=TheNet:SetAllowIncomingConnections{(}false{)}{enter}{enter}"
    if "%op%"=="6" call :ConsoleOutput&goto consolemenu
    set "consolecmd=TheNet:SetAllowIncomingConnections{(}true{)}{enter}{enter}"
    if "%op%"=="7" call :ConsoleOutput&goto consolemenu
    if "%op%"=="8" call :announce&goto consolemenu
    set "consolecmd=for k{,}v in pairs{(}AllPlayers{)} do v{:}PushEvent{(}{'}respawnfromghost{'}{)} end{enter}{enter}"
    if "%op%"=="9" call :ConsoleOutput&goto consolemenu
    if "%op%"=="h" call :consolehelp&goto consolemenu
    if "%op%"=="10" call :Consoleshurufatiaozheng1&call :Consoleshurufatiaozheng2&goto consolemenu
    if "%op%"=="0" goto ui
    if "%advancedconsolemod%" NEQ "true" (
    	call :displayui
    	echo ��������������������������������һ������̨���橤������������������������������
    	ECHO,         1��Ϊ�˱������ĵ���Ϸ�ԣ�Ĭ�Ϲرոù��ܣ�
    	echo,         2�������Ҫʹ������һ�������������ø߼�����̨����
    	echo ������������������������������������������������������������������������������
    	echo,���������������
    	pause>NUl
    	GOTO consolemenu
    )
GOTO searchcmd
goto consolemenu

rem ------------�����û�����Ĺؼ���������Ӧ����Ʒ�����Ȳ���ʾ����-------------------
:searchcmd

    rem set /p cmdstr=������Ҫ�������������ƣ����������ģ���Ӣ�ģ�
    call :displayui
    call :write_log �����û�����Ĺؼ���������Ӧ����Ʒ�����Ȳ���ʾ��������
    echo ������������������̨�����˵���ע�⣬����̨Ӧ����Ӣ�����뷨�£�����������������
    set searchflag=0
    set searchret=0
    for /F "usebackq tokens=1,2* delims=:" %%i in (`findstr /n "%op%" !nowpath!`) do (
    	 if %%i GEQ !consoledata! (
    	 		set /a searchret=!searchret!+1
    	 		echo       !searchret!:%%j
    	 )
    )
    if %searchret% == 0 (
    	echo                  1����������û���ҵ�����Ҫ�Ķ���
    	echo                  2�����Ż��ؼ��֣�ȷ���Ƿ��������
    	echo                  3����������Խ���Ҫˢ�Ķ�����ӵ�һ����ȥ
    	echo                  4������ף����Ϸ���
    	echo ������������������������������������������������������������������������������
    	pause
    	goto consolemenu
    )
    set cmdstr=0
    set cmdsum=1
    echo ������������������������������������������������������������������������������
    rem --------------����̨��Ʒ�б���Ҳ���������̨�����㷨-----------------
    set /p cmdstr=���ҵ�%searchret%�������Ʒ��������Ҫˢ��Ʒǰ��ı�ţ�
    rem ----------------����Ϸ��Լ��--------------------
    if %cmdstr% GTR %searchret% echo �������ݴ������������&pause>nul&goto consolemenu
    if %cmdstr% LSS 1 echo �������ݴ������������&pause>nul&goto consolemenu
    set searchflag=0
    set /p cmdsum=������Ҫˢ��Ʒ��������
    if %cmdsum% GTR 1000 echo ��˵ˢ��̫������������Ŷ����ˢһ��ɣ������������&pause>nul&goto consolemenu
    if %cmdsum% LSS 1 echo �������ݴ������������&pause>nul&goto consolemenu
    set searchret=0
    set connum=0
    set searchret=0
    rem ----------------�����㷨---------------
    for /F "usebackq tokens=1,2* delims=:" %%i in (`findstr /n "%op%" %0`) do (
    	 if %%i GEQ !consoledata! (
    	 		set /a searchret=!searchret!+1
    	 )
    	 if "!searchret!"=="%cmdstr%" call set cmdstr=%%i&goto connext
    )
    :connext
    set /a cmdstr=cmdstr-1
    rem set cmdyorn=0
    rem set /p cmdyorn=Ҫˢ�ڵ���������1������ˢ�뱳����
    rem Ҫˢ�ڵ���������1������ˢ�뱳����
    rem -----------------�������̨�����㷨-------------------
    for /F "skip=%cmdstr% usebackq tokens=1,2*" %%i in (%0) do (
    	if "%cmdyorn%" neq "����" (
    		rem call set "consolecmd=c_spawn{(}+{'}%%%i+{'},!cmdsum!{)}{enter}{enter}"
    		set "consolecmd=for i = 1,!cmdsum! do inst =DebugSpawn{(}+{'}%%i+{'}{)} inst.Transform:SetPosition{(}AllPlayers{[}%playernum%{]}.Transform:GetWorldPosition{(}{)}{)} end SetDebugEntity{(}inst{)} SuUsed{(}+{'}c_spawn_+{'}..+{'}%%i+{'} , true{)}{enter}{enter}"
    		call :ConsoleOutput
    		goto consolemenu
    	)
    rem call set "consolecmd=c_give{(}+{'}%%%i+{'},!cmdsum!{)}{enter}{enter}"
    	call set "consolecmd=for i=1,!cmdsum! do AllPlayers{[}%playernum%{]}.components.inventory:GiveItem{(}SpawnPrefab{(}+{'}%%i+{'}{)}{)} end{enter}{enter}"
    	call :ConsoleOutput>nul
    	goto consolemenu
    )
goto consolemenu

:announce
    call :write_log ���͹��桭��
    set /p annuounceStr=�����빫������:
    rem set /p =%annuounceStr%<nul>"%~dp0annuounceStr.txt"
    rem call :codeconvert
    rem if exist "%~dp0codeconvert.vbs" (
    	rem cscript "%~dp0codeconvert.vbs" "%~dp0annuounceStr.txt" 1 1>nul 2>nul
    	rem del "%~dp0codeconvert.vbs"
    rem )
    rem for /f "usebackq delims= " %%a in ("%~dp0annuounceStr.txt") do set "annuounceStr=%%a"
    rem echo,%annuounceStr%
    call set "consolecmd=c_announce{(}+{'}%%annuounceStr%%+{'}{)}{enter}{enter}"
    call :ConsoleOutput
goto :eof

:consolehelp
    call :displayui
    call :write_log ����һ������̨��������
    echo ��������������������������������һ������̨������������������������������������
    echo    1��һ������̨ԭ����ʹ��VBS SendKeys ����ģ�ⰴ�����ͣ�ɱ���п�������
    echo    2�������ɣ����������Բ��ô˲��ֹ��ܣ���Ϊһ����Դ���ǿ��ŵģ�ֻҪ
    echo    3�����Ǵ��ҷ���һ����;����ȡ�ľͲ��������⣬�������һ�������Ķ�Դ��
    echo    4�����棬�������ˢ�뱳���Ķ���ˢ���˱����п��������Ϸ������ˢ�뽨���Ȳ��ܷ��ڱ����Ķ�����ʱ���밴21�л��ɡ����ϡ�ˢ�뷽ʽ
    echo    5�����ˢ�벻�ɹ���ȷ����ĵ��Ͽ���̨���ڴ���Ӣ�����뷨�£����԰�10�����л�
    echo ������������������������������������������������������������������������������
    pause
goto :eof

rem -----------------�ػ������ӳ���------------------------
:serverxind
    call :displayui
    call :write_log �ػ������ӳ��򡭡�
    echo �����������������������������������������ػ�����������������������������������
    echo     1����ǰ���ڷ����������ػ�ģʽ����Ҫ�˳������ػ��밴Y
    echo     2����ǰʱ��%date% %time:~0,-6%
    echo ������������������������������������������������������������������������������
    if "%xind%"=="true" (
    	for /f "usebackq" %%i in (`dir "%Personal%DoNotStarveTogether\" /A:D /B`) do (
    	    rem �ų������Զ����ɵ��ļ���
    		if "%%i" NEQ "client_save" (
    			if "%%i" NEQ "save" (
    			    if "%%i" NEQ "save.old" (
    					set "server_is_running_or_not=false"
    					if exist "%Personal%DoNotStarveTogether\%%i\runningflag.lnls" (
    						for /f "usebackq delims= " %%a in ("%Personal%DoNotStarveTogether\%%i\runningflag.lnls") do set "server_is_running_or_not=%%a"
    					)
    					if "!server_is_running_or_not!"=="true" (
    						set "clustername=%%i"
    						set "OverworldTitle=�{��ߨT��һ��������Overworld �浵�ۡ�!clustername!��һ���汾��%OneKeyVersion%���������汾��%dstver%��"
    						set "CavesTitle=�{��ߨT��һ��������Caves �浵�ۡ�!clustername!��һ���汾��%OneKeyVersion%���������汾��%dstver%��"
    						echo,  ���ڼ��浵��Ϊ��%%i���ķ���������״̬����
    						call :write_log "���ڼ��浵��Ϊ��%%i���ķ���������״̬����"
    						set "existserver=0"
    						tasklist /fi "windowtitle eq !OverworldTitle!"|find "dontstarve_dedicated_serv">nul&&set "existserver=1"
    						if "!existserver!" NEQ "1" (
    						    call :write_log ���Ϸ������쳣���������ڹرղ����������˴浵�۵����з���������
    							echo,  ���Ϸ������쳣���������ڹرղ����������˴浵�۵����з���������
    							call :killserver
    							call :startserver
    							choice /c YN /t 40 /d N /m "  ��ʱ40�룬�ȴ���������������"
    							if "!errorlevel!" == "2" goto serverxind
    							set "xind=false"
    							goto ui
    						)
    						if exist "%Personal%DoNotStarveTogether\!clustername!\%cavesarchive%" (
    							set "existserver=0"
    							tasklist /fi "windowtitle eq !CavesTitle!"|find "dontstarve_dedicated_serv">nul&&set "existserver=1"
    							if "!existserver!" NEQ "1" (
    							    call :write_log ���·������쳣���������ڹرղ����������˴浵�۵����з���������
    								echo,  ���·������쳣���������ڹرղ����������˴浵�۵����з���������
    								call :killserver
    								call :startserver
    								choice /c YN /t 40 /d N /m "  ��ʱ40�룬�ȴ���������������"
    								if "!errorlevel!" == "2" goto serverxind
    								set "xind=false"
    								goto ui
    							)
    						)
    						call :write_log "�浵��Ϊ��%%i���ķ������������������С���"
    						echo,  �浵��Ϊ��%%i���ķ������������������С���
    				    )
    				)
    			)
    		)
    	)
        choice /c YN /t 4 /d N /m "��ȡ���ػ������밴Y���������һֱ�ػ��Ѿ������ķ���������"
    	if "!errorlevel!" neq "2" (
    	    set "xind=false"
    		goto ui
    	)
    	goto serverxind
    )
goto :eof

:miswt
    call :write_log �����״����ж������ɺ���
    set "missing0=Wrote to someone I care:"
    set "missing1=1��Missing someone in the midnight,I become so sad."
    set "missing2=2��I lost myself while lost my white cat."
    set "missing3=3��Whoever take away someone I care,please take good care of."
    set "missing4=4��You wouldn't known how did i wanner to play this game with you."
    set "missing5=5��Excuse for taking your time, I just said something making no difference."
    set "missing6=6��Now,you can start your DSTSERVER immediately."
    set  "initui1=                              ******       ******        "
    set  "initui2=                            **********   **********      "
    set  "initui3=                          ************* *************  "
    set  "initui4=                         *****************************  "
    set  "initui5=                         *****************************   "
    set  "initui6=                         *****************************      "
    set  "initui7=                          ***************************   "
    set  "initui8=                            ***********************     "
    set  "initui9=                              *******************       "
    set "initui10=                                ***************     "
    set "initui11=                                  ***********    "
    set "initui12=                                    *******      "
    set "initui13=                                      ***   "
    set "initui14=                                       *  "
    set "initui15="
    set "initui16="
    set "initui17="
    set "initui18="

    set "song1=˭���ǵ���˭��˵��Զ�İ���	"
    set "song2=��ǰ��һ�仰�������Ժ���˿�	"
    set "song3=����̫��˭���ǵõ�����Щ����	"
    set "song4=�Һ�����ǣ�֣�˵Ҫһ���ߵ����	"
    set "song5=���Ƕ����ˣ�����·���˶��	"
    set "song6=����������ģ���һ�죬��һ�춼��ͣ��	"
    set "song7=��ʱ��˵�滰����Ȼ��Ҳ����	"
    set "song8=��������Ժ����Ƕ���֪���᲻�����Ժ�	"
    set "song9=˭���ǵ���˭��˵��Զ�İ���	"
    set "song10=��ǰ��һ�仰�������Ժ���˿�	"
    set "song11=����̫��û�˼ǵõ�����Щ����	"
    set "song12=�Һ�����ǣ��˵Ҫһ���ߵ����	"
    set "song13=���Ƕ����ˣ�ȴû�취������	"
    set "song14=�����Ķ��Ի���ô˵����ô˵ ��û�о�	"
    set "song15=�װ���Ϊʲô��Ҳ����Ҳ����	"
    set "song16=�����మ���˵��ŶԷ���˵��ֿ�������	"
    set "song17=˭���ǵð��鿪ʼ�仯��ʱ��	"
    set "song18=�Һ�������п����˲�ͬ�����	"
    set "song19=�ߵ�̫Զ�����ߵ��ֲ�·��·��	"
    set "song20=�ǲ��������Ҫ�������෴����	"
    set "song21=˭���ǵ���˭��˵��Զ�İ���	"
    set "song22=��ǰ��һ�仰�������Ժ���˿�	"
    set "song23=����̫��û�˼ǵõ�����Щ����	"
    set "song24=�Һ�����ǣ��˵Ҫһ���ߵ����	"
    set "song25=�Һ�����ǣ��˵Ҫһ���ߵ����	"
    set "song26=	"
    set "song27=���ִ������˵��ʮ����Į	"
    set "song28=�ѹ�����Ȼ��Ϩ��Ļ�	"
    set "song29=����Ϊ������û�д�	"
    set "song30=����ΪŬ������ᶮ	"
    set "song31=��ô����Ҷ���ڳ�Ц��	"
    set "song32=Ҫ��װ��ǿ����	"
    set "song33=�����ڶ�ҹ�������	"
    set "song34=Ʈɢ�Ĳ���Ķ�����	"
    set "song35=�µ�����һ�����ȷ������������	"
    set "song36=ͣ���ڶ�ҹ�������	"
    set "song37=�Ҳ���Ҳ����װ����	"
    set "song38=��û˵�������Ҳ���ʹ	"
    set "song39=����Ϊ����ʱ��ʧ��	"
    set "song40=����Ϊ�����ˣ����ͷ	"
    set "song41=��ô�����ӵĹ��±��󣬶�����������˵	"
    set "song42=�����ڶ�ҹ�������	"
    set "song43=Ʈɢ�Ĳ��鶼����	"
    set "song44=�µ�����һ�����ȷ������������	"
    set "song45=ͣ���ڶ�ҹ�������	"
    set "song46=�Ҳ���Ҳ����װ����	"
    set "song47=��û˵�������Ҳ���ʹ	"
    set "song48=ͣ���ڶ�ҹ�����	"
    set "song49=�Ҳ���Ҳ����װ����	"
    set "song50=ֻ��Ϊ��˵�����ǵȴ���ϸˮ����	"
    set "song51=��������������������	"
    set "song52=��û˵�������Ҳ���ʹ	"
    set "song53=	"
    set "song54=	"
    set "song55=����	"
    set "song56=������	"
    set "song57=һ�ݰ��ܳ��ܶ��ٵ����	"
    set "song58=����Ʈѩ�Ķ���	"
    set "song59=һ�仰��˺�Ѷ����ǣ��	"
    set "song60=��ñ�İ���˻�ңԶ	"
    set "song61=����İ�Խ�����	"
    set "song62=���Խ�ᱻ��Ϩ��	"
    set "song63=��ʱ���滰̫����	"
    set "song64=����ֻ��˵�Ż���	"
    set "song65=����ʱ�⵹��	"
    set "song66=������ʲô	"
    set "song67=����û˵��ȴ��Ҫ��	"
    set "song68=�����Ҳ�����	"
    set "song69=������Ժ�	"
    set "song70=����Һ��һ�ж�	"
    set "song71=�������������ʹ	"
    set "song72=һ����Ҫ�������ΰ���л	"
    set "song73=�Ÿ����ڹ¶��ﶬ��	"
    set "song74=����İ�Խ�����	"
    set "song75=���Խ�ᱻ��Ϩ��	"
    set "song76=��ʱ���滰̫����	"
    set "song77=����ֻ��˵�Ż���	"
    set "song78=����ʱ�⵹��	"
    set "song79=������ʲô	"
    set "song80=����û˵��ȴ��Ҫ��	"
    set "song81=�����Ҳ�����	"
    set "song82=������Ժ����Һ��һ�ж�	"
    set "song83=����磬��������ʹ	"
    set "song84=Ϊʲô�Ҹ� ���ǻ���	"
    set "song85=Խ��������	"
    set "song86=Ҳ�Ϳ�����	"
    set "song87=Ҳ���� ������Ҷ	"
    set "song88=���Ʒ���ȴ��׹��	"
    set "song89=����ʱ�⵹��������ʲô	"
    set "song90=����û˵��ȴ��Ҫ��	"
    set "song91=�����Ҳ�����	"
    set "song92=������Ժ����Һ��һ�ж�	"
    set "song93=�����������ʱ�⵹��	"
    set "song94=�����ʲô	"
    set "song95=һ��ѡ���һ򲻰���	"
    set "song96=�����������	"
    set "song97=���Ƿ񶮵���������Ȼ�ܻ�ͷ	"
    set "song98=����磬�������ļ�į	"
    set "song99=	"
    set "song100=	"
    set "song101=	"
    set "song102=һ����	"
    set "song103=����һ��һ�����ס�˹�	"
    set "song104=��ǿһ��һ��ж����αװ	"
    set "song105=�����ĳ�����������������Ļ���	"
    set "song106=��������ǵĵ�Ц�������	"
    set "song107=һ��������ס��һ����	"
    set "song108=һ����ȴֻ����һ����	"
    set "song109=���������ػؼ�̤�����ĵ�	"
    set "song110=�Ҳ���ʹֻ���㰮�Ĳ��ᶨ	"
    set "song111=һ���˳Է�	"
    set "song112=һ����˯	"
    set "song113=һ��������	"
    set "song114=һ������	"
    set "song115=һ���˰�����һ����	"
    set "song116=һ����ֻ����	"
    set "song117=�� ���˱�	"
    set "song118=����һ��С���	"
    set "song119=�������Ҫ����	"
    set "song120=��Ҳ����	"
    set "song121=��Ҳ�����	"
    set "song122=�����뵽ʧȥ��	"
    set "song123=����Ը�ɺ�	"
    set "song124=�������������	"
    set "song125=��һ����ʹ	"
    set "song126=��һ������	"
    set "song127=��һ�����غ�����	"
    set "song128=��һ������	"
    set "song129=��һ���˴�	"
    set "song130=��һ���˻�ϲ�򱯲�Ҫ˭����	"
    set "song131=��һ���˷�	"
    set "song132=��һ���˶�	"
    set "song133=��һ���˶���ع�ͷ	"
    set "song134=����֪��	"
    set "song135=�㲻�����	"
    set "song136=��������	"
    set "song137=�������ֻʣ����	"
    set "song138=��һ������	"
    set "song139=����˵����	"
    set "song140=����������	"
    set "song141=�Ӵ�һ����	"
    set "song142=����һ������	"
    set "song143=�Ҳ����㰮��	"
    set "song144=��ķ�������	"
    set "song145=һ���˺úõ�	"
    set "turncmd1=��������һ����"
    set "turncmd2=����������һ����"
    set "turncmd3=����������������һ����"
    set "turncmd4=�ٲ���������һ���������㣡"
    set "turnon1='%turncmd1%' �����ڲ����ⲿ���Ҳ���ǿ����еĳ���"
    set "turnon2='%turncmd2%' �����ڲ����ⲿ���Ҳ���ǿ����еĳ���"
    set "turnon3='%turncmd3%' �����ڲ����ⲿ���Ҳ���ǿ����еĳ���"
    set "turnont=���������ļ���"
    rem �״�����һ����ʱ�����һ����㶯��Ч��
    echo,Microsoft Windows [�汾 6.1.7601]
    echo,��Ȩ���� (c) 2009 Microsoft Corporation����������Ȩ����
    echo,
    call :write_log ������������׼����ϣ�������ʾ������㻭�桭��
    for /l %%a in (1,1,4) do (
        set /p=C:\Users\LiuNianLiShang^><nul
        for /l %%k in (1,1,20) do (
    		call :delay 1 >nul
        )
        for /l %%i in (0,1,12) do (
            call set "turncmd=%%turncmd%%a%%"
            set "output=!turncmd:~%%i,1!"
            if "!output!" neq " " (
               set /p=!turncmd:~%%i,1!<nul
            ) else (
               set /p=t  <nul
            )
           	for /l %%k in (1,1,4) do (
        		call :delay 1 >nul
    	    )
        )
        for /l %%k in (1,1,10) do (
    		call :delay 1 >nul
        )
        if "%%a" neq "4" (
            echo,
            for /l %%i in (0,1,31) do (
                call set "turnon=%%turnon%%a%%"
                set "output=!turnon:~%%i,1!"
                if "!output!" neq " " (
                   set /p=!turnon:~%%i,1!<nul
                ) else (
                   set /p=t  <nul
                )
               	for /l %%k in (1,1,1) do (
            		call :delay 1 >nul
        	    )
            )
            echo,
            for /l %%i in (0,1,7) do (
                call set "turnont=%%turnont%%"
                set "output=!turnont:~%%i,1!"
                if "!output!" neq " " (
                   set /p=!turnont:~%%i,1!<nul
                ) else (
                   set /p=t  <nul
                )
               	for /l %%k in (1,1,1) do (
            		call :delay 1 >nul
        	    )
            )
            echo,
        )
        echo,
    )
    for /l %%k in (1,1,50) do (
        call :delay 1 >nul
    )
    echo,-_-^^!
    for /l %%k in (1,1,50) do (
        call :delay 1 >nul
    )
    echo,
    echo,������������һ������
    set /p a=">=============================================================================="<nul
    for /l %%i in (1,1,80) do (
    	set /p aa=<nul
    )
    for /l %%i in (1,1,80) do (
    	set /p aa=^><nul
    	call :delay 1 >nul
    )
    call :write_log ������㻭���������

    date /t|FINDSTR "08/30">nul&&(
        cls
        for /l %%c in (1,1,2) do (

            for /l %%b in (-1,1,15) do (
            	set "initui=%%initui%%b%%"
            	call echo,!initui!
            )
            for /l %%k in (1,1,30) do (
        		call :delay 10 >nul
    	    )
    	    cls
            for /l %%k in (1,1,30) do (
        		call :delay 10 >nul
    	    )
        )
        for /l %%b in (-1,1,15) do (
        	set "initui=%%initui%%b%%"
        	call echo,!initui!
        )
        for /l %%a in (0,1,6) do (
            set /p=l     <nul
            for /l %%i in (0,1,90) do (
                call set "missing=%%missing%%a%%"
                set "output=!missing:~%%i,1!"
                if "!output!" neq " " (
                   set /p=!missing:~%%i,1!<nul
                ) else (
                   set /p=t  <nul
                )
               	for /l %%k in (1,1,1) do (
            		call :delay 10 >nul
        	    )
            )
            echo,
        )
        for /l %%c in (1,1,2) do (
            cls
            for /l %%k in (1,1,30) do (
        		call :delay 10 >nul
    	    )
            for /l %%b in (-1,1,15) do (
            	set "initui=%%initui%%b%%"
            	call echo,!initui!
            )
            for /l %%b in (0,1,6) do (
            	set "missing=%%missing%%b%%"
            	call echo,    !missing!
            )
            for /l %%k in (1,1,30) do (
        		call :delay 10 >nul
    	    )
        )    
        rem    for /l %%a in (1,1,145) do (
        rem        set /p=l     <nul
        rem        for /l %%i in (0,1,90) do (
        rem            call set "song=%%song%%a%%"
        rem            set "output=!song:~%%i,1!"
        rem            if "!output!" neq " " (
        rem               set /p=!song:~%%i,1!<nul
        rem            ) else (
        rem               set /p=t  <nul
        rem            )
        rem           	for /l %%k in (1,1,1) do (
        rem        		call :delay 10 >nul
        rem    	    )
        rem        )
        rem        echo,
        rem    )    
    )
goto :eof

rem ---------------------д��һ�������ļ�--------------------------
:save_One_Key_setting_ini
    %~d0
    cd "%~dp0"
    call :write_log д��һ�������ļ�����
    echo,[�����ĵ�������һ���������ķ�����%OneKeyVersion%�Զ�����]>LiuNianOneKey.ini
    echo,[�ĵ�����ʱ�䣺%date% %time:~0,-6%]>>LiuNianOneKey.ini
    echo,[·������]>>LiuNianOneKey.ini
    call :write_log "Personal=%Personal%"
    call :write_log "dstdir=%dstdir%"
    echo,Personal=%Personal%>>LiuNianOneKey.ini
    echo,dstdir=%dstdir%>>LiuNianOneKey.ini
    echo,[��������]>>LiuNianOneKey.ini
    call :write_log "clustername=%clustername%"
    call :write_log "cmdyorn=%cmdyorn%"
    call :write_log "choice_console=%choice_console%"
    call :write_log "playernum=!playernum!"
    echo,clustername=%clustername%>>LiuNianOneKey.ini
    echo,cmdyorn=%cmdyorn%>>LiuNianOneKey.ini
    echo,choice_console=%choice_console%>>LiuNianOneKey.ini
    echo,playernum=!playernum!>>LiuNianOneKey.ini
    
goto :eof

rem ---------------------��һ�������ļ���ȡ����--------------------------
:read_One_Key_setting_ini
    call :write_log ��һ�������ļ���ȡ���á���
    set tmp=0
    for /f "eol=[ tokens=1,2* usebackq delims==" %%i in ("%~dp0LiuNianOneKey.ini") do (
        set /a tmp+=1
        call set "%%i=%%j"
        call :write_log "%%i=%%j"
    )

goto :eof

rem -----------------����ʽ����cluster.ini------------------------
:cluster_ini
    call :write_log ����ʽ����cluster.ini����
    set "game_mode=endless"
    set "max_players=6"
    set "pvp=false"
    set "pause_when_empty=true"
    set "lan_only_cluster=false"
    set "offline_server=false"
    set "cluster_description=���������ɡ�����һ���������ķ��������������˽�������Ⱥ497398445"
    set "cluster_name=��������"
    set "cluster_intention=cooperative"
    set "cluster_password="
    set "console_enabled=true"
    set "shard_enabled=true"
    set "bind_ip=127.0.0.1"
    set "master_ip=127.0.0.1"
    set "master_port=%1"
    set "cluster_key=defaultPass"
    if not exist "%Personal%DoNotStarveTogether\%clustername%\cluster.ini" goto aotosetcluster
    call :codeconvert
    if exist "%~dp0codeconvert.vbs" (
    	cscript "%~dp0codeconvert.vbs" "%Personal%DoNotStarveTogether\%clustername%\cluster.ini" 1>nul 2>nul
    	del "%~dp0codeconvert.vbs"
    )
    set tmp=0
    for /f "eol=[ tokens=1,2 usebackq delims== " %%i in ("%Personal%DoNotStarveTogether\%clustername%\cluster.ini") do (
    	set /a tmp+=1
    	call set "%%i=%%j"
    )
    if "%2"=="1" (
    	if "%runningmod%" NEQ "steam" (
    		set "lan_only_cluster=true"
    		set "offline_server=true"
    	) else (
    		set "lan_only_cluster=false"
    		set "offline_server=false"
    	)
    	set master_port=%1
    )
goto savecluster

:aotosetcluster
    call :write_log aotosetcluster����
    if not exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" set "cluster22=shard_enabled = false"
    rem -------------���ý����������---------------
    call :interactive_ui

    echo,���ڱ�����������á���
    :savecluster
    set "cluster1=[GAMEPLAY]"
    set "cluster2=game_mode = %game_mode%"
    set "cluster3=max_players = %max_players%"
    set "cluster4=pvp = %pvp%"
    set "cluster5=pause_when_empty = %pause_when_empty%"
    set "cluster6="
    set "cluster7="
    set "cluster8=[NETWORK]"
    set "cluster9=lan_only_cluster = %lan_only_cluster%"
    set "cluster10=offline_server = %offline_server%"
    set "cluster11=cluster_description = %cluster_description%"
    set "cluster12=cluster_name = %cluster_name%"
    set "cluster13=cluster_intention = %cluster_intention%"
    set "cluster14=cluster_password = %cluster_password%"
    set "cluster15="
    set "cluster16="
    set "cluster17=[MISC]"
    set "cluster18=console_enabled = %console_enabled%"
    set "cluster19="
    set "cluster20="
    set "cluster21=[SHARD]"
    set "cluster22=shard_enabled = %shard_enabled%"
    set "cluster23=bind_ip = %bind_ip%"
    set "cluster24=master_ip = %master_ip%"
    set "cluster25=master_port = %master_port%"
    set "cluster26=cluster_key = %cluster_key%"
    set "cluster="

    if not exist "%Personal%DoNotStarveTogether\%clustername%\" md "%Personal%DoNotStarveTogether\%clustername%\"
    echo,>"%Personal%DoNotStarveTogether\%clustername%\cluster.ini"
    for /l %%a in (1,1,26) do (
    	set "cluster=%%cluster%%a%%"
    	call echo,!cluster!>>"%Personal%DoNotStarveTogether\%clustername%\cluster.ini"
    )
    call :codeconvert
    if exist "%~dp0codeconvert.vbs" (
    	cscript "%~dp0codeconvert.vbs" "%Personal%DoNotStarveTogether\%clustername%\cluster.ini" 1 1>nul 2>nul
    	del "%~dp0codeconvert.vbs"
    )
goto :eof

rem -----------------------------���ɵ��������ļ�---------------------------------
:Overworld_settings_ini
    call :write_log ���ɵ��������ļ�����
    echo,�������ɵ���settings.ini����
    set "Overworldpth=%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\"
    if not exist "%Overworldpth%save" md "%Overworldpth%save"
    if "%1"=="1" (
    	echo �������ɡ���>nul
    ) else (
    	if exist "%Overworldpth%settings.ini" (
    		set "game_mode= endless"
    		set "max_players= 6"
    		set "cluster_intention= cooperative"
    		set "server_password="
    		set "pvp= false"
    		set "pause_when_empty= true"
    		set "shard_enable= true"
    	    set "default_server_name=��������"
    		set "default_server_description=���������ɡ�����һ���������ķ��������������˽�������Ⱥ497398445"
    		call :codeconvert
    		if exist "%~dp0codeconvert.vbs" (
    			cscript "%~dp0codeconvert.vbs" "%Overworldpth%settings.ini" 1>nul 2>nul
    			del "%~dp0codeconvert.vbs"
    		)
    		set tmp=0
    		for /f "eol=[ tokens=1,2 usebackq delims== " %%i in ("%Overworldpth%settings.ini") do (
    			set /a tmp+=1
    			if "%%i" neq "master_port" (
    				if "%%i" neq "server_port" (
    					call set "%%i=%%j"
    				)
    			)
    		)
    	)
    )
    set "Overworld_settings_ini1=[misc]"
    set "Overworld_settings_ini2=console_enabled = true"
    set "Overworld_settings_ini3=autocompiler_enabled = false"
    set "Overworld_settings_ini4="
    set "Overworld_settings_ini5="
    set "Overworld_settings_ini6=[network]"
    set "Overworld_settings_ini7=game_mode = %game_mode%"
    set "Overworld_settings_ini8=max_players = %max_players%"
    set "Overworld_settings_ini9=default_server_name = %default_server_name%"
    set "Overworld_settings_ini10=default_server_description = %default_server_description%"
    set "Overworld_settings_ini11=cluster_intention = %cluster_intention%"
    set "Overworld_settings_ini12=server_password = %server_password%"
    set "Overworld_settings_ini13=pvp = %pvp%"
    set "Overworld_settings_ini14=pause_when_empty = %pause_when_empty%"
    set "Overworld_settings_ini15="
    set "Overworld_settings_ini16="
    set "Overworld_settings_ini17=[shard]"
    set "Overworld_settings_ini18=shard_enable = true"
    set "Overworld_settings_ini19=is_master = true"
    set "Overworld_settings_ini20=cluster_key = change_this_if_you_set_bind_ip"
    set "Overworld_settings_ini21=master_port = %master_port%"
    set "Overworld_settings_ini="

    if not exist "%Overworldpth%" md "%Overworldpth%"
    echo,>"%Overworldpth%settings.ini"
    for /l %%a in (1,1,21) do (
    	set "Overworld_settings_ini=%%Overworld_settings_ini%%a%%"
    	call echo,!Overworld_settings_ini!>>"%Overworldpth%settings.ini"
    )
    call :codeconvert
    if exist "%~dp0codeconvert.vbs" (
    	cscript "%~dp0codeconvert.vbs" "%Overworldpth%settings.ini" 1 1>nul 2>nul
    	del "%~dp0codeconvert.vbs"
    )
goto :eof

rem ----------------------���ɵ��������ļ�---------------------------
:Caves_settings_ini
    call :write_log Caves_settings_ini����
    echo,�������ɵ���settings.ini����
    set "Cavespth=%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\"
    if "%1"=="1" (
    	echo �������ɡ���>nul
    ) else (
    	if exist "%Cavespth%settings.ini" (
    		set "game_mode= endless"
    		set "max_players= 6"
    		set "cluster_intention= cooperative"
    		set "server_password="
    		set "pvp= false"
    		set "pause_when_empty= true"
    		set "shard_enable= true"
    		set "default_server_name=��������"
    		set "default_server_description=���������ɡ�����һ���������ķ��������������˽�������Ⱥ497398445"

    		set tmp=0
    		call :codeconvert
    		if exist "%~dp0codeconvert.vbs" (
    			cscript "%~dp0codeconvert.vbs" "%Cavespth%settings.ini" 1>nul 2>nul
    			del "%~dp0codeconvert.vbs"
    		)
    		rem -------------�Զ���ȡ���·����������ļ�---------------
    		for /f "eol=[ tokens=1,2 usebackq delims== " %%i in ("%Cavespth%settings.ini") do (
    			set /a tmp+=1
    			if "%%i" neq "master_port" (
    				if "%%i" neq "server_port" (
    					call set "%%i=%%j"
    				)
    			)
    		)
    	)
    )

    set "Caves_settings_ini1=[misc]"
    set "Caves_settings_ini2=console_enabled = true"
    set "Caves_settings_ini3=autocompiler_enabled = false"
    set "Caves_settings_ini4="
    set "Caves_settings_ini5="
    set "Caves_settings_ini6=[network]"
    set "Caves_settings_ini7=game_mode = %game_mode%"
    set "Caves_settings_ini8=server_port = %2"
    set "Caves_settings_ini9=max_players = %max_players%"
    set "Caves_settings_ini10=cluster_intention = %cluster_intention%"
    set "Caves_settings_ini11=default_server_name = %default_server_name%"
    set "Caves_settings_ini12=default_server_description = %default_server_description%"
    set "Caves_settings_ini13=server_password = %server_password%"
    set "Caves_settings_ini14=pvp = %pvp%"
    set "Caves_settings_ini15=pause_when_empty = %pause_when_empty%"
    set "Caves_settings_ini16="
    set "Caves_settings_ini17="
    set "Caves_settings_ini18=[shard]"
    set "Caves_settings_ini19=shard_enable = %shard_enable%"
    set "Caves_settings_ini20=is_master = false"
    set "Caves_settings_ini21=shard_name = LiuNianLiShang"
    set "Caves_settings_ini22=cluster_key = change_this_if_you_set_bind_ip"
    set "Caves_settings_ini23=master_ip = 127.0.0.1"
    set "Caves_settings_ini24=shard_id = 497398445"
    set "Caves_settings_ini25=master_port = %master_port%"
    set "Caves_settings_ini="

    if not exist "%Cavespth%" md "%Cavespth%"
    echo,>"%Cavespth%settings.ini"
    for /l %%a in (1,1,25) do (
    	set "Caves_settings_ini=%%Caves_settings_ini%%a%%"
    	call echo,!Caves_settings_ini!>>"%Cavespth%settings.ini"
    )
    call :codeconvert
    if exist "%~dp0codeconvert.vbs" (
    	cscript "%~dp0codeconvert.vbs" "%Cavespth%settings.ini" 1 1>nul 2>nul
    	del "%~dp0codeconvert.vbs"
    )
    call :cavesworldgenoverride
goto :eof

:master_server_ini
    call :write_log master_server_ini����
    set "masterserver1=[NETWORK]"
    set "masterserver2=server_port = %1"
    set "masterserver3="
    set "masterserver4="
    set "masterserver5=[SHARD]"
    set "masterserver6=is_master = true"
    set "masterserver="
    if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\" md "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\"
    echo,>"%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server.ini"
    for /l %%a in (1,1,6) do (
    	set "masterserver=%%masterserver%%a%%"
    	call echo,!masterserver!>>"%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server.ini"
    )
    call :codeconvert
    if exist "%~dp0codeconvert.vbs" (
    	cscript "%~dp0codeconvert.vbs" "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server.ini" 1 1>nul 2>nul
    	del "%~dp0codeconvert.vbs"
    )
    if "%dstver%" geq "173098" (
        if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\leveldataoverride.lua" (
            call :Overworldleveldataoverride    
        )
    )
goto :eof

:cave_server_ini
    call :write_log cave_server_ini����
    set "caveserver1=[NETWORK]"
    set "caveserver2=server_port = %1"
    set "caveserver3="
    set "caveserver4="
    set "caveserver5=[SHARD]"
    set "caveserver6=is_master = false"
    set "caveserver7=name = Caves"
    set "caveserver8=id = 497398445"
    set "caveserver9="
    set "caveserver10="
    set "caveserver11=[STEAM]"
    set "caveserver12=master_server_port = 27017"
    set "caveserver13=authentication_port = 8767"
    set "caveserver="
    if not exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" md "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\"
    echo,>"%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server.ini"
    for /l %%a in (1,1,13) do (
    	set "caveserver=%%caveserver%%a%%"
    	call echo,!caveserver!>>"%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server.ini"
    )
    call :codeconvert
    if exist "%~dp0codeconvert.vbs" (
    	cscript "%~dp0codeconvert.vbs" "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server.ini" 1 1>nul 2>nul
    	del "%~dp0codeconvert.vbs"
    )
    if "%dstver%" geq "173098" (
        if not exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\leveldataoverride.lua" (
            call :Cavesleveldataoverride    
        )
    )   else    (
        if not exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\worldgenoverride.lua" (
            call :cavesworldgenoverride
        )
    )
goto :eof

rem -----------------------�Զ����ɶ�Ѩ���������������ļ�-------------------------
:cavesworldgenoverride
    call :write_log �Զ����ɶ�Ѩ���������������ļ�����
    set "data=return { override_enabled=true, preset=^"DST_CAVE^" }"
    echo,return { override_enabled=true, preset=^"DST_CAVE^" } >"%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\worldgenoverride.lua"
    if exist "%~dp0codeconvert.vbs" (
    	cscript "%~dp0codeconvert.vbs" "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\worldgenoverride.lua" 1 1>nul 2>nul
    	del "%~dp0codeconvert.vbs"
    )
goto :eof

rem ----------------�����������-------------------
:interactive_ui
    call :displayui
    call :write_log �����������ļ�����������桭��
    echo �������������������������������Ƿ�Ҫ�Զ��巿�䩤������������������������������
    set op=n
    echo,        1-----------��   ���Ƽ�
    echo,        ����--------ʹ�������ṩ��Ĭ�����ã�
    echo ������������������������������������������������������������������������������
    set /p op=  ����������룺
    rem echo,  ����������������룬��������������ݶ���Ӱ������������ļ���һ����ʱ�������ݺϷ��Խ��м�飬�밴��Ҫ��������룬������ܵ��·���������ʧ�ܣ�����
    if "%runningmod%" NEQ "steam" (
    	set "lan_only_cluster=true"
    	set "offline_server=true"
    ) else (
    	set "lan_only_cluster=false"
    	set "offline_server=false"
    )
    if %op%==1 (
    	call :displayui
    	echo ����������������������������������ѡ����Ϸ��񩤩�����������������������������
    	set op=2
    	echo,        1--------social�����ʣ�
    	echo,        2--------cooperative�����������Ƽ�
    	echo,        3--------competitive��������
    	echo,        4--------madness�����
    	echo ������������������������������������������������������������������������������
    	set /p op=  ����������룺
    	if "!op!" neq "" (
    		if !op!==1 set "cluster_intention=social"
    		if !op!==2 set "cluster_intention=cooperative"
    		if !op!==3 set "cluster_intention=competitive"
    		if !op!==4 set "cluster_intention=madness"
    	)
    	call :displayui
    	echo �������������������������������������뷿��������������������������������������
    	echo,        ����ķ�����һ��Ư�������ְ�
    	echo ������������������������������������������������������������������������������
    	set /p op=  �����뷿������
    	if "!op!" neq "" (
    		set "cluster_name=!op!"
    		set "default_server_name=!op!"
    	)
    	call :displayui
    	echo �����������������������������������뷿����������������������������������������
    	set "op=���������ɡ�����һ���������ķ��������������˽�������Ⱥ497398445"
    	echo,   1������˽���һ����ķ���ɣ�������������װX��:
    	echo,   2�����������ɡ�����һ���������ķ��������������˽�������Ⱥ497398445
    	echo,   3�������֧�����ǣ�����ֱ�ӻس�ʹ�������������Ϊ�������������
    	echo ������������������������������������������������������������������������������
    	set /p op=  �����뷿��������
    	if "!op!" neq "" (
    		set "cluster_description=!op!"
    		set "default_server_description=!op!"
    	)
    	call :displayui
    	set op=0
    	echo ��������������������������������ѡ����Ϸģʽ��������������������������������
    	echo,        1--------survival�����棩
    	echo,        2--------wilderness����Ұ��
    	echo,        3--------endless���޾������Ƽ�
    	echo ������������������������������������������������������������������������������
    	set /p op=  ����������룺
    	if !op!==1 set "game_mode=survival"
    	if !op!==2 set "game_mode=wilderness"
    	if !op!==3 set "game_mode=endless"
    	call :displayui
    	echo �������������������������������Ƿ���PvP ������������������������������������
    	set op=0
    	echo,        �ҵĴ����Ѽ������ͣ���������PK��~~~~
    	echo,        1-----------����
    	echo,        ����--------�ر� ���Ƽ�
    	echo ������������������������������������������������������������������������������
    	set /p op=  ����������룺
    	if !op!==1 set "pvp=true"
    	call :displayui
    	echo �������������������������������뷿�������������������������������������������
    	set op=6
    	echo,        1��������������1~64֮���������� 
    	echo,        2����ܰ��ʾ��������Լ����Ե������������
    	echo ������������������������������������������������������������������������������
    	set /p op=  �����뷿���������������
    	set "max_players=!op!"
    	call :displayui
    	echo �������������������������������������뷿�����멤������������������������������
    	set "op="
    	echo,        1����Ҳ��������ܺ�����
    	echo,        2�����������ͼ���һ�����
    	echo ������������������������������������������������������������������������������
    	set /p op=  �����뷿�����룬ֱ�ӻس�Ϊ�������룺
    	set "cluster_password=!op!"
    	set "server_password=!op!"
    	call :displayui
    	echo �����������������������������Ƿ���������������ͣ����������������������������
    	set "op=0"
    	echo,        ����򿪣������õ�һ������
    	echo,        1-----------���� ���Ƽ�
    	echo,        ����--------�ر�
    	echo ������������������������������������������������������������������������������
    	set /p op=  ����������룺
    	if !op! NEQ 1 set "pause_when_empty=false"
    )
goto :eof

rem -------------���÷��������˿�--------------------
:setclusterport
    call :write_log ���÷��������˿�
    set "game_mode=endless"
    set "max_players=6"
    set "pvp=false"
    set "pause_when_empty=true"
    set "lan_only_cluster=false"
    set "offline_server=false"
    set "cluster_description=���������ɡ�����һ���������ķ��������������˽�������Ⱥ497398445"
    set "cluster_name=��������"
    set "cluster_intention=cooperative"
    set "cluster_password="
    set "console_enabled=true"
    set "shard_enabled=true"
    set "bind_ip=127.0.0.1"
    set "master_ip=127.0.0.1"
    set "master_port=%1"
    set "cluster_key=defaultPass"
goto savecluster

rem -------------���ݷ������������ֹرշ�����-----------------
:killserver
    call :write_log ���ݷ������������ֹرշ���������
    set "existserver=0"
    call :write_log "���ڹر�ʹ�ô浵�ۡ�%clustername%���ĵ��Ϸ���������"
    echo ���ڹر�ʹ�ô浵�ۡ�%clustername%���ĵ��Ϸ���������
    TASKKILL /F /FI "windowtitle eq %OverworldTitle%" >nul
    call :write_log "���ڹر�ʹ�ô浵�ۡ�%clustername%���ĵ��·���������"
    echo ���ڹر�ʹ�ô浵�ۡ�%clustername%���ĵ��·���������
    TASKKILL /F /FI "windowtitle eq %CavesTitle%" >nul
    if exist "%Personal%DoNotStarveTogether\%clustername%\runningflag.lnls" (
         call :write_log ������������б�־��������
    	 del "%Personal%DoNotStarveTogether\%clustername%\runningflag.lnls"
    )
goto :eof

rem --------------ö�ٵ�ǰ���ö˿�------------------
:get_available_port
    call :write_log ö�ٵ�ǰ���ö˿ڡ���
    echo,����ö�ٿ��õĶ˿ڡ���
    if "%1"=="" (
    	set "port=10998"
    ) else (
    	set "port=%1"
    )
    :portloop
    set portexist=0
    NETSTAT /an |FINDSTR "%port%">nul&&set portexist=1
    if "%portexist%"=="1" (
    	set /a port+=1
    	goto portloop
    )
    echo,�ҵ����õĶ˿ڣ�%port%
    call :write_log "�ҵ����õĶ˿ڣ�%port%"
    echo,����д�������ļ�����
goto :eof

rem -----------------��̬����˿ںŲ�����������-------------------
:startserver
    call :write_log ��̬����˿ںŲ���������������
    if "%oldversion%" NEQ "true" (
    	call :get_available_port 10888
    	call :cluster_ini !port! 1
    	if "%runningmod%"=="steam" (
    		call :get_available_port 10998
    		call :master_server_ini !port!
    		echo,�����������Ϸ���������
    		start "%OverworldTitle%" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %masterarchive% -port !port!
    		if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" (
    			call :get_available_port 11008
    			call :cave_server_ini !port!
    			echo,�����������·���������
    			start "%CavesTitle%" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %cavesarchive% -port !port!
    		)
    	) else (
    		call :get_available_port 10998
    		call :master_server_ini !port!
    		echo,�����������Ϸ���������
    		start "%OverworldTitle%" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %masterarchive% -port !port! -offline
    		if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" (
    			call :get_available_port 11008
    			call :cave_server_ini !port!
    			echo,�����������·���������
    			start "%CavesTitle%" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %cavesarchive% -port !port! -offline
    		)
    	)
    ) else (
    	call :get_available_port 10888
    	set "master_port=!port!"
    	if "!runningmod!"=="steam����" (
    		call :Overworld_settings_ini 0
    		call :get_available_port 10998
    		start /min "%OverworldTitle%" /d "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -conf_dir "DoNotStarveTogether\%clustername%\%masterarchive%" -console -port !port!
    		if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" (
    			call :Caves_settings_ini 0 !port!
    			call :get_available_port 11008
    			start /min "%CavesTitle%" /d "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -conf_dir "DoNotStarveTogether\%clustername%\%cavesarchive%" -console -port !port!
    		)
    	) else (
    		call :Overworld_settings_ini 0
    		call :get_available_port 10998
    		start /min "%OverworldTitle%" /d "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -conf_dir "DoNotStarveTogether\%clustername%\%masterarchive%" -console -offline -port !port!
    		if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" (
    			call :Caves_settings_ini 0 !port!
    			call :get_available_port 11008
    			start /min "%CavesTitle%" /d "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -conf_dir "DoNotStarveTogether\%clustername%\%cavesarchive%" -console -offline -port !port!
    		)
    	)
    )
    if exist "%Personal%DoNotStarveTogether\%clustername%\" (
    	set /p=true<nul>"%Personal%DoNotStarveTogether\%clustername%\runningflag.lnls"
    )
goto :eof

rem ----------------ʱ�䴦����--------------------
:get_time_for_dir
    call :write_log ʱ�䴦��������
    Set timea=%date%%time%
    set "timestr="
    set timef=0
    :timeloops
    set timec=%%timea:~%timef%,1%%
    call set timet=%timec%
    if "%timet%"==" " set "timet=0"
    if "%timet%"==":" set "timet=��"
    if "%timet%"=="/" set "timet=-"
    set timestr=%timestr%%timet%
    set /a timef+=1
    if %timef% gtr 23 (
    	set timestr=%timestr:~0,10%%timestr:~11,20%
    	GOTO :eof
    )
goto timeloops
goto :eof

:ReadleveldataoverrideSetting
    call :write_log ReadleveldataoverrideSetting����
    set "leveldataoverridepath=%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\leveldataoverride.lua"
    for /f "eol={ tokens=1,2,3,4* usebackq delims=={,} " %%i in (%leveldataoverridepath%) do (
    	if "%%j" neq "" (
    	    rem echo set %%i=%%j>>1.txt
    	    set %%i=%%j
    	)
    )
goto :eof

:Cavesleveldataoverride
    call :displayui
    call :write_log Cavesleveldataoverride ����
    echo ������������������������������ѡ��Ѩ�������ͩ�������������������������������
    echo,        1---------The Caves ���Ƽ�
    echo,        2---------Caves Plus
    echo ������������������������������������������������������������������������������
    set /p op=  �������������ͣ�
    if "!op!" neq "" (
        if "!op!" == "1" (
            call :DefaultCavesleveldataoverridesettings
        )   else   (
            if "!op!" == "2" (
                call :DarkerCavesleveldataoverridesettings
            )   else   (
                echo,������������������ѡ�񣬰��������������&goto Cavesleveldataoverride
            )
        )
    )
    set "Cavesleveldataoverrideui1=return {"
    set "Cavesleveldataoverrideui2=    background_node_range={ 0, 1 },"
    set "Cavesleveldataoverrideui3=    desc=%desc%,"
    set "Cavesleveldataoverrideui4=    hideminimap=%hideminimap%,"
    set "Cavesleveldataoverrideui5=    id=%id%,"
    set "Cavesleveldataoverrideui6=    location=%location%,"
    set "Cavesleveldataoverrideui7=    max_playlist_position=%max_playlist_position%,"
    set "Cavesleveldataoverrideui8=    min_playlist_position=%min_playlist_position%,"
    set "Cavesleveldataoverrideui9=    name=%name%,"
    set "Cavesleveldataoverrideui10=    numrandom_set_pieces=%numrandom_set_pieces%,"
    set "Cavesleveldataoverrideui11=    override_level_string=%override_level_string%,"
    set "Cavesleveldataoverrideui12=    overrides={"
    set "Cavesleveldataoverrideui13=        banana=%banana%,"
    set "Cavesleveldataoverrideui14=        bats=%bats%,"
    set "Cavesleveldataoverrideui15=        berrybush=%berrybush%,"
    set "Cavesleveldataoverrideui16=        boons=%boons%,"
    set "Cavesleveldataoverrideui17=        branching=%branching%,"
    set "Cavesleveldataoverrideui18=        bunnymen=%bunnymen%,"
    set "Cavesleveldataoverrideui19=        carrot=%carrot%,"
    set "Cavesleveldataoverrideui20=        cave_ponds=%cave_ponds%,"
    set "Cavesleveldataoverrideui21=        cave_spiders=%cave_spiders%,"
    set "Cavesleveldataoverrideui22=        cavelight=%cavelight%,"
    set "Cavesleveldataoverrideui23=        chess=%chess%,"
    set "Cavesleveldataoverrideui24=        earthquakes=%earthquakes%,"
    set "Cavesleveldataoverrideui25=        fern=%fern%,"
    set "Cavesleveldataoverrideui26=        fissure=%fissure%,"
    set "Cavesleveldataoverrideui27=        flint=%flint%,"
    set "Cavesleveldataoverrideui28=        flower_cave=%flower_cave%,"
    set "Cavesleveldataoverrideui29=        grass=%grass%,"
    set "Cavesleveldataoverrideui30=        layout_mode=%layout_mode%,"
    set "Cavesleveldataoverrideui31=        lichen=%lichen%,"
    set "Cavesleveldataoverrideui32=        liefs=%liefs%,"
    set "Cavesleveldataoverrideui33=        loop=%loop%,"
    set "Cavesleveldataoverrideui34=        marshbush=%marshbush%,"
    set "Cavesleveldataoverrideui35=        monkey=%monkey%,"
    set "Cavesleveldataoverrideui36=        mushroom=%mushroom%,"
    set "Cavesleveldataoverrideui37=        mushtree=%mushtree%,"
    set "Cavesleveldataoverrideui38=        rabbits=%rabbits%,"
    set "Cavesleveldataoverrideui39=        reeds=%reeds%,"
    set "Cavesleveldataoverrideui40=        regrowth=%regrowth%,"
    set "Cavesleveldataoverrideui41=        roads=%roads%,"
    set "Cavesleveldataoverrideui42=        rock=%rock%,"
    set "Cavesleveldataoverrideui43=        rocky=%rocky%,"
    set "Cavesleveldataoverrideui44=        sapling=%sapling%,"
    set "Cavesleveldataoverrideui45=        season_start=%season_start%,"
    set "Cavesleveldataoverrideui46=        slurper=%slurper%,"
    set "Cavesleveldataoverrideui47=        slurtles=%slurtles%,"
    set "Cavesleveldataoverrideui48=        start_location=%start_location%,"
    set "Cavesleveldataoverrideui49=        task_set=%task_set%,"
    set "Cavesleveldataoverrideui50=        tentacles=%tentacles%,"
    set "Cavesleveldataoverrideui51=        touchstone=%touchstone%,"
    set "Cavesleveldataoverrideui52=        trees=%trees%,"
    set "Cavesleveldataoverrideui53=        weather=%weather%,"
    set "Cavesleveldataoverrideui54=        world_size=%world_size%,"
    set "Cavesleveldataoverrideui55=        wormhole_prefab=%wormhole_prefab%,"
    set "Cavesleveldataoverrideui56=        wormlights=%wormlights%,"
    set "Cavesleveldataoverrideui57=        worms=%worms%"
    set "Cavesleveldataoverrideui58=    },"
    set "Cavesleveldataoverrideui59=    required_prefabs={ %required_prefabs% },"
    set "Cavesleveldataoverrideui60=    substitutes={ %substitutes% },"
    set "Cavesleveldataoverrideui61=    version=%version%"
    set "Cavesleveldataoverrideui62=}"
    set "Cavesleveldataoverrideui="
    set "leveldataoverridepat=%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\leveldataoverride.lua"
    echo,--    ��������������������������������������������������������>"%leveldataoverridepat%"
    echo,--        0�����ĵ��ǵ������������ļ�>>"%leveldataoverridepat%"
    echo,--        1���ɡ�����һ���������ķ�����%OneKeyVersion%���Զ�����>>"%leveldataoverridepat%"
    echo,--        2���ĵ���������:%date% %time:~0,-6%>>"%leveldataoverridepat%"
    echo,--        3��--Ϊע�ͣ���Ӱ��ʹ��>>"%leveldataoverridepat%"
    echo,--        4��������Դ��� QQȺ497398445>>"%leveldataoverridepat%"
    echo,--    ��������������������������������������������������������>>"%leveldataoverridepat%"
    for /l %%a in (1,1,62) do (
    	set "Cavesleveldataoverrideui=%%Cavesleveldataoverrideui%%a%%"
    	call echo,!Cavesleveldataoverrideui!>>"%leveldataoverridepat%"
    )
goto :eof

:DefaultCavesleveldataoverridesettings
    call :write_log DefaultCavesleveldataoverridesettings����
    set background_node_range=0
    set desc="LiuNianOneKeyCavesDefaultWorldLeveldata"
    set hideminimap=false
    set id="DST_CAVE"
    set location="cave"
    set max_playlist_position=999
    set min_playlist_position=0
    set name="LiuNianOneKeyCaves"
    set numrandom_set_pieces=0
    set override_level_string=false
    set banana="default"
    set bats="default"
    set berrybush="default"
    set boons="default"
    set branching="default"
    set bunnymen="default"
    set carrot="default"
    set cave_ponds="default"
    set cave_spiders="default"
    set cavelight="default"
    set chess="default"
    set earthquakes="default"
    set fern="default"
    set fissure="default"
    set flint="default"
    set flower_cave="default"
    set grass="default"
    set layout_mode="RestrictNodesByKey"
    set lichen="default"
    set liefs="default"
    set loop="default"
    set marshbush="default"
    set monkey="default"
    set mushroom="default"
    set mushtree="default"
    set rabbits="rare"
    set reeds="default"
    set regrowth="default"
    set roads="never"
    set rock="default"
    set rocky="default"
    set sapling="default"
    set season_start="default"
    set slurper="default"
    set slurtles="default"
    set start_location="caves"
    set task_set="cave_default"
    set tentacles="default"
    set touchstone="default"
    set trees="default"
    set weather="default"
    set world_size="default"
    set wormhole_prefab="tentacle_pillar"
    set wormlights="default"
    set worms="default"
    set required_prefabs="multiplayer_portal"
    set version=2
goto :eof

:DarkerCavesleveldataoverridesettings
    call :write_log DarkerCavesleveldataoverridesettings����
    set background_node_range=0
    set desc="LiuNianOneKeyCavesPlusWorldLeveldata"
    set hideminimap=false
    set id="DST_CAVE_PLUS"
    set location="cave"
    set max_playlist_position=999
    set min_playlist_position=0
    set name="Caves Plus"
    set numrandom_set_pieces=0
    set override_level_string=false
    set banana="default"
    set bats="default"
    set berrybush="rare"
    set boons="often"
    set branching="default"
    set bunnymen="default"
    set carrot="rare"
    set cave_ponds="default"
    set cave_spiders="often"
    set cavelight="default"
    set chess="default"
    set earthquakes="default"
    set fern="default"
    set fissure="default"
    set flint="default"
    set flower_cave="rare"
    set grass="default"
    set layout_mode="RestrictNodesByKey"
    set lichen="default"
    set liefs="default"
    set loop="default"
    set marshbush="default"
    set monkey="default"
    set mushroom="default"
    set mushtree="default"
    set rabbits="rare"
    set reeds="default"
    set regrowth="default"
    set roads="never"
    set rock="default"
    set rocky="default"
    set sapling="default"
    set season_start="default"
    set slurper="default"
    set slurtles="default"
    set start_location="caves"
    set task_set="cave_default"
    set tentacles="default"
    set touchstone="default"
    set trees="default"
    set weather="default"
    set world_size="default"
    set wormhole_prefab="tentacle_pillar"
    set wormlights="rare"
    set worms="default"
    set required_prefabs="multiplayer_portal"
    set version=2
goto :eof 

:Overworldleveldataoverride
    call :displayui
    call :write_log ѡ������������͡���
    echo ������������������������������ѡ������������ͩ�������������������������������
    echo,        1---------Ĭ�� ���Ƽ�
    echo,        2---------���䣨û�о��ˣ�
    echo,        3---------����
    echo,        4---------��ҹ
    echo ������������������������������������������������������������������������������
    set /p op=  �����뷿������
    if "!op!" neq "" (
        if "!op!" == "1" (
            call :write_log �û�ѡ����Ĭ�ϵ�����������
            call :defaultOverworldleveldataoverridesetting
        )   else   (
            if "!op!" == "2" (
                call :write_log "�û�ѡ���˾��䣨û�о��ˣ�������������"
                call :NoGiantsHereOverworldleveldataoverridesetting
            )   else   (
                if "!op!" == "3" (
                    call :write_log �û�ѡ�������������������
                    call :TogetherPlusOverworldleveldataoverridesetting
                )   else   (
                    if "!op!" == "4" (
                        call :write_log �û�ѡ������ҹ������������
                        call :LightOutOverworldleveldataoverridesetting
                    )   else   (
                        call :write_log ������������������ѡ��
                        echo,������������������ѡ�񣬰��������������&goto Overworldleveldataoverride
                    )
                ) 
            )
        )
    )
    set "Overworldleveldataoverrideui1=return {"
    set "Overworldleveldataoverrideui2=  desc=%desc%,"
    set "Overworldleveldataoverrideui3=  hideminimap=%hideminimap%,"
    set "Overworldleveldataoverrideui4=  id=%id%,"
    set "Overworldleveldataoverrideui5=  location=%location%,"
    set "Overworldleveldataoverrideui6=  max_playlist_position=%max_playlist_position%,"
    set "Overworldleveldataoverrideui7=  min_playlist_position=%min_playlist_position%,"
    set "Overworldleveldataoverrideui8=  name=%name%,"
    set "Overworldleveldataoverrideui9=  numrandom_set_pieces=%numrandom_set_pieces%,"
    set "Overworldleveldataoverrideui10=  override_level_string=%override_level_string%,"
    set "Overworldleveldataoverrideui11=  overrides={"
    set "Overworldleveldataoverrideui12=    alternatehunt=%alternatehunt%,"
    set "Overworldleveldataoverrideui13=    angrybees=%angrybees%,"
    set "Overworldleveldataoverrideui14=    autumn=%autumn%,"
    set "Overworldleveldataoverrideui15=    bearger=%bearger%,"
    set "Overworldleveldataoverrideui16=    beefalo=%beefalo%,"
    set "Overworldleveldataoverrideui17=    beefaloheat=%beefaloheat%,"
    set "Overworldleveldataoverrideui18=    bees=%bees%,"
    set "Overworldleveldataoverrideui19=    berrybush=%berrybush%,"
    set "Overworldleveldataoverrideui20=    birds=%birds%,"
    set "Overworldleveldataoverrideui21=    boons=%boons%,"
    set "Overworldleveldataoverrideui22=    branching=%branching%,"
    set "Overworldleveldataoverrideui23=    butterfly=%butterfly%,"
    set "Overworldleveldataoverrideui24=    buzzard=%buzzard%,"
    set "Overworldleveldataoverrideui25=    cactus=%cactus%,"
    set "Overworldleveldataoverrideui26=    carrot=%carrot%,"
    set "Overworldleveldataoverrideui27=    catcoon=%catcoon%,"
    set "Overworldleveldataoverrideui28=    chess=%chess%,"
    set "Overworldleveldataoverrideui29=    day=%day%,"
    set "Overworldleveldataoverrideui30=    deciduousmonster=%deciduousmonster%,"
    set "Overworldleveldataoverrideui31=    deerclops=%deerclops%,"
    set "Overworldleveldataoverrideui32=    dragonfly=%dragonfly%,"
    set "Overworldleveldataoverrideui33=    flint=%flint%,"
    set "Overworldleveldataoverrideui34=    flowers=%flowers%,"
    set "Overworldleveldataoverrideui35=    frograin=%frograin%,"
    set "Overworldleveldataoverrideui36=    goosemoose=%goosemoose%,"
    set "Overworldleveldataoverrideui37=    grass=%grass%,"
    set "Overworldleveldataoverrideui38=    houndmound=%houndmound%,"
    set "Overworldleveldataoverrideui39=    hounds=%hounds%,"
    set "Overworldleveldataoverrideui40=    hunt=%hunt%,"
    set "Overworldleveldataoverrideui41=    krampus=%krampus%,"
    set "Overworldleveldataoverrideui42=    layout_mode=%layout_mode%,"
    set "Overworldleveldataoverrideui43=    liefs=%liefs%,"
    set "Overworldleveldataoverrideui44=    lightning=%lightning%,"
    set "Overworldleveldataoverrideui45=    lightninggoat=%lightninggoat%,"
    set "Overworldleveldataoverrideui46=    loop=%loop%,"
    set "Overworldleveldataoverrideui47=    lureplants=%lureplants%,"
    set "Overworldleveldataoverrideui48=    marshbush=%marshbush%,"
    set "Overworldleveldataoverrideui49=    merm=%merm%,"
    set "Overworldleveldataoverrideui50=    meteorshowers=%meteorshowers%,"
    set "Overworldleveldataoverrideui51=    meteorspawner=%meteorspawner%,"
    set "Overworldleveldataoverrideui52=    moles=%moles%,"
    set "Overworldleveldataoverrideui53=    mushroom=%mushroom%,"
    set "Overworldleveldataoverrideui54=    penguins=%penguins%,"
    set "Overworldleveldataoverrideui55=    perd=%perd%,"
    set "Overworldleveldataoverrideui56=    pigs=%pigs%,"
    set "Overworldleveldataoverrideui57=    ponds=%ponds%,"
    set "Overworldleveldataoverrideui58=    prefabswaps=%prefabswaps%,"
    set "Overworldleveldataoverrideui59=    prefabswaps_start=%prefabswaps_start%,"
    set "Overworldleveldataoverrideui60=    rabbits=%rabbits%,"
    set "Overworldleveldataoverrideui61=    reeds=%reeds%,"
    set "Overworldleveldataoverrideui62=    regrowth=%regrowth%,"
    set "Overworldleveldataoverrideui63=    roads=%roads%,"
    set "Overworldleveldataoverrideui64=    rock=%rock%,"
    set "Overworldleveldataoverrideui65=    rock_ice=%rock_ice%,"
    set "Overworldleveldataoverrideui66=    sapling=%sapling%,"
    set "Overworldleveldataoverrideui67=    season_start=%season_start%,"
    set "Overworldleveldataoverrideui68=    spiders=%spiders%,"
    set "Overworldleveldataoverrideui69=    spring=%spring%,"
    set "Overworldleveldataoverrideui70=    start_location=%start_location%,"
    set "Overworldleveldataoverrideui71=    summer=%summer%,"
    set "Overworldleveldataoverrideui72=    tallbirds=%tallbirds%,"
    set "Overworldleveldataoverrideui73=    task_set=%task_set%,"
    set "Overworldleveldataoverrideui74=    tentacles=%tentacles%,"
    set "Overworldleveldataoverrideui75=    touchstone=%touchstone%,"
    set "Overworldleveldataoverrideui76=    trees=%trees%,"
    set "Overworldleveldataoverrideui77=    tumbleweed=%tumbleweed%,"
    set "Overworldleveldataoverrideui78=    walrus=%walrus%,"
    set "Overworldleveldataoverrideui79=    weather=%weather%,"
    set "Overworldleveldataoverrideui80=    wildfires=%wildfires%,"
    set "Overworldleveldataoverrideui81=    winter=%winter%,"
    set "Overworldleveldataoverrideui82=    world_size=%world_size%,"
    set "Overworldleveldataoverrideui83=    wormhole_prefab=%wormhole_prefab% "
    set "Overworldleveldataoverrideui84=  },"
    set "Overworldleveldataoverrideui85=  random_set_pieces={"
    set "Overworldleveldataoverrideui86=    ^"Chessy_1^","
    set "Overworldleveldataoverrideui87=    ^"Chessy_2^","
    set "Overworldleveldataoverrideui88=    ^"Chessy_3^","
    set "Overworldleveldataoverrideui89=    ^"Chessy_4^","
    set "Overworldleveldataoverrideui90=    ^"Chessy_5^","
    set "Overworldleveldataoverrideui91=    ^"Chessy_6^","
    set "Overworldleveldataoverrideui92=    ^"ChessSpot1^","
    set "Overworldleveldataoverrideui93=    ^"ChessSpot2^","
    set "Overworldleveldataoverrideui94=    ^"ChessSpot3^","
    set "Overworldleveldataoverrideui95=    ^"Maxwell1^","
    set "Overworldleveldataoverrideui96=    ^"Maxwell2^","
    set "Overworldleveldataoverrideui97=    ^"Maxwell3^","
    set "Overworldleveldataoverrideui98=    ^"Maxwell4^","
    set "Overworldleveldataoverrideui99=    ^"Maxwell5^","
    set "Overworldleveldataoverrideui100=    ^"Maxwell6^","
    set "Overworldleveldataoverrideui101=    ^"Maxwell7^","
    set "Overworldleveldataoverrideui102=    ^"Warzone_1^","
    set "Overworldleveldataoverrideui103=    ^"Warzone_2^","
    set "Overworldleveldataoverrideui104=    ^"Warzone_3^""
    set "Overworldleveldataoverrideui105=  },"
    set "Overworldleveldataoverrideui106=  required_prefabs={ %required_prefabs% },"
    set "Overworldleveldataoverrideui107=  substitutes={  },"
    set "Overworldleveldataoverrideui108=  version=%version%"
    set "Overworldleveldataoverrideui109=}"
    set "Overworldleveldataoverrideui="
    set "leveldataoverridepat=%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\leveldataoverride.lua"
    echo,--    ��������������������������������������������������������>"%leveldataoverridepat%"
    echo,--        0�����ĵ��ǵ������������ļ�>>"%leveldataoverridepat%"
    echo,--        1���ɡ�����һ���������ķ�����%OneKeyVersion%���Զ�����>>"%leveldataoverridepat%"
    echo,--        2���ĵ���������:%date% %time:~0,-6%>>"%leveldataoverridepat%"
    echo,--        3��--Ϊע�ͣ���Ӱ��ʹ��>>"%leveldataoverridepat%"
    echo,--        4��������Դ��� QQȺ497398445>>"%leveldataoverridepat%"
    echo,--    ��������������������������������������������������������>>"%leveldataoverridepat%"
    for /l %%a in (1,1,109) do (
    	set "Overworldleveldataoverrideui=%%Overworldleveldataoverrideui%%a%%"
    	call echo,!Overworldleveldataoverrideui!>>"%leveldataoverridepat%"
    )
goto :eof

rem ------------------Ĭ��---------------------
:defaultOverworldleveldataoverridesetting
    call :write_log defaultOverworldleveldataoverridesetting����
    set desc="LiuNianOneKeyDefaultWorldLeveldata"
    set hideminimap=false
    set id="SURVIVAL_TOGETHER"
    set location="forest"
    set max_playlist_position=999
    set min_playlist_position=0
    set name="LiuNianOneKeyDefault"
    set numrandom_set_pieces=5
    set override_level_string=false
    set alternatehunt="default"
    set angrybees="default"
    set autumn="default"
    set bearger="default"
    set beefalo="default"
    set beefaloheat="default"
    set bees="default"
    set berrybush="default"
    set birds="default"
    set boons="default"
    set branching="default"
    set butterfly="default"
    set buzzard="default"
    set cactus="default"
    set carrot="default"
    set catcoon="default"
    set chess="default"
    set day="default"
    set deciduousmonster="default"
    set deerclops="default"
    set dragonfly="default"
    set flint="default"
    set flowers="default"
    set frograin="default"
    set goosemoose="default"
    set grass="default"
    set houndmound="default"
    set hounds="default"
    set hunt="default"
    set krampus="default"
    set layout_mode="LinkNodesByKeys"
    set liefs="default"
    set lightning="default"
    set lightninggoat="default"
    set loop="default"
    set lureplants="default"
    set marshbush="default"
    set merm="default"
    set meteorshowers="default"
    set meteorspawner="default"
    set moles="default"
    set mushroom="default"
    set penguins="default"
    set perd="default"
    set pigs="default"
    set ponds="default"
    set prefabswaps="default"
    set prefabswaps_start="default"
    set rabbits="default"
    set reeds="default"
    set regrowth="default"
    set roads="default"
    set rock="default"
    set rock_ice="default"
    set sapling="default"
    set season_start="default"
    set spiders="default"
    set spring="default"
    set start_location="default"
    set summer="default"
    set tallbirds="default"
    set task_set="default"
    set tentacles="default"
    set touchstone="default"
    set trees="default"
    set tumbleweed="default"
    set walrus="default"
    set weather="default"
    set wildfires="default"
    set winter="default"
    set world_size="default"
    set wormhole_prefab="wormhole"
    set required_prefabs="multiplayer_portal"
    set version=2
goto :eof

rem ------------------����---------------------
:NoGiantsHereOverworldleveldataoverridesetting
    call :write_log NoGiantsHereOverworldleveldataoverridesetting����
    set desc="LiuNianOneKeyNoReignOfGiantsWorldLeveldata"
    set hideminimap=false
    set id="SURVIVAL_TOGETHER_CLASSIC"
    set location="forest"
    set max_playlist_position=999
    set min_playlist_position=0
    set name="NoReignOfGiants"
    set numrandom_set_pieces=5
    set override_level_string=false
    set alternatehunt="default"
    set angrybees="default"
    set autumn="default"
    set bearger="never"
    set beefalo="default"
    set beefaloheat="default"
    set bees="default"
    set berrybush="default"
    set birds="default"
    set boons="default"
    set branching="default"
    set butterfly="default"
    set buzzard="never"
    set cactus="never"
    set carrot="default"
    set catcoon="never"
    set chess="default"
    set day="default"
    set deciduousmonster="never"
    set deerclops="default"
    set dragonfly="never"
    set flint="default"
    set flowers="default"
    set frograin="never"
    set goosemoose="never"
    set grass="default"
    set houndmound="never"
    set hounds="default"
    set hunt="default"
    set krampus="default"
    set layout_mode="LinkNodesByKeys"
    set liefs="default"
    set lightning="default"
    set lightninggoat="never"
    set loop="default"
    set lureplants="default"
    set marshbush="default"
    set merm="default"
    set meteorshowers="default"
    set meteorspawner="default"
    set moles="never"
    set mushroom="default"
    set penguins="default"
    set perd="default"
    set pigs="default"
    set ponds="default"
    set prefabswaps="default"
    set prefabswaps_start="default"
    set rabbits="default"
    set reeds="default"
    set regrowth="default"
    set roads="default"
    set rock="default"
    set rock_ice="never"
    set sapling="default"
    set season_start="default"
    set spiders="default"
    set spring="noseason"
    set start_location="default"
    set summer="noseason"
    set tallbirds="default"
    set task_set="classic"
    set tentacles="default"
    set touchstone="default"
    set trees="default"
    set tumbleweed="default"
    set walrus="default"
    set weather="default"
    set wildfires="never"
    set winter="default"
    set world_size="default"
    set wormhole_prefab="wormhole"
    set required_prefabs="multiplayer_portal"
    set version=2
goto :eof

rem ------------------����---------------------
:TogetherPlusOverworldleveldataoverridesetting
    call :write_log TogetherPlusOverworldleveldataoverridesetting����
    set desc="LiuNianOneKeyThreeBoxWorldLeveldata"
    set hideminimap=false
    set id="SURVIVAL_DEFAULT_PLUS"
    set location="forest"
    set max_playlist_position=999
    set min_playlist_position=0
    set name="ThreeBox"
    set numrandom_set_pieces=5
    set override_level_string=false
    set alternatehunt="default"
    set angrybees="default"
    set autumn="default"
    set bearger="default"
    set beefalo="default"
    set beefaloheat="default"
    set bees="default"
    set berrybush="rare"
    set birds="default"
    set boons="often"
    set branching="default"
    set butterfly="default"
    set buzzard="default"
    set cactus="default"
    set carrot="rare"
    set catcoon="default"
    set chess="default"
    set day="default"
    set deciduousmonster="default"
    set deerclops="default"
    set dragonfly="default"
    set flint="default"
    set flowers="default"
    set frograin="default"
    set goosemoose="default"
    set grass="default"
    set houndmound="default"
    set hounds="default"
    set hunt="default"
    set krampus="default"
    set layout_mode="LinkNodesByKeys"
    set liefs="default"
    set lightning="default"
    set lightninggoat="default"
    set loop="default"
    set lureplants="default"
    set marshbush="default"
    set merm="default"
    set meteorshowers="default"
    set meteorspawner="default"
    set moles="default"
    set mushroom="default"
    set penguins="default"
    set perd="default"
    set pigs="default"
    set ponds="default"
    set prefabswaps="default"
    set prefabswaps_start="default"
    set rabbits="rare"
    set reeds="default"
    set regrowth="default"
    set roads="default"
    set rock="default"
    set rock_ice="default"
    set sapling="default"
    set season_start="default"
    set spiders="often"
    set spring="default"
    set start_location="plus"
    set summer="default"
    set tallbirds="default"
    set task_set="default"
    set tentacles="default"
    set touchstone="default"
    set trees="default"
    set tumbleweed="default"
    set walrus="default"
    set weather="default"
    set wildfires="default"
    set winter="default"
    set world_size="default"
    set wormhole_prefab="wormhole"
    set required_prefabs="multiplayer_portal"
    set version=2
goto :eof

rem ------------------��ҹ---------------------
:LightOutOverworldleveldataoverridesetting
    call :write_log LightOutOverworldleveldataoverridesetting���� 
    set desc="LiuNianOneKeyLightOutWorldLeveldata"
    set hideminimap=false
    set id="COMPLETE_DARKNESS"
    set location="forest"
    set max_playlist_position=999
    set min_playlist_position=0
    set name="LightOut"
    set numrandom_set_pieces=5
    set override_level_string=false
    set alternatehunt="default"
    set angrybees="default"
    set autumn="default"
    set bearger="default"
    set beefalo="default"
    set beefaloheat="default"
    set bees="default"
    set berrybush="default"
    set birds="default"
    set boons="default"
    set branching="default"
    set butterfly="default"
    set buzzard="default"
    set cactus="default"
    set carrot="default"
    set catcoon="default"
    set chess="default"
    set day="onlynight"
    set deciduousmonster="default"
    set deerclops="default"
    set dragonfly="default"
    set flint="default"
    set flowers="default"
    set frograin="default"
    set goosemoose="default"
    set grass="default"
    set houndmound="default"
    set hounds="default"
    set hunt="default"
    set krampus="default"
    set layout_mode="LinkNodesByKeys"
    set liefs="default"
    set lightning="default"
    set lightninggoat="default"
    set loop="default"
    set lureplants="default"
    set marshbush="default"
    set merm="default"
    set meteorshowers="default"
    set meteorspawner="default"
    set moles="default"
    set mushroom="default"
    set penguins="default"
    set perd="default"
    set pigs="default"
    set ponds="default"
    set rabbits="default"
    set reeds="default"
    set regrowth="default"
    set roads="default"
    set rock="default"
    set rock_ice="default"
    set sapling="default"
    set season_start="default"
    set spiders="default"
    set spring="default"
    set start_location="darkness"
    set summer="default"
    set tallbirds="default"
    set task_set="default"
    set tentacles="default"
    set touchstone="default"
    set trees="default"
    set tumbleweed="default"
    set walrus="default"
    set weather="default"
    set wildfires="default"
    set winter="default"
    set world_size="default"
    set wormhole_prefab="wormhole"
    set required_prefabs="multiplayer_portal"
    set version=2
goto :eof

rem -----------------------�����ӿڹ���-----------------------------
:openPort
    for %%a in (killserver BB CC DD) do (
        if "%1"=="%%a" (
            call :%%a
            echo %clustername%9sss2016/7/30 11:10:28
            call :write_log �˳���ǰ���̡���
            exit
        )
    )
    echo jieshu 
goto :eof

rem ----------------------�Զ����û��ͻ��˸���mod�ļ��������mods�ļ���---------------------------
:aotucopymodfile
    call :write_log aotucopymodfile���� 
    %~d0
    cd "%~dp0"
    if exist "%~dp0\bin\dontstarve_steam.exe" (
        echo,��ʹ�õļ��Ŀͻ��˿��ķ�����������Ҫ����mod�ļ�
        pause 
        goto :eof  
    ) else (                                                rem ������Ĭ�ϵ��ĵ�·��
        if exist "..\Don't Starve Together\bin\dontstarve_steam.exe" (
            echo,���ڴ�steamĬ�ϵļ��Ŀͻ���·�����·�������mods�ļ���
            XCOPY  "..\Don't Starve Together\mods\"*  ".\mods\" /s  /e /c /y /d 2>nul
            echo,�Ѿ������ļ�����ʱ�临�����������µ��ļ�,ллʹ�ã���&pause
        ) else (
            echo,��������steamĬ��·��"..\Don't Starve Together\bin\dontstarve_steam.exe"��û��dontstarve_steam.exe�ļ��������ڴӿͻ��Զ����·���в��ҡ�����
            if exist "%dstdir%dontstarve_steam.exe" (
                echo,���ڴ��û�ָ���ļ��Ŀͻ��˸��·�������mods�ļ���
                XCOPY  "%dstdir:~0,-4%mods\"*  ".\mods\" /s  /e /c /y /d 2>nul
                echo,�Ѿ������ļ�����ʱ�临�����������µ��ļ�,ллʹ�ã���&pause
            ) else (
                echo,�ͻ���·���������󣬸���ʧ�ܣ����Ȱ�20 ���ÿͻ���·������ִ�б�����&pause
            )         
        )
    )
goto :eof

rem ------------------------�û�������Ȩ����-------------------------
:licences
    call :write_log  �����û�������Ȩ����ģ�顭��   
    rem call :displayui
    cls
    echo,
    echo �����������������������������û�������Ȩ������������������������������������
    set "licencesui="
    for /l %%a in (1,1,13) do (
    	set "licencesui=%%licencesui%%a%%"
    	call echo,  !licencesui!
    )
    echo,  �����û����Э��
    echo,  1��һ����װ�����ƻ���������ʽʹ�ñ����������ʾͬ�����Э�����������Լ��������û���ͬ��Э����������벻Ҫʹ�ñ������
    echo,  2����������������˱�д���û������ر�Э�������¿������ʹ�á�������������qqȺ497398445������ٶ����̣��ٶ��˺�ybbhdddf������,������;�����صı�����п��ܱ�����۸ģ���
    echo,  3�������֮����Ȩ������֪ʶ��Ȩ�����Ȩ�������棨����������������ȡ�û�δ����ȡ��֮����Ȩ��ר��Ȩ���̱�Ȩ��Ӫҵ���ܵȣ���Ϊ�����������С���������л����񹲺͹���Ȩ�������ʰ�Ȩ��Լ������֪ʶ��Ȩ������Լ�ı������û�����ñ�����ķ�������ʹ��Ȩ��
    echo,  4��δ����ɽ�ֹʹ�ñ���������κε���ҵ�
    echo,  5���û����ã�ɾ�������������������һ�й��ڰ�Ȩ����Ϣ��δ����Ȩ��ֹ�۸ģ�Ų�ñ����Դ��
    echo,  6��ʹ�ñ�������û��Լ��е����գ������÷�����������Χ�ڣ������κ�����²�����ʹ�û���ʹ�ñ����������������ġ�����ġ�ֱ�ӵġ���ֱ�ӵ���ʧ�е��⳥���Ρ���ʹ�����ȱ���֪���𺦷����Ŀ�����
    echo,  7������������汾�����������Թ��ܡ����ݡ��ṹ�����桢���з�ʽ�Ƚ����޸Ļ��Զ����µ�Ȩ����
    echo,  8�������δ���ر�Э����κ�һ���������������Ȩ������ֹ��Э�飬������ͨ�������ֶ�׷�����Ρ�
    echo,  9���������˱��������ϸ����������ݵ����ս���Ȩ���޸�Ȩ
    echo,                                           ��ǰʱ�䣺%date% %time:~0,-6%
    echo ������������������������������������������������������������������������������
    set licenceschoice=0
    set /p licenceschoice=��1���س�ͬ������Э�������رձ������
    if "!licenceschoice!" neq "1" (
        call :write_log �û���ͬ���û����Э�飬�˳����� 
        call :write_log �˳���ǰ���̡���
        exit
    )
    call :write_log �û�ͬ���û����Э��
goto :eof

:write_log
    if not exist "%log_dir%" (
        echo,[%date% %time%]:--------LiuNianOneKey Log File��version:%LiuNianOneKeyVersion%-------->"%log_dir%"
        echo,[%date% %time%]:�������bug�뽫����־�ļ����͵�����qqȺ��497398445���з���>>"%log_dir%"
    ) else (
        echo,[%date% %time%]:%1%2%3%4%5%6%7>>"%log_dir%"
    )
goto :eof

:errerany
set serr=0
set ssuc=0
echo,---------------������־�ļ������б�---------------
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "error"
echo,---------------������־�ļ������б�---------------
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "error"
echo,----------------------------------�������------------------------------------
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "No auth token could be found">nul &&(
    echo,û�����ƻ�������ʧЧ �����ش���
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "No auth token could be found">nul &&(
    echo,û�����ƻ�������ʧЧ �����ش���
)    
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "SOCKET_PORT_ALREADY_IN_USE">nul &&(
    echo,���·������˿�ռ�� �����ش���
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "SOCKET_PORT_ALREADY_IN_USE">nul &&(
    echo,���Ϸ������˿�ռ�� �����ش���
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "ID_DST_INITIALIZATION_FAILED">nul &&(
    echo,���·�������ʼ��ʧ�� �����ش���
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "ID_DST_INITIALIZATION_FAILED">nul &&(
    echo,���Ϸ�������ʼ��ʧ�� �����ش���
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "Server failed to start">nul &&(
    echo,���·���������ʧ�� �����ش���
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "Server failed to start">nul &&(
    echo,���Ϸ���������ʧ�� �����ش���
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "CURL ERROR: Could not resolve host: api.steampowered.com">nul &&(
    echo,���·���������steam mod����apiʧ�� ��Сë�����ù�,����Ԥʾ�����steam�����Ӳ��ã��п���Ҳ���Ӳ���klei�ķ�������
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "CURL ERROR: Could not resolve host: api.steampowered.com">nul &&(
    echo,���Ϸ���������steam mod����apiʧ�� ��Сë�����ù�,����Ԥʾ�����steam�����Ӳ��ã��п���Ҳ���Ӳ���klei�ķ�������
) 

type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "because it had an error" &&(
    echo,���·�����mod�а������� �����ش���
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "because it had an error" &&(
    echo,���Ϸ�����mod�а������� �����ش���
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "Could not load mod_config_data">nul &&(
    echo,���·�����Could not load mod_config_data ��Сë�����ùܣ�
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "Could not load mod_config_data">nul &&(
    echo,���Ϸ�����Could not load mod_config_data ��Сë�����ùܣ�
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "FMOD Error: An invalid object handle was used">nul &&(
    echo,���·�����FMOD Error: An invalid object handle was used ��Сë�����ùܣ�
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "FMOD Error: An invalid object handle was used">nul &&(
    echo,���Ϸ�����FMOD Error: An invalid object handle was used ��Сë�����ùܣ�
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "Could not find an asset matching">nul &&(
    echo,���·�����Could not find an asset matching
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "Could not find an asset matching">nul &&(
    echo,���Ϸ�����Could not find an asset matching
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "ERROR: You are trying to enable the mod twice">nul &&(
    echo,���·�����ERROR: You are trying to enable the mod twice �����ش��󣬵����п��ܲ�Ӱ�쿪����
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "ERROR: You are trying to enable the mod twice">nul &&(
    echo,���Ϸ�����ERROR: You are trying to enable the mod twice �����ش��󣬵����п��ܲ�Ӱ�쿪����
) 

type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "]: MOD ERROR:" &&(
    echo,����Ϊ���·��������ڵ�MOD ERROR �����ش���
    echo,-------------------------------
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "]: MOD ERROR:" &&(
    echo,����Ϊ���Ϸ��������ڵ�MOD ERROR �����ش���
    echo,-------------------------------
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i ": stack overflow" &&(
    echo,����Ϊ���·������Ķ�ջ������� �����ش���
    echo,-------------------------------
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i ": stack overflow" &&(
    echo,����Ϊ���Ϸ������Ķ�ջ������� �����ش���
    echo,-------------------------------
) 

type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "CURL ERROR: Could not resolve host: login.kleientertainment.com">nul &&(
    echo,���·���������Klei������ʧ��
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "CURL ERROR: Could not resolve host: login.kleientertainment.com">nul &&(
    echo,���Ϸ���������Klei������ʧ��
) 

type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "LOADING LUA SUCCESS">nul &&(
    echo,���·�����LOADING LUA SUCCESS�����·����������ɹ��׶α�־1��
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "LOADING LUA SUCCESS">nul &&(
    echo,���Ϸ�����LOADING LUA SUCCESS�����Ϸ����������ɹ��׶α�־1��
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "Sim paused">nul &&(
    echo,���·�����Sim paused�����·����������ɹ��׶α�־3�����·�����������ɻ�����������ɹ�����
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "Sim paused">nul &&(
    echo,���Ϸ�����Sim paused�����Ϸ����������ɹ��׶α�־2��
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "is now connected">nul &&(
    echo,���Ϸ�����is now connected �����·����������ɹ��׶α�־2��
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "is now connected">nul &&(
    echo,���·�����is now connected �����Ϸ����������ɹ��׶α�־3�����Ϸ�����������ɻ�����������ɹ�����
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i ": module '">nul &&(
    echo,���·����� ģ��δ�ҵ������ش��󣩴˴�����ܵ��·��������ˣ����߿ͻ���һֱ����������������۾����Ե��´˴���
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i ": module '">nul &&(
    echo,���Ϸ����� ģ��δ�ҵ������ش��󣩴˴�����ܵ��·��������ˣ����߿ͻ���һֱ����,����������۾����Ե��´˴���
) 

echo,-------------------------------------------------------------------------------   
pause
goto :eof
rem ----------------------------------------------------------------
rem ------------------������־------------------
:UpdateLog
    call :displayui
    echo,�����������������������������������汾���¼�¼����������������������������������
    echo,  --------------v2.1------------------
    echo,  v2.1 ��ΪBugע�͵��˵���worldgenoverride.lua�Զ����ɹ��ܱ���
    echo,  --------------v2.2------------------
    echo,  v2.2 �޸ķ��������òο������ļ�·��Ϊ./bin
    echo,  --------------v2.3------------------
    echo,  v2.3 �����˰����ĵ��Զ���������
    echo,  --------------v2.4------------------
    echo,  v2.4 �����˱��ݻָ�ϵͳ
    echo,  --------------v2.6------------------
    echo,  v2.6 ��ǿ�����ù���
    echo,  --------------v2.8------------------
    echo,  v2.8 ����steam�����汾�ҵ��ĵ���ȡ���÷���ע���ķ�ʽ������Ӧ�û��������ҵ��ĵ�Ŀ¼��������������������⻷����ʹ��ȡ���ҵ��ĵ�Ŀ¼�������Բ��ø�ϵͳĬ��·����Ϊ�ҵ��ĵ�·�� ������ģʽ����
    echo,  --------------v2.8------------------
    echo,  v2.81�Ż����ݹ���
    echo,  --------------v2.9------------------
    echo,  v2.9 �Ż�����
    echo,  --------------v3.0------------------
    echo,  v3.0 �����������ڿ��Կ���������ͬʱ�������ķ�����
    echo,  --------------v3.01------------------
    echo,  v3.01 �߼��Ż� ����ͻ����������ҵ��ĵ�Ŀ¼��ĳЩ���ܲ����õ�bug
    echo,  --------------v3.02------------------
    echo,  v3.02 �޸�����������ʾbug
    echo,  --------------v3.0.3------------------
    echo,  v3.0.3 �����Ż� bug�޸� ����淶��
    echo,  --------------v3.1.0------------------
    echo,  v3.1.0 ���161�汾modsettings.lua��������
    echo,  �޸�v3.0.3���ڵĲ���1����modsetting.lua ��bug �޸�����bug,ϸ΢�Ż�
    echo,  ����Ծɰ汾����ϵͳ�����¼�������
    echo,  --------------v3.1.1------------------
    echo,  v3.1.1 �������̨�����˵����漰������ǿ���˳���ʱ������Զ�����������ʹ浵����
    echo,  �߼��Ż�,UI����
    echo,  --------------v3.1.2------------------
    echo,  v3.1.2 BUG����������ϵͳ�Ż���Ŀǰ�������������ݺϷ���������⣩�������Ż�
    echo,  �߼��Ż�
    echo,  --------------v3.1.3------------------
    echo,  v3.1.3 �Ҳ���������ʱUI�͹����Ż����ļ�������汾��
    echo,  --------------v3.1.4------------------
    echo,  v3.1.4 ����3.1.3����̨bug �汾�ع����ȴ��Ժ������ټ������̨����   ��ɱ���ϵͳ�������ݺϷ����������
    echo,  --------------v3.1.6------------------
    echo,  v3.1.6 �����Ȩ�������޸�����ϵͳ�ָ��浵���ɹ�BUG �Ż��ļ�����ʾ
    echo,  --------------v3.1.7------------------
    echo,  v3.1.7 �޸�������������ͣBUG
    echo,  --------------v3.1.8------------------
    echo,  v3.1.8 �޸��°汾��ʼ���������UI�ص����޷������豸BUG
    echo,  --------------v3.2.0------------------
    echo,  v3.2.0 �°漢��166077�Ժ�汾ר��
    echo,  --------------v3.2.2------------------
    echo,  v3.2.2 �Զ����ɷ����������ĵ�������ѡ���û�����ģʽ�����û��������룬�����ȵȣ����������ͻ��˴浵�ۣ��Ż���־�ļ��������ƣ��˰汾ֻ������166227�汾�Լ��Ժ�û���ش���µİ汾����������ǰ�汾
    echo,  --------------v3.2.3------------------
    echo,  v3.2.3 �������ÿ���̨���޸���ʼ������ʱ���߼�bug,�޸��浵bug
    echo,  --------------v3.2.4------------------
    echo,  v3.2.4 �Ż�����̨�û�����
    echo,  --------------v3.2.5------------------
    echo,  v3.2.5 ����浵���л����Ż�����ṹ
    echo,  --------------v3.2.6------------------
    echo,  v3.2.6 ֧�ַ������࿪��mod�����ļ�ʹ��modoverrides.lua��mod�����ļ�����ת���㷨�Ż�
    echo,  --------------v3.2.7------------------
    echo,  v3.2.7 ���뵥�������ػ����� ���޸��������࿪�浵�ָ�
    echo,  --------------v3.2.8------------------
    echo,  v3.2.8 �����������ػ����� �����¼���modת��ѡ��ѡ��Ż���Ϣ��ʾ
    echo,  --------------v3.3.0------------------
    echo,  v3.3.0 �Ż��û����飬�Զ�����ͻ������Ĺ��ҵ��ĵ������
    echo,  ����Ա�����Ż���֧������164��
    echo,  --------------v3.3.3------------------
    echo,  v3.3.3 ����̨�����Ż�������173098�°汾��֧����������
    echo,  ��������俪�֣���ҹ���ֵ�ѡ��Ѹ���Ĳ����Ƶ�  
    echo,  �ⲿ�ļ�LiuNianOneKey.ini����.
    echo,  --------------v3.3.4------------------
    echo,  v3.3.4 �޸���Ϸ������ʾbug(��лҹ�·���)
    echo,  --------------v3.3.5------------------
    echo,  v3.3.5 �޸��������������ļ�bug����bug����            
    echo,         ���¿���������������
    echo,  --------------v3.3.8------------------
    echo,  v3.3.8 �����°汾���ӵ�ħ��ֲ��Ż��ҵ��ĵ�·����ȡ
    echo,  --------------v3.3.9------------------
    echo,  v3.3.9 ·���Զ������Ż����޸�v3.3.8����ȡ�����ļ�����
    echo,  ���ྫ�ʹ��ܵȴ���ȥ����
    echo,��������������������������������������������������������������������������������
    pause
goto :eof

::--------------------�Զ������̨��Ʒ����-----------------------------
rem ��������б�����û������Ҫ����Ʒ��������������κ�һ��λ�ü�������Ҫ��Ʒ�Ĵ��룬
rem ��ʽΪ��ƷӢ�Ĵ���ӿո����Ʒ������������Ʒ��������������������������ӣ������
rem ������� ��� �ƽ� ��������������ʱ������һ���ؼ��ֶ��ܹ���������Ҫ�ҵ���Ʒ
rem ��ܰ��ʾ����������ʹ������������Ҳ����ʹ��Ӣ������Ŷ�����������ѱ�ʯ����֪����ʯ��
rem Ӣ��������gem,��ô��Ϳ���ʹ��gem�����ؼ��ֽ�������������������£�
rem redgem     ���챦ʯ��rem bluegem    ������ʯ��rem purplegem  ���ϱ�ʯ��rem greengem   ���̱�ʯ��
rem orangegem  ���ȱ�ʯ��rem yellowgem  ���Ʊ�ʯ��rem gemsocket  ����ʯ��̨��























































































































































































































































;1.ֲ��.
cutgrass	 ���ݣ�
twigs	 ����֦��
log	 ��ľͷ ľ ��
charcoal	 ��ľ̿��
ash	 ���ң�
cutreeds	 �����µ�«έ��
lightbulb	 ��ӫ�����
petals	 �����꣩
petals_evil	 ��ج�λ��꣩
pinecone	 ���ɹ���
foliage	 ��Ҷ�ӣ�
cutlichen	 ��ժ�µ�̦޺��
wormlight	 �����ӹ� �����۾���
lureplantbulb	 ��ʳ�˻����ӣ�
flint	 ����ʯ ��ʯ ��ʯ��
nitre	 ����ʯ��
redgem 	 ���챦ʯ��
bluegem	 ������ʯ��
purplegem	 ���ϱ�ʯ��
greengem	 ���̱�ʯ��
orangegem	 ���ȱ�ʯ��
yellowgem	 ���Ʊ�ʯ��
rocks	 ����ʯ ʯͷ ��ʯ��
goldnugget	 ���ƽ� ���ӣ�
thulecite	 ������ʯ��
thulecite_pieces	 ��������Ƭ��
rope	 �����ӣ�
boards	 ��ľ�壩
cutstone	 ��ʯש��
papyrus	 ��ֽ��
houndstooth	 ��Ȯ�� ������
pigskin	 ����Ƥ��
manrabbit_tail	 ������β�� ����β�ͣ�
silk	 ��֩��˿��
spidergland	 ��֩�����壩
spidereggsack	 ��֩���ѣ�
beardhair	 �����ӣ�
beefalowool	 ��ţë��
honeycomb	 ���䳲��
stinger	 ����̣�
walrus_tusk	 ����������
feather_crow	 ����ѻ��ë ����ë��
feather_robin	 ����ȸ��ë ����ë��
feather_robin_winter	 ��ѩȸ��ë ����ë��
horn	 ��ţ�ǣ�
tentaclespots	 ������Ƥ��
trunk_summer	 ������� ����ǣ�
trunk_winter	 ������� ����ǣ�
slurtleslime	 ����ţ��ճҺ��
slurtle_shellpieces	 ����ţ���Ƭ��
butterflywings	 ���������
mosquitosack	 ������Ѫ�ң�
slurper_pelt	 ���ʳ��Ƥ��
minotaurhorn	 ��Զ���ػ��߽ǣ�
deerclops_eyeball	 ����¹����
lightninggoathorn	 ��������� ����ǣ�
glommerwings	 �������ų�� ����ķ���
glommerflower	 �������Ż� ����ķ����
glommerfuel	 ��������ȼ�� ����ķȼ�ϣ�
livinglog	 ����ľͷ��
nightmarefuel	 ��ج��ȼ�ϣ�
gears	 �����֣�
transistor ������� ����Ԫ����
marble	 ������ʯ��
boneshard	 ��Ӳ��ͷ��
ice	 ������
poop	 ����㣩
guano	 ����� ���㣩
dragon_scales	 ��������Ƭ ��Ӭ��Ƭ��
goose_feather	 ��¹Ѽ��ë Ѽ����ë ����ë��
coontail	 �����β�� èβ�ͣ�
bearger_fur	 ����Ƥ��



;2.����������

axe	 ������ ��ͷ��
goldenaxe	 ���ƽ�ͷ ���ӣ�
lucy	 ��¶������ ¶����ͷ��
hammer	 �����ӣ�
pickaxe	 ���� ʮ�ָ䣩
goldenpickaxe	 ���ƽ�䣩
shovel	 ������ ���ǣ�
goldenshovel	 ���ƽ���� �ƽ����ǣ�
pitchfork	 ���ݲ棩
razor	 ���굶��
bugnet	 ����������
fishingrod	 ����ͣ�
multitool_axe_pickaxe	 ���๦�ܹ��� Զ�Ÿ䣩
cane	 ���������� ����Ȩ�� �������ȣ�
trap	 �����壩
birdtrap	 �������壩
trap_teeth	 ���������� �������壩
trap_teeth_maxwell	 ����˹�������������壩
backpack	 ��������
piggyback	 ����Ƥ�� ������
krampus_sack	 ������˹���� С͵����
umbrella	 ����ɡ��
grass_umbrella ����ɡ ����ɡ��
heatrock	 ������ʯ ůʯ��
bedroll_straw	 ����ϯ�� ���̸ǣ�
bedroll_furry	 ��ëƤ�̸ǣ�
torch	 ����棩
lantern	 ����ƣ�
pumpkin_lantern	 ���Ϲϵƣ�
compass	 ��ָ���룩
fertilizer ������ ����Ͱ��
firesuppressor  ���������
sewing_kit	 �����ҹ��߰���
spear	 ��ì��
boomerang	 �������ڣ�
tentaclespike	 ����������
blowdart_pipe	 ��������
blowdart_sleep	 ����������
blowdart_fire	 ��ȼ�մ�����
hambat	 �����ȶ̹� �����
nightsword	 ����Ӱ�� ��ҹ����
batbat	 ������� ���� ��Ѫ����
ruins_bat	 ��Զ�Ŷ̰���
spear_wathgrithr	 ����˿����˹ì Ů����ì��
panflute	 �����
onemanband	 ������������
gunpowder	 ����ҩ��
beemine	 ���۷���ף�
bell	 ���壩
amulet	 ����ɫ����� ������
blueamulet	 ����ɫ����� ����������
purpleamulet	 ����ɫ����� ������
yellowamulet	 ����ɫ����� ���˻�����
orangeamulet	 ����ɫ����� ������
greenamulet	 ����ɫ����� ���커����
nightmare_timepiece	 �������£�
icestaff	 ����ħ�ȣ�
firestaff	 ����ħ�ȣ�
telestaff	 ������ħ�ȣ�
orangestaff	 ����ɫħ�ȣ�
greenstaff	 ����ɫħ�ȣ�
yellowstaff	 ����ɫħ�ȣ�
diviningrod	 ��̽���ȣ�
book_birds	 ���ٻ�����飩
book_tentacles	 ���ٻ����ֵ��飩
book_gardening	 ������ֲ����飩
book_sleep	 �����ߵ��飩
book_brimstone	 ���ٻ�������飩
waxwelljournal	 ����˹��������־��
abigail_flower	 �����ȸǶ�֮����
balloons_empty	 ��������
balloon	 ������
lighter	 ��ޱ��Ĵ�����
chester_eyebone	 ����˹�ع��� С�� �������
featherfan	 ����ë�ȣ�
staff_tornado	 �������ħ�ȣ�
nightstick	 ��ҹ����



;3.������

strawhat	 ����ñ��
flowerhat	 ��������
beefalohat	 ��ţëñ��
featherhat	 ����ëñ��
footballhat	 ����Ƥñ��
tophat	 ������ñ��
earmuffshat	 ���ö��� ��ëñ��
winterhat	 ����ñ��
minerhat	 ����ñ��
spiderhat	 ��֩��ñ��
beehat	 ����ñ��
walrushat	 ������ñ��
slurtlehat	 ����ţñ�ӣ�
bushhat	 ������ñ��
ruinshat	 ��Զ�����ڣ�
rainhat  ������ñ��
icehat  ����ñ��
watermelonhat	 ������ñ��
catcoonhat	 �����ñ��
wathgrithrhat	 ����˿����˹ñ Ů����ñ�ӣ�
armorwood	 ��ľ���� ľͷ���� ���ף�
armorgrass	 ���ݿ��� ���ף�
armormarble	 ������ʯ���� ���ף�
armor_sanity	 ��ҹħ���� ���� ��ҹ���� ��
armorsnurtleshell	 ����ţ����� ��ţ���� ���ף�
armorruins	 ��Զ�ſ��� ���ף�
sweatervest	 ��С�ɱ��ģ�
trunkvest_summer	 �����ձ��ģ�
trunkvest_winter	 ���������ģ�
armorslurper	 ������������
raincoat �����£�
webberskull	 ��Τ��ͷ�ǣ�
molehat	 ������ñ��
armordragonfly	 �����ѿ��ף�
beargervest	 ���ܱ��ģ�
eyebrellahat	 ���۾�ñ ����ɡ��
reflectivevest	 �����䱳�ģ�
hawaiianshirt	 �������ĳ�����



;4.������

campfire	 ��Ӫ��
firepit	 ��ʯͷӪ��
coldfire  �����
coldfirepit ��ʯͷ���
cookpot	 ������
icebox	 �����䣩
winterometer	 �������¶ȼƣ�
rainometer	 �������� ����ƣ�
slow_farmplot	 ��һ��ũ�
fast_farmplot	 ���߼�ũ�
siestahut  ����˯С�ݣ�
tent	 ������
homesign	 ��·�ƣ�
birdcage	 ��������
meatrack	 ������ܣ�
lightning_rod	 �������룩
pottedfern	 �����ԣ�
nightlight	 ����ҹ�����ƣ�
nightmarelight	 ��Ӱ�ƣ�
researchlab	 ����ѧ������
researchlab2	 �����������棩
researchlab3	 ����Ӱ�����ߣ�
researchlab4	 �����ӷֽ�����
treasurechest	 ��ľ�䣩
skullchest	 �������䣩
pandoraschest	 �����������ӣ�
minotaurchest	 �����������ӣ�
wall_hay_item	 ����ǽ��
wall_wood_item	 ��ľǽ��
wall_stone_item	 ��ʯǽ��
wall_ruins_item	 ����ǽ��
wall_hay	 �����ϵĲ�ǽ��
wall_wood	 �����ϵ�ľǽ��
wall_stone	 �����ϵ�ʯǽ��
wall_ruins	 �����ϵ���ǽ��
pighouse	 ������
rabbithole	 ���÷���
mermhouse	 �����˷���
resurrectionstatue	 ��������
resurrectionstone	 ������ʯ��
ancient_altar 	 ��Զ�ż�̳��
ancient_altar_broken 	 ���𻵵�Զ�ż�̳��
telebase	 �����ͺ��ģ�
gemsocket	 ����ʯ��̨��
eyeturret	 ���̶��ڵ��ϵ��۾�������
eyeturret_item	 ���ɴ��ߵ��۾�������
cave_exit	 ����Ѩ���ڣ�
turf_woodfloor	 ��ľ�ذ壩
turf_carpetfloor	 ����̺�ذ壩
turf_checkerfloor	 �����̵ذ壩
adventure_portal	 ��ð��֮�ţ�
rock_light	 ����ɽ�ӣ�
gravestone	 ��Ĺ����
mound	 ����Ĺ���ѣ�
skeleton	 ���˹ǣ�
houndbone	 ������ͷ��
animal_track	 �������㼣��
dirtpile	 �����ɵ����ѣ�
pond	 ��������
pond_cave	 ����Ѩ������
pighead	 ����ͷ����
mermhead	 ����ͷ����
pigtorch	 �����棩
rabbithole	 �����Ӷ���
beebox	 �����䣩
beehive	 ��Ұ�����ѣ�
wasphive	 ��ɱ�˷��ѣ�
spiderhole	 ����Ѩ֩�붴��
walrus_camp	 �������ѣ�
tallbirdnest	 �������ѣ�
houndmound	 ����Ȯ��
slurtlehole	 ����ţ�ѣ�
batcave	 �����𶴣�
monkeybarrel	 ������Ͱ��
spiderden	 ��֩�볲Ѩ��
molehill	 ��������
catcoonden	 ����ܶ���
rock1	 ������ʯ����ʯ��
rock2	 �����ƽ����ʯ��
rock_flintless	 ��ֻ��ʯͷ����ʯ��
stalagmite_full	 ����Բ��Ѩʯͷ��
stalagmite_med	 ����Բ��Ѩʯͷ��
stalagmite_low	 ��СԲ��Ѩʯͷ��
stalagmite_tall_full	 ����߶�Ѩʯͷ��
stalagmite_tall_med	 ���и߶�Ѩʯͷ��
stalagmite_tall_low	 ��С�߶�Ѩʯͷ��
rock_ice	 ����ʯ��
ruins_statue_head	 ��Զ��ͷ��
ruins_statue_mage	 ��Զ�ŷ�ʦ����
marblepillar	 ������ʯ���ӣ�
marbletree	 ������ʯ����
statueharp	 �����ٵ���
basalt	 �������ң�
basalt_pillar	 ���������ң�
insanityrock	 ����������ʯ��
sanityrock	 ����������ʯ��
ruins_chair	 ��Զ�����ӣ�
ruins_vase	 ��Զ�Ż�ƿ��
ruins_table	 ��Զ�����ӣ�
statuemaxwell	 ����˹��������
statueglommer	 �������ŵ���
relic	 �����棩
ruins_rubble	 ����ٵķ��棩
bishop_nightmare	 ���𻵵ĵ���
rook_nightmare	 ���𻵵�ս����
knight_nightmare	 ���𻵵���ʿ��
chessjunk1	 ���𻵵Ļ�е1��
chessjunk2	 ���𻵵Ļ�е2��
chessjunk3	 ���𻵵Ļ�е3��
teleportato_ring	 ����״���ͻ������
teleportato_box	 ����״���ͻ������
teleportato_crank	 ������״���ͻ������
teleportato_potato	 ����״���ͻ������
teleportato_base	 �����ͻ����������
teleportato_checkmate	 �����ͻ����������
wormhole	 ���涴��
wormhole_limited_1	 �������Ƶĳ涴��
stafflight	 ��С���ǣ�
treasurechest_trap	 ���������壩
icepack	 ��������
dragonflychest	 ���������ӣ�



;5.ʳ�

carrot	 �����ܲ���
carrot_cooked	 ������ܲ���
berries	 ��������
berries_cooked	 ���콬����
pumpkin	 ���Ϲϣ�
pumpkin_cooked	 �����Ϲϣ�
dragonfruit	 ����������
dragonfruit_cooked	 �����������
pomegranate	 ��ʯ��
pomegranate_cooked	 ����ʯ��
corn	 �����ף�
corn_cooked	 �������ף�
durian	 ��������
durian_cooked	 ����������
eggplant	 �����ӣ�
eggplant_cooked	 �������ӣ�
cave_banana	 ����Ѩ�㽶��
cave_banana_cooked	 ���춴Ѩ�㽶��
acorn	 �������
acorn_cooked ���������
cactus_meat	 ���������⣩
watermelon �����ϣ�
red_cap	 ����ժ�ĺ�Ģ����
red_cap_cooked	 ������ĺ�Ģ����
green_cap	 ����ժ����Ģ����
green_cap_cooked	 ���������Ģ����
blue_cap_cooked	 ���������Ģ����
blue_cap	 ����ժ����Ģ����
seeds	 �����ӣ�
seeds_cooked	 �������ӣ�
carrot_seeds	 �����ܲ����ӣ�
pumpkin_seeds	 ���Ϲ����ӣ�
dragonfruit_seeds	 �����������ӣ�
pomegranate_seeds	 ��ʯ�����ӣ�
corn_seeds	 ���������ӣ�
durian_seeds	 ���������ӣ�
eggplant_seeds	 ���������ӣ�
smallmeat	 ��С�⣩
cookedsmallmeat	 ��С���⣩
smallmeat_dried	 ��С���⣩
meat	 �����⣩
cookedmeat	 �������⣩
meat_dried	 ������⣩
drumstick	 �����ȣ�
drumstick_cooked	 ���켦�ȣ�
monstermeat	 �����⣩
cookedmonstermeat	 ������⣩
monstermeat_dried	 ���ɷ��⣩
plantmeat	 ��ʳ�˻��⣩
plantmeat_cooked	 ����ʳ�˻��⣩
bird_egg	 ��������
bird_egg_cooked	 ������ļ�����
rottenegg	 ���ü�����
tallbirdegg	 �����񵰣�
tallbirdegg_cooked	 ������񵰣�
tallbirdegg_cracked	 �������ĸ��񵰣�
fish	 ���㣩
fish_cooked	 �����㣩
eel	 �����㣩
eel_cooked	 �������㣩
froglegs	 �����ȣ�
froglegs_cooked	 �������ȣ�
batwing	 ��������
batwing_cooked	 ����������
trunk_cooked	 ������ǣ�
mandrake	 ���������ݣ�
cookedmandrake	 �����������ݣ�
honey	 �����ۣ�
butter	 �����ͣ�
butterflymuffin	 �������ɱ���
frogglebunwich	 ������Բ��������Σ�
honeyham	 ����֭���ȣ�
dragonpie	 �����ڱ���
taffy	 ��̫���ǣ�
pumpkincookie	 ���Ϲϱ���
kabobs	 ���⴮��
powcake	 ��֥ʿ���⣩
mandrakesoup	 ��������������
baconeggs	 ���������ȣ�
bonestew	 ��������
perogies	 ����ԲС�ֱ���
wetgoop	 ��ʪ�役����
ratatouille	 �����ŵ����ˣ�
fruitmedley	 ��ˮ��ƴ�̣�
fishtacos 	 �����ױ���ը�㣩
waffles 	 ���������
turkeydinner	 �������ͣ�
fishsticks	 ����������
stuffedeggplant	 �������ѺУ�
honeynuggets	 �����۽�ש��
meatballs	 ������ ���ӣ�
jammypreserves	 �������۽���
monsterlasagna	 ������ǧ�����
unagi	 ����������
bandage	 �����۱�����
healingsalve	 ������ҩ�ࣩ
spoiled_food	 ������ʳ�
flowersalad	 ����ɳ����
icecream	 �������� ����ܣ�
watermelonicle	 �����ϱ���
trailmix	 ���ɹ���
hotchili	 ����ଣ�
guacamole	 �����潴��
goatmilk	 �����̣�
perogies   ��ˮ�� ���ӣ�


;6.ֲ�

flower	 ������
flower_evil	 ��ج�λ���
carrot_planted	 �����ڵ��ϵĺ��ܲ���
grass	 �����ڵ��ϵĲݣ�
depleted_grass	 ���ݸ���
dug_grass	 �����ݴأ�
sapling	 �����磩
dug_sapling	 �����ֵ����磩
berrybush	 �������ԣ�
dug_berrybush	 �����ֵĹ����ԣ�
berrybush2	 ��������2��
dug_berrybush2	 �����ֵĹ�����2��
marsh_bush	 ����̹�ľ��
dug_marsh_bush	 �����ֵļ�̹�ľ��
reeds	 ��«έ��
lichen	 ����Ѩ̦޺��
cave_fern	 ��ާ��ֲ�
evergreen	 ������
evergreen_sparse	 �����ɹ�������
marsh_tree	 ����Ҷ����
cave_banana_tree	 ����Ѩ�㽶����
livingtree	 ��������
deciduoustree	 ��������
deciduoustree_tall	 ����������
deciduoustree_short	 ����������
red_mushroom	 ����Ģ����
green_mushroom	 ����Ģ����
blue_mushroom	 ����Ģ����
mushtree_tall	 ����Ģ������
mushtree_medium	 ����Ģ������
mushtree_small	 ��СĢ������
flower_cave	 �����䶴Ѩ�� ӫ��ݣ�
flower_cave_double	 ��˫�䶴Ѩ�� ӫ��ݣ�
flower_cave_triple	 �����䶴Ѩ�� ӫ��ݣ�
tumbleweed	 ������ݣ�
cactus	 �������ƣ�
cactus_flower	 �������ƻ���
marsh_plant	 ��ˮ����С�ݣ�
pond_algae	 ��ˮ�壩



;7.���

rabbit	 �����ӣ�
perd	 ���𼦣�
crow	 ����ѻ��
robin	 ����ȸ��
robin_winter	 ��ѩȸ��
butterfly	 ��������
fireflies	 ��ө��棩
bee	 ���۷䣩
killerbee	 ��ɱ�˷䣩
flies	 ����Ӭ��
mosquito	 �����ӣ�
frog	 �����ܣ�
beefalo	 ��ţ��
babybeefalo	 ��Сţ��
lightninggoat	 ��������
pigman	 �����ˣ�
pigguard	 ����������
bunnyman	 �����ˣ�
merm	 �����ˣ�
spider_hider	 ����Ѩ֩�룩
spider_spitter	 ������֩�룩
spider	 ������С֩�룩
spider_warrior	 ��������֩�룩
spiderqueen	 ��֩��Ů����
spider_dropper	 ����֩�룩
hound	 ���Թ���
firehound	 ����ɫ�Թ���
icehound	 ��������
tentacle	 �����֣�
tentacle_garden	 �����ʹ��֣�
leif	 ��������
leif_sparse	 ��ϡ��������
walrus	 ������
little_walrus	 ��С����
smallbird	 ��С����
teenbird	 ���������
tallbird	 ������
koalefant_summer	 ������
koalefant_winter	 ������
penguin	 ����죩
slurtle	 ����ţ�꣩
snurtle	 �����棩
bat	 ������
rocky	 ����Ϻ��
monkey	 �����ӣ�
slurper	 ��׺ʳ�ߣ�
buzzard	 ��ͺ�գ�
mole	 ������
catcoon	 ����ܣ�
knight	 ��������ʿ��
bishop	 �����̣�
rook	 ��ս����
crawlinghorror	 �����а�Ӱ�֣�
terrorbeak	 �����찵Ӱ�֣�
deerclops	 ����¹��
minotaur	 ��Զ���ػ��ߣ�
worm	 ��Զ�ų��� ������
abigail	 �����ȸǶ���
ghost	 �����飩
shadowwaxwell	 ����˹������ӰС�ˣ�
krampus	 ������˹ С͵��
glommer	 �������� ����ķ��
chester	 ����˹�� С�� ���䣩
lureplant	 ��ʳ�˻���
eyeplant	 ��ʳ�˻��۾���
bigfoot	 ����ţ�
pigking	 ��������
moose	 ��¹Ѽ �죩
mossling	 ��СѼ��
dragonfly	 �����ѣ�
warg	 �����ǣ�
bearger	 ���ܣ�
birchnutdrake	 �����Ѽ��
mooseegg	 ��¹Ѽ�� �쵰��



;8.��ɫ��

wilson	 ������ѷ��
waxwell	 ����˹������
wendy	 ���µ٣�
woodie	 ����ϣ�
wes	 ��Τ˹��
wickerbottom	 ��ͼ�����Ա��
willow	 ��ޱ�壩
wolfgang	 ���ֶ���ԣ�
wx78	 �������ˣ�
wathgrithr	 ����˿����˹��
webber	 ��Τ����

;9.����
faroz_gls  �������۾���
scythe    ������������
cave_entrance   ����Ѩ��ڣ�





























