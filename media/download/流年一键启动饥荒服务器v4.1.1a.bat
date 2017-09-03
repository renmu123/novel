@ECHO OFF&setlocal enabledelayedexpansion&cls
set  "licencesui1=*************************************************************************
set  "licencesui2=* 流年一键启动饥荒服务器   OneKeyVersion:v4.1.1     date: 2016年9月23日 *
set  "licencesui3=* ----------------------------------------------------------------------*
set  "licencesui4=* 流年离殇（QQ群：497398445）。版权所有。                               *
set  "licencesui5=* ----------------------------------------------------------------------*
set  "licencesui6=* LiuNianLiShang Copyright (C) 2015 - All Rights Reserved               *
set  "licencesui7=*************************************************************************
set  "licencesui8=* Author: LiuNianLiShang                                                *
set  "licencesui9=*************************************************************************
set "licencesui10=*     Revision history:                         location                *
set "licencesui11=*       2016-9-23: v4.1.1 修复第一次使用产生的找不到文件bug             *
set "licencesui12=*                                                                       *
set "licencesui13=*************************************************************************
set  "ui1=               ＃〓§〓〓〓〓〓§〓〓〓〓〓〓§〓〓〓〓〓§〓＃"
set  "ui2=               　　↓　　　　　↓　　　　　　↓　　　　　↓"
set  "ui3=               　☆★☆　　　☆★☆　　　　☆★☆　　　☆★☆"
set  "ui4=               ☆　欢　☆　☆　迎　☆　　☆　使　☆　☆　用　☆"
set  "ui5=               　☆★☆　　　☆★☆　　　　☆★☆　　　☆★☆"
set  "ui6=               　　↓　　　　　↓　　　　　　↓　　　　　↓"
set  "ui7=               　　※　　　　　※　　　　　　※　　　　　※"
set  "ui8=                        ﹎ ┈ ┈ .o┈ ﹎  ﹎.. ○"
set  "ui9=                        ﹎┈﹎ ●  ○ .﹎ ﹎o▂▃▅▆"
set "ui10=                        ┈ ┈ /█\/▓\ ﹎ ┈ ﹎﹎ ┈ ﹎"
set "ui11=                        ▅▆▇█████▇▆▅▃▂┈﹎"
rem call :openPort %1
rem -----------------------以上代码请勿改动，否则可能导致未知错误，后果自负-------------------------------
rem ┌──────────────流年一键启动服务器配置区域──────────────────┐
rem     现在的版本不推荐更改配置区域的选项，配置已经移植到LiuNianOneKey.ini里面，而且由脚本自动
rem     生成和维护，减少产生错误的几率，并且配置更加简单
set     "dstdir=D:\Program Files (x86)\Steam\steamapps\common\Don't Starve Together\bin\"
		rem 参数说明：设置饥荒客户端路径
		rem 1、设置饥荒客户端(DST)目录，最后必须以反斜杠\结尾
set     "select_clustername_or_not=false"
		rem 参数说明：
		rem 1、true表示每次程序开始运行的时候都自动提示选择存档槽
		rem 2、false表示关闭存档槽选择功能，使用clustername参数指定的存档槽
set     "clustername=LiuNianOneKey"
		rem 参数说明：
		rem 1、设置默认的存档槽
set     "每次开机选择是联机使用还是脱机使用=false"
		rem 参数说明：
		rem 1、true表示每次程序开始运行的时候都自动提示选择联机还是局域网
		rem 2、false使用默认的设置
set     "consolemod=true"
		rem 参数说明：控制台功能
		rem 1、true 启用脚本的控制台功能
		rem 2、false 关闭脚本的控制台功能
set     "advancedconsolemod=true"
		rem 参数说明：高级控制台功能
		rem 1、true 启用脚本的高级控制台功能
		rem 2、false 关闭脚本的高级控制台功能
set     "customdocumentmod=false"
		rem 参数说明：
		rem 1、true表示启用用户自定义我的文档\Klei\的路径
		rem 2、false关闭用户自定义我的文档路径
		rem 3、警告！！一般情况请不要设置，除非一键找不到路径
set     "customdocument=C:\Users\%USERNAME%\Documents\Klei\"
		rem 参数说明：
		rem 1、Klei路径示例C:\Users\%USERNAME%\Documents\Klei\
		rem 2、路径必须以反斜杠\结尾
set     "LiuNianOneKeyVersion=v4.1.1"
		rem 参数说明：正式版
		rem 程序版本号，请勿更改，否则后果自负！！
rem └─────────────────────────────────────────────┘
rem -----------------------以下代码请勿改动，否则可能导致未知错误，后果自负-------------------------------
set SteamAppId=322330
set SteamGameId=322330
set "OneKeyVersion=%LiuNianOneKeyVersion%"         rem 流年一键版本号
set "OverworldTitle=▄︻┻═┳一地上世界Overworld"     rem 地上世界窗口名
set "CavesTitle=▄︻┻═┳一地下世界Caves"             rem 地下世界窗口名
set "masterarchive=Master"                         rem 主世界存档名
set "cavesarchive=Caves"                           rem 地下世界存档名
set "consolecmd=c_save{(}{)}{enter}{enter}"        rem 控制台控制命令全局变量
set "consoledata=4722"                             rem 物品代码列表起始位置
set "convert=true"                                 rem mod转码标志变量
set "xind=false"                                   rem 守护进程标志变量
set "oldversion=false"                             rem 旧版本标识变量
set "nowpath=%0"                                   rem 当前路径
set "folder=LiuNianLiShang"                        rem 软件所在文件夹的名称
set "autoxind=false"                               rem 自动进入守护进程标志变量
set "isclient="                                    rem 是否是使用的客户端自带的服务端
set "playernum=1"                                  rem 控制台当前玩家编号
set "cmdyorn=地上"                                 rem 控制台刷的东西生成的位置，默认刷在地上，可以改成刷在背包
set "choice_console=地上"                          rem 玩家现在是在地上还是地下\
set "log_dir=%~dp0LiuNianOneKeyLog.txt"           rem 流年一键运行日志
echo,[%date% %time%]:----------------LiuNianOneKey Log File，version:%LiuNianOneKeyVersion%--------------->"%log_dir%"
echo,[%date% %time%]:-----如果发现bug请将此日志文件发送到流年qq群：497398445进行反馈----->>"%log_dir%"

call :write_log -----------------------流年一键参数初始化完成------------------------
rem 日志：当前时间：%date% %time:~0,-6%
if "%~n0" == "流年一键启动饥荒服务器%OneKeyVersion%" (
    call :write_log ……首次运行……
    call :miswt
    call :write_log 调整窗口大小……
    rem --------------调整窗口大小--------------
    mode con cols=80 
    mode con cp select=936 >nul
    call :write_log 设置窗口标题……
    rem --------------设置窗口标题--------------
    set "titlestr=流年一键启动饥荒服务器用户许可与版权声明"
    title !titlestr!
    call :licences
) else (
    if "%1" neq "h" (
        call :write_log 当前不是首次运行，自动对流年提高响应优先级
    	cls
    	rem echo, start /b /REALTIME "流年一键启动饥荒服务器 REALTIME" %0 h
    	start /b /REALTIME "流年一键启动饥荒服务器 REALTIME" %0 h
    	rem pause
    	call :write_log 退出当前进程v1……
    	exit
    )

)
%~d0
cd "%~dp0"
for /f "delims=" %%i in ("%cd%") do set "folder=%%~i"
rem --------------调整窗口大小--------------
call :write_log 调整窗口大小……
mode con cols=80 
mode con cp select=936 >nul
rem --------------设置窗口标题--------------
call :write_log 设置窗口标题……
set "titlestr=流年一键启动饥荒服务器 By LiuNianLiShang %OneKeyVersion% 更多资源请加 QQ群497398445"
title %titlestr%
rem --------------调整窗口颜色--------------
call :write_log 调整窗口颜色……
color 9f
rem echo Missing someone,i become so sad.I lost myself while lost my white cat.
rem echo Whoever tacked away someone I care,please tack good care of her.
rem echo You don't known how i wanner play this game with you.
rem echo ┌──────────────正在加载配置。────────────────┐
rem echo,                   loading ……………………
rem echo └─────────────────────────────────────┘
call :write_log 载入界面数据……
set  "initui1=            ******       ******        "
set  "initui2=          **********   **********      "
set  "initui3=        ************* *************    "
set  "initui4=       *****************************   "
set  "initui5=       *****************************   "
set  "initui6=       *****************************   "
set  "initui7=        ***************************    ┌──────────────┐    "
set  "initui8=          ***********************            欢迎使用【流年一键】     "
set  "initui9=            *******************            LiuNianLiShang %OneKeyVersion%   "
set "initui10=              ***************               交流QQ群：497398445     "
set "initui11=                ***********              使用过程中出现BUG欢迎反馈 "
set "initui12=                  *******                   流年祝您游戏愉快^_^    "
set "initui13=                    ***                └──────────────┘  "
set "initui14=                     *                                               "
set "initui15=                              .^&______~*@*~______^&.           *      "
set "initui16=                            ^"w/%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\w^"        ***   "
set "initui17=                              ^`Y^"^"Y^"^"Y^"^"^"^"^"Y^"^"Y^"^"Y'         *****    "
set "initui18=           __/M__          p-p_^|__^|__^|_____^|__^|__^|_q-q      **Y**    "
set "initui19=      ____^|O_^^_O^|_________[EEEEM==M==MM===MM==M==MEEEE]-__....^|....  "
set "initui20s=                         ┌──────────────┐"
set "initui21s=                                 正在加载配置……"
set "initui22s=                         └──────────────┘ "
set "initui21=         ^| "
set "initui22=        _^|__--/__  "
set "initui23=       ^|___ 02★ \[OOOOO=======II"
set "initui24=   .-----\^|______/ ____  "
set "initui25=   ^|____________________\   "
set "initui26=    \⊙◎◎◎◎◎◎◎◎ / "
set "initui27=      ~~~~~~~~~~~~~~~~   "
set "initui="
rem --------------防止改名与自动生成不同版本的一键-----------------
call :write_log 防止改名与自动生成不同版本的一键……
if "%每次开机选择是联机使用还是脱机使用%"=="true" (
    call :write_log 选择联机类型……
	call :displayui
	echo ┌──────────────请选择联机类型────────────────┐
	echo,            1-------Steam联机开服
	echo,            2-------局域网联机开服（游侠请选择这个）
	rem echo,            注：如果不想每次都弹出此对话，可以去一键配置区域关掉
	echo └─────────────────────────────────────┘
	set /p runningmod=请输入联机类型：
	echo,正在应用配置，请稍候……
	
	if "!runningmod!"=="1" (
	     call :write_log 用户选择了Steam联机方式
		 echo,@echo off>LiuNianOneKey.bat
		 echo,ren !nowpath! "流年一键启动饥荒服务器%OneKeyVersion%a.bat">>LiuNianOneKey.bat
		 rem echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
		 echo,start "%titlestr%" /b "%~dp0流年一键启动饥荒服务器%OneKeyVersion%a.bat">>LiuNianOneKey.bat
		 echo,exit>>LiuNianOneKey.bat
		 call :write_log 退出当前进程
		 
		 start /b "流年一键改名进程" LiuNianOneKey.bat
	)
	if "!runningmod!"=="2" (
	     call :write_log 用户选择了局域网联机方式
		 echo,@echo off>LiuNianOneKey.bat
		 echo,ren !nowpath! "流年一键启动饥荒服务器%OneKeyVersion%b.bat">>LiuNianOneKey.bat
		 rem echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
		 echo,start "%titlestr%" /b "%~dp0流年一键启动饥荒服务器%OneKeyVersion%b.bat">>LiuNianOneKey.bat
		 echo,exit>>LiuNianOneKey.bat
		 call :write_log 退出当前进程
		 start /b "流年一键改名进程" LiuNianOneKey.bat
	)
	
	exit
) else (
    if "%~n0" == "流年一键启动饥荒服务器%OneKeyVersion%" (
        call :write_log 选择联机类型……
    	call :displayui
    	echo ┌──────────────请选择联机类型────────────────┐
    	echo,            1-------Steam联机开服
    	echo,            2-------局域网联机开服（游侠请选择这个）
    	rem echo,            注：如果不想每次都弹出此对话，可以去一键配置区域关掉
    	echo └─────────────────────────────────────┘
    	set /p runningmod=请输入联机类型：
    	echo,正在应用配置，请稍候……
    	if "!runningmod!"=="1" (
    	     call :write_log 用户选择了Steam联机方式
    		 echo,@echo off>LiuNianOneKey.bat
    		 echo,ren !nowpath! "流年一键启动饥荒服务器%OneKeyVersion%a.bat">>LiuNianOneKey.bat
    		 rem echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
    		 echo,start "%titlestr%" /b "%~dp0流年一键启动饥荒服务器%OneKeyVersion%a.bat">>LiuNianOneKey.bat
    		 echo,exit>>LiuNianOneKey.bat
    		 call :write_log 退出当前进程
    		 start /b "流年一键改名进程" LiuNianOneKey.bat
    	)
    	if "!runningmod!"=="2" (
    	     call :write_log 用户选择了局域网联机方式
    		 echo,@echo off>LiuNianOneKey.bat
    		 echo,ren !nowpath! "流年一键启动饥荒服务器%OneKeyVersion%b.bat">>LiuNianOneKey.bat
    		 rem echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
    		 echo,start "%titlestr%" /b "%~dp0流年一键启动饥荒服务器%OneKeyVersion%b.bat">>LiuNianOneKey.bat
    		 echo,exit>>LiuNianOneKey.bat
    		 call :write_log 退出当前进程
    		 start /b "流年一键改名进程" LiuNianOneKey.bat
    	)
    	
    	exit
    )
)

if "%~n0" == "流年一键启动饥荒服务器%OneKeyVersion%a" (
    call :write_log 当前工作模式是Steam联机方式
	set     "runningmod=steam"
) else (
	if "%~n0" == "流年一键启动饥荒服务器%OneKeyVersion%b" (
	    call :write_log 当前工作模式是局域网联机方式
		set     "runningmod=offline"
	) else (
	    call :write_log 检测到流年一键名字被更改，自动修复中……
		echo,正在修复一键……
		echo,@echo off>LiuNianOneKey.bat
		echo,ren %0 流年一键启动饥荒服务器%OneKeyVersion%.bat>>LiuNianOneKey.bat
		echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
        echo,exit>>LiuNianOneKey.bat
        start /b /w "流年一键改名进程" LiuNianOneKey.bat
        start "%titlestr%" /b "%~dp0流年一键启动饥荒服务器%OneKeyVersion%.bat"
        rem cls
        color 07
        mode con cols=80
        mode con cp select=936 >nul
        call :write_log 退出当前进程
		exit
	)
)
for /l %%a in (2,1,23) do (
    call :write_log 构造加载配置动画界面……
	cls
	set "uid="
	for /l %%a in (1,1,11) do (
		set "uid=%%ui%%a%%"
		call echo !uid!
	)
	echo ┌───────────────正在加载配置────────────────┐
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
rem --------------适配不同的路径---------------
set "pth=dontstarve_dedicated_server_nullrenderer.exe"
if exist "%~dp0%pth%" (
    call :write_log 一键被放置到bin目录，自动剪切到上级目录并自动运行……
    xcopy /y /i /c %0 ..\>nul&cd ..&%~n0
    call :write_log 结束当前进程
    exit
) 

rem ----------------检测是否是客户端自带的服务端-------------------
set "pth=bin\dontstarve_steam.exe"
if exist "%~dp0%pth%" (
    call :write_log 当前使用的是客户端自带的服务端
	set "isclient=【客户端版】"
) else (
    call :write_log 当前使用的是专用服务端
)
:runnext
rem ---------------构造版本变量---------------
call :write_log 构造版本变量
if "%runningmod%"=="steam" ( set "rnmod=^(正版steam联机版^)" ) else set "rnmod=^(游侠局域网联机版^)"
call :write_log "构造版本变量为：%rnmod%"
rem ---------------一键窗口标题---------------
set "titlestr=流年一键启动饥荒服务器%rnmod% By LiuNianLiShang %OneKeyVersion% 更多资源请加 QQ群497398445"
title %titlestr%
call :write_log "更改一键标题为%titlestr%"
rem ---------------版本号构造--------------
set sv=a
if "%runningmod%"=="steam" (
	SET "sv=a"
) else (
	SET "sv=b"
)
set "OneKeyVersion=%OneKeyVersion%%sv%"
rem --------------找不到服务器时报错，并进入自动全盘搜索模式------------
set "pth=bin\dontstarve_dedicated_server_nullrenderer.exe"
if not exist "%~dp0%pth%" (
    call :write_log 找不到服务器报错，并进入自动全盘搜索模式……
	call :displayui
	goto patherr
)
rem -------自动构建我的文档路径采用各个系统默认的路径----------
rem set winOneKeyVersion=win7、8、10^=^=
rem set "Personal=C:\Users\%USERNAME%\Documents\Klei\"
rem ver|find /i "5.1" && set winOneKeyVersion=xp
rem if %winOneKeyVersion%==xp set "Personal=C:\Documents and Settings\%username%\My Documents\Klei\"
call :write_log 自动构建我的文档路径采用各个系统默认的路径…
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
call :write_log 流年一键测试我的文档路径……
set "testtitle=流年一键测试我的文档路径……"
if not exist "%Personal%" (
    call :write_log 路径"%Personal%"不存在，验证是否是因为从来没有运行过饥荒程序……
	start /min "流年一键测试我的文档路径……" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe"
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
	    call :write_log 当前路径不合法，正在重新获取本机我的文档路径……
	    echo,正在重新获取本机我的文档路径……
		call :vbs_get_document_dir
		call :write_log 我的文档路径获取完成，正在验证获取到的我的文档路径合法性……
		echo,我的文档路径获取完成，正在验证获取到的我的文档路径合法性……
		taskkill /f /im dontstarve_dedic* 1>nul 2>nul
		if not exist "!Personal!" (		
			start /min "流年一键测试我的文档路径……" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe"
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
			    call :write_log 自动获取我的文档路径失败
    			echo 自动获取我的文档路径失败,请使用一键配置区域手动指定我的文档路径
    			echo 或者在弹出的窗口直接双击本脚本适配最新的路径……
    			del LiuNianOneKey.ini >nul 2>nul
    			start "流年离殇" "%~dp0" 1>nul 2>nul
    			pause>nul
    			call :write_log 结束当前进程
    			exit
    		) else (
    		    echo,经过验证我的文档路径获取正确……
    		)
		)
	)
) else (
    call :write_log 默认我的文档路径正确
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
rem --------------清除服务器启动标识变量------------------
call :write_log 清除服务器启动标识变量……
for /f "usebackq" %%i in (` dir "%Personal%DoNotStarveTogether\" /A:D /B 2^>nul`) do (
	if "%%i" NEQ "client_save" (
		if "%%i" NEQ "save" (
		    if "%%i" NEQ "save.old" (
			    if exist "%Personal%DoNotStarveTogether\%%i\runningflag.lnls" del "%Personal%DoNotStarveTogether\%%i\runningflag.lnls"
		    )
		)
	)
)

rem -----------切换存档槽--------------
if "%select_clustername_or_not%" neq "true" goto start
call :write_log 切换存档槽……
:changecluster
call :displayui
set "clustername=LiuNianOneKey"
if not EXIST "%Personal%DoNotStarveTogether\" md "%Personal%DoNotStarveTogether\"
echo ┌───────────────请选择存档槽────────────────┐
echo, 一、选择的系统默认存档槽如果是单世界的话,不会读取系统存档，而是新建一个世界！
echo, 二、不同存档槽的服务器可以同时存在，即可以实现服务器多开，想要配置某个存档槽
echo, 三、的服务器只需要在主菜单按17切换至要配置服务器的存档槽就可以对其进行配置
echo, 四、如果不想每次运行都弹出此对话，可以去一键配置区域关掉
echo,               0----------------删除指定存档槽
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
        				echo,               !clusternum!----------------[%%i]（系统存档槽,谨慎选择）
        			) else (
        				echo,               !clusternum!----------------[%%i]
        			)
        		)
    		)
		)
	)
)
set /a clusternum=%clusternum%+1
echo,               %clusternum%----------------使用流年一键默认的存档槽 ※推荐
set /a clusternum=%clusternum%+1
echo,               %clusternum%----------------定制个性化存档槽
echo └─────────────────────────────────────┘
set "usercluster=-1"
set /a "allcundang=%clusternum%-2"
set /p usercluster=共找到%allcundang%个存档槽，请输入操作码:
set clustergl=0
if "%usercluster%"=="0" (
	set /p usercluster=请输入要删除存档槽前面的编号：
	for /f "usebackq" %%i in (`dir "%Personal%DoNotStarveTogether\" /A:D /B`) do (
		if "%%i" NEQ "client_save" (
			if "%%i" NEQ "save" (
			    if "%%i" NEQ "save.old" (
			        if "%%i" NEQ "backup" (
        				set /a clustergl=!clustergl!+1
        				if "!clustergl!"=="!usercluster!" (
        					 echo,正在删除%%i存档槽……
        					 set "clustername=%%i"
        					 set "OverworldTitle=▄︻┻═┳一地上世界Overworld 存档槽【!clustername!】一键版本【%OneKeyVersion%】服务器版本【%dstver%】"             rem 地上世界窗口名
        					 set "CavesTitle=▄︻┻═┳一地下世界Caves 存档槽【!clustername!】一键版本【%OneKeyVersion%】服务器版本【%dstver%】"					 rem 地下世界窗口名
        					 call :killserver>nul
        					 set "usercluster=-1"
        					 rd /s /q "!Personal!DoNotStarveTogether\%%i\"
        					 call :write_log "正在删除%%i存档槽……"
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
	 echo ┌───────────────请选择存档槽────────────────┐
	 echo      1、存档槽名字中不能有中文
	 echo      2、存档槽名字中不能包含空格、^"、^&等特殊字符
	 echo └─────────────────────────────────────┘
	 set /p usercluster=请输入自定义存档槽名称：
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
        			call :write_log "正在使用%%i存档槽打开服务器……"
        			if "!clustergl!"=="!usercluster!" echo,正在使用%%i存档槽打开服务器……&set clustername=%%i&goto start
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
			rem echo,当前服务器版本号： %dstver%
			set "oldversion=true"
		) else (
			rem echo,当前服务器版本号： %dstver%
			set "oldversion=false"
		)
	) else (
			rem set "dstver=999999"
			set "oldversion=false"
	)
) else (
	rem echo,未发现OneKeyVersion.txt,默认为最新版
	set "dstver=版本号未知"
	set "oldversion=false"
)
call :write_log "服务器版本号：%dstver%"
rem if "%clustername%"=="" set "clustername=LiuNianOneKey"

rem -------------检测是否有服务器正在运行-------------------
call :write_log 检测是否有服务器正在运行……
set "OverworldTitle=▄︻┻═┳一地上世界Overworld 存档槽【%clustername%】一键版本【%OneKeyVersion%】服务器版本【%dstver%】"   				    rem 地上世界窗口名
set "CavesTitle=▄︻┻═┳一地下世界Caves 存档槽【%clustername%】一键版本【%OneKeyVersion%】服务器版本【%dstver%】"					            rem 地下世界窗口名
set "existserver=0"
tasklist /fi "windowtitle eq %OverworldTitle%"|find "dontstarve_dedicated_serv">nul&&set "existserver=1"
if "%existserver%"=="1" (
	call :displayui
	goto exiterr
)
rem ------------------检测存档完整性--------------------
call :write_log 检测存档完整性……
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
rem ---------------构建服务器创建时的UI-----------------
call :write_log 构建服务器创建时的UI……
:ui
%~d0
cd "%~dp0"
cd bin >nul
set /a op=100
rem ----------自动生成modsetting.lua等服务器配置文件------------------
call :write_log 自动生成modsetting.lua等服务器配置文件……
if not exist "%~dp0mods\modsettings.lua" (
	echo 正在生成modsettings.lua……
	call :modsettingsregen
)
set "modpth1=%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\modoverrides.lua"
set "modpth2=%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\modoverrides.lua"
if not EXIST "%modpth1%" echo,正在配置modoverrides.lua…… &call :modoverrides
if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" (
	if not EXIST "%modpth2%" echo,正在配置modoverrindes.lua…… &call :modoverrides
)
if "%dstver%" lss "173098" (
    if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\worldgenoverride.lua" (
    	echo,正在生成 worldgenoverride.lua……
    	call :worldgenoverride 120 >nul
    )
)
rem ----------------生成客户端版本号-----------------
set "pth=%~dp0"
set "clientver="
call :write_log 生成客户端版本号……
if exist "!pth!version.txt" (
    if not exist "%dstdir%dontstarve_steam.exe" (
        rem set "dstdir=未找到饥荒客户端，请按20重新设置客户端路径"
        set "clientver=（未在当前目录下找到饥荒客户端程序，请确认路径是否有误，或者按20重新设置路径）"
    ) else (
        if exist "%dstdir:~0,-4%version.txt" (
    	    for /f "usebackq delims= " %%a in ("%dstdir:~0,-4%version.txt") do set "clientver=（ver%%a）"
    	    rem for /f "usebackq delims= " %%a in ("!pth!version.txt") do set "cmpdstver=%%a"
    	) else (
    	    set "clientver=（版本未知）"
    	) 
    )
) 
call :write_log "客户端版本号：%clientver%"
call :displayui

rem -------------自动生成令牌--------------

if not exist "%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt" (
    call :write_log 自动生成令牌……
	if exist "%Personal%DoNotStarveTogether\cluster_token.txt" (
	    call :write_log "从%Personal%DoNotStarveTogether\cluster_token.txt复制令牌文件……"
		COPY /y "%Personal%DoNotStarveTogether\cluster_token.txt" "%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt" 1>nul 2>nul
	) else (
	    call :write_log "使用流年预置的令牌……"
		set/p=xyXThBqSds+ku7ObcWRS1gbH/GlXdtKZ<nul>"%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt"
		call :codeconvert
		cscript "%~dp0codeconvert.vbs" "%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt" 1 1>nul 2>nul
		del "%~dp0codeconvert.vbs"
	)
)
if %GLFlag%==6 goto s6
if %GLFlag%==7 goto exiterr
echo ┌─────────────正在配置服务器请稍候……────────────┐
echo                          Made By LiuNianLiShang %OneKeyVersion%
echo                          更多资源请加 QQ群497398445
echo                         启用的mod过多会使启动时间增加
echo            进度条只会走到下面标记位置附近会停留几秒，在其他位置停留请重启
echo            首次使用需要进行服务器配置，最少也需要十几秒钟时间，请耐心等待
echo └─────────────────────────────────────┘
if %GLFlag%==5 goto s5
echo ┌─────────────正常情况下会在这里↓停留几秒──────────┐
if %GLFlag%==1 goto s1
if %GLFlag%==2 goto s2
if %GLFlag%==3 goto s3
if %GLFlag%==4 goto s4
if %GLFlag%==9 goto s2
:s1
rem -------服务器预配置---------------
call :write_log 服务器预配置……
if "%oldversion%" NEQ "true" (
	if "%runningmod%"=="steam" (
		start /min "地上世界预配置……" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %masterarchive% -console
	) else (
		start /min "地上世界预配置……" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %masterarchive% -console -offline
	)
	if "%runningmod%"=="steam" (
		if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" start /min "地下世界预配置……" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %cavesarchive% -console
	) else (
		if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" start /min "地下世界预配置……" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %cavesarchive% -console -offline
	)
) else (
    start /min "%OverworldTitle%" /d "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -conf_dir "DoNotStarveTogether\%clustername%\%masterarchive%" -console -offline -port !port!
    if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" (
    	start /min "%CavesTitle%" /d "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -conf_dir "DoNotStarveTogether\%clustername%\%cavesarchive%" -console -offline -port !port!
    )
)
rem ---------------构造进度条动画效果-----------------
call :write_log 构造进度条动画效果……
set /a GLFlag+=1
:s2
set/p= -<nul
for /L %%i in (0 1 22) do set /p a=■<nul&call :delay 10>nul
set /a GLFlag+=1
goto ui
:s3
set/p= -<nul
for /L %%i in (0 1 22) do set /p a=■<nul
for /L %%i in (22 1 36) do set /p a=■<nul&call :delay 10>nul
taskkill /f /im dontstarve_dedic* 1>nul 2>nul
set /a GLFlag=5
goto ui
:s4
set/p= -<nul
for /L %%i in (0 1 37) do set /p a=■<nul
set /a GLFlag=5
goto ui
:s5
echo ┌──────────────服务器配置完成────────────────┐
set/p= -<nul
for /L %%i in (0 1 37) do set /p a=■<nul
echo.
echo └─────────────────────────────────────┘
:ss
rem -------再次确认是否存在modsetting.lua--------
call :write_log 再次确认是否存在modsetting.lua……
if not exist "%~dp0mods\modsettings.lua" echo,正在生成modsettings.lua…… &call :modsettingsregen
rem -----------自动扫描可用端口----------------
rem --------启动饥荒服务器端----------
call :startserver
if "%autoxind%"=="true" set "xind=true"
SET status=1
set modFlag=0
rem ------------------启动饥荒客户端（防止重复启动算法）-----------------------
call :write_log 启动饥荒客户端（防止重复启动算法）……
(TASKLIST|FIND /I "dontstarve_steam"||SET status=0) 2>nul 1>nul
IF %status% EQU 0 (
	if exist "%dstdir%dontstarve_steam.exe" start "DST" /d "%dstdir%" "%dstdir%dontstarve_steam.exe"
)
rem echo                      服务器已经最小化启动，本窗口即将关闭
set /a GLFlag=6
goto ui
call :write_log "地上世界窗口名：▄︻┻═┳一地上世界Overworld 存档槽【%clustername%】一键版本【%OneKeyVersion%】服务器版本【%dstver%】"
call :write_log "地下世界窗口名：▄︻┻═┳一地下世界Caves 存档槽【%clustername%】一键版本【%OneKeyVersion%】服务器版本【%dstver%】"
set "OverworldTitle=▄︻┻═┳一地上世界Overworld 存档槽【%clustername%】一键版本【%OneKeyVersion%】服务器版本【%dstver%】"   rem 地上世界窗口名
set "CavesTitle=▄︻┻═┳一地下世界Caves 存档槽【%clustername%】一键版本【%OneKeyVersion%】服务器版本【%dstver%】"					 rem 地下世界窗口名
rem ---------------------主菜单UI---------------------
:s6
echo ┌───────────任务执行完毕，现在你还可以─────────────┐
echo    1------强制重新启动服务器（注意：如果服务器出现未响应请关闭服务器然后选我）
echo    2------强制关闭服务器                 ┌──────────────┐
echo    3------退出并强制关闭服务器               Made By LiuNianLiShang
echo    4------控制台操作菜单                     %OneKeyVersion%%rnmod%
echo    5------设置服务器启用的mods              更多资源请加 QQ群497398445
echo    6------重新创建modsettings.lua并设置  └──────────────┘
echo    7------强制删档重来     (注意，只删除session目录并重新创建世界）
echo    8------恢复初始状态     (注意，会删除save目录和设置包括mod设置、管理员==）
echo    9------打开服务器设置文件（可以更改服务器名最大人数等，注意，会关闭服务器）
echo    10-----配置管理员文件        11-----配置世界文件worldgenoverride.lua
echo    12-----备份存档和设置        13-----从备份恢复存档和设置
echo    14-----删除指定编号的备份    15-----删除某备份之前的所有备份
echo    16-----生成cluster_token.txt 17-----切换存档槽（多开）
echo    18-----启动服务器进程守护    19-----从客户端复制mod文件到服务器端mods目录
echo    20-----重新启动饥荒客户端    30-----退出并强制关闭所有饥荒服务器和客户端
echo    D------打开我的文档目录      L------打开地上日志文件，小写的l打开地下log
echo    0------帮助、反馈和更新      C------初始化一键
echo    E------自动分析服务器运行状态（给出服务器运行失败的原因和修改依据）
echo    服务器路径:【%folder%\bin\(服务器版本%dstver%%isclient%)】
echo    客户端路径:【%dstdir%%clientver%】
echo    Klei路径:【%Personal%】

call :write_log "服务器路径:【%folder%\bin\(服务器版本%dstver%%isclient%)】"
call :write_log "客户端路径:【%dstdir%%clientver%】"
call :write_log "Klei路径:【%Personal%】"
rem if exist "%~dp0/dontstarve_steam.exe" set /p=【客户端服务器】<nul
echo └─────────────────────────────────────┘
if "%xind%"=="true" call :serverxind
set /p op="----------请输入操作码，按回车确认："
if "%op%"=="e" (
    call :errerany
    goto :ui
)
if "%op%"=="E" (
    call :errerany
    goto :ui
)
if "%op%"=="19" (
    call :write_log 从客户端复制mod文件到服务器端mods目录……
    rem call :killserver
    call :aotucopymodfile
    goto :ui 
)
if "%op%"=="c" (
    call :write_log 初始化一键……
    call :killserver
    del /q "%~dp0LiuNianOneKey.ini">nul 2>nul
    rem start /b "clear" %0
	echo,正在初始化一键……
	echo,@echo off>LiuNianOneKey.bat
	echo,ren %0 流年一键启动饥荒服务器%LiuNianOneKeyVersion%.bat>>LiuNianOneKey.bat
	echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
    echo,exit>>LiuNianOneKey.bat
    start /b /w "流年一键改名进程" LiuNianOneKey.bat
    start "%titlestr%" /b "%~dp0流年一键启动饥荒服务器%LiuNianOneKeyVersion%.bat"
    call :write_log 退出当前进程……
    exit
) 
if "%op%"=="C" (
    call :write_log 初始化一键……
    call :killserver
    del /q "%~dp0LiuNianOneKey.ini">nul 2>nul
    start /b "clear" %0
    echo,正在初始化一键……
	echo,@echo off>LiuNianOneKey.bat
	echo,ren %0 流年一键启动饥荒服务器%LiuNianOneKeyVersion%.bat>>LiuNianOneKey.bat
	echo,choice /d n /t 1 ^>nul>>LiuNianOneKey.bat
    echo,exit>>LiuNianOneKey.bat
    start /b /w "流年一键改名进程" LiuNianOneKey.bat
    start "%titlestr%" /b "%~dp0流年一键启动饥荒服务器%LiuNianOneKeyVersion%.bat"
    call :write_log 退出当前进程……
    exit
) 
if "%op%"=="18" (
    call :write_log 启动服务器进程守护
    set "xind=true"& goto ui
)
if "%op%"=="17" goto changecluster
if "%op%"=="16" (
    call :write_log 生成cluster_token.txt……
	set taken=0
	set /p taken=请输入token，按回车确认:
	if !taken!==0 (
		echo,正在写入cluster_token.txt……
		call :write_log 用户没有输入任何内容，使用预设的令牌写入……
		rem ------以下向文件写入的方法可以做到写入的文本没有多余的回车换行-----
		set/p=xyXThBqSds+ku7ObcWRS1gbH/GlXdtKZ<nul>"%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt"
	) else (
	    call :write_log 使用用户输入的令牌写入……
		echo,正在写入cluster_token.txt……
		set/p=!taken!<nul>"%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt"
	)
	rem 对cluster_token.txt从ANSI转码成无BOM型UTF-8
	call :codeconvert
	cscript "%~dp0codeconvert.vbs" "%Personal%DoNotStarveTogether\%clustername%\cluster_token.txt" 1 1>nul 2>nul
	del "%~dp0codeconvert.vbs"
	call :write_log 令牌生成成功！
	echo,令牌生成成功，按任意键继续&pause>nul
	goto ui
)
if "%op%"=="0" (
	call :myhelp & goto ui
)
if "%op%"=="4" (
    call :write_log 进入流年一键控制台菜单……
	set "existserver=0"
	tasklist /fi "windowtitle eq %OverworldTitle%"|find "dontstarve_dedicated_serv">nul&&set "existserver=1"
	if "!existserver!"=="1" (
		if "%consolemod%"=="true" (
			 call :Consoleshurufatiaozheng1
			 call :Consoleshurufatiaozheng2
			 goto consolemenu
			 goto ui
		)
		echo 请在配置区域启用脚本控制台功能再使用！
		pause
		goto ui
	) else (
	    call :write_log "未检测到正在运行的以【%clustername%】为存档槽的服务器，请开启后再使用一键控制台功能……"
		echo,未检测到正在运行的以【%clustername%】为存档槽的服务器，请开启后再使用一键控制台功能，按任意键继续……&pause>nul&goto ui
	)
)

rem ----------弹出饥荒服务器日志文件----------------
if "%op%"=="l" (
    call :write_log 弹出饥荒地下服务器日志文件……
	start "log" notepad "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"
	start "log" notepad "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_chat_log.txt"
	goto ui
)
if "%op%"=="L" (
    call :write_log 弹出饥荒地上服务器日志文件……
	start "log" notepad "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"
	start "log" notepad "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_chat_log.txt"
	goto ui
)
rem ---------------------弹出我的文档目录----------------------
if EXIST "%Personal%" (
    
	if "%op%"=="d" (
    	call :write_log 弹出我的文档目录……
    	start "我的文档目录" "%Personal%" &goto ui
	) 
	if "%op%"=="D" (
	    call :write_log 弹出我的文档目录……
	    start "我的文档目录" "%Personal%" &goto ui
	) 
) ELSE (
    call :write_log 打开我的文档目录出错，请确认您是否更改过您电脑上的我的文档路径……
	ECHO 打开我的文档目录出错，请确认您是否更改过您电脑上的我的文档路径
	pause&goto ui
)
rem -------------------启动饥荒客户端----------------
if "%op%"=="20" (
    call :write_log 启动饥荒客户端……
	SET status=1
	set modFlag=0
	taskkill /f /im dontstarve_s* 2>nul
	(TASKLIST|FIND /I "dontstarve_steam"||SET status=0) 2>nul 1>nul
	IF "%status%" EQU "0" (
		if exist "%dstdir%dontstarve_steam.exe" (
			start "DST" /d "%dstdir%" "%dstdir%dontstarve_steam.exe"
			call :write_log "DST正在启动，如果DST长时间没有启动，请重新执行此操作，正在跳转到主界面……"
			echo DST正在启动，如果DST长时间没有启动，请重新执行此操作，正在跳转到主界面……
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
	    call :write_log "饥荒客户端（DST）进程尚未完全结束，请等待片刻重试，正在跳转到主界面……"
	    echo,饥荒客户端（DST）进程尚未完全结束，请等待片刻重试，正在跳转到主界面……
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
    call :write_log 退出并强制关闭服务器……
    call :killserver&exit >nul
)
if "%op%"=="30" (
    call :write_log 退出并强制关闭所有饥荒服务器和客户端……
    taskkill /f /im dontstarve* 2>nul&exit >nul
)
if "%op%"=="5" (
    call :killserver
    if EXIST "%~dp0LiuNianModSetTool.exe" (
        call :write_log 调用LiuNianModSetTool.exe等待用户配置mod文件……
        echo,等待用户配置mod文件……
        start /w /d "%~dp0" LiuNianModSetTool.exe "存档槽" "%clustername%"
        goto ui
    )
    call :write_log 不存在LiuNianModSetTool.exe，使用流年一键生成mod文件……
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
	if not EXIST "!modpth!" echo,正在生成modsettings.lua……& call :modsettingsregen
	%~d0
    cd "%~dp0"
	if EXIST "!modpth!" echo,等待用户配置modsettings.lua…… &start /w NOTEPAD "!modpth!"
	if EXIST "!modpth1!" echo,等待用户配置地上modoverrides.lua…… &start /w NOTEPAD "!modpth1!"
	if EXIST "!modpth2!" echo,等待用户配置地下modoverrides.lua…… &start /w NOTEPAD "!modpth2!"
	if EXIST "!modpth3!" echo,等待用户配置dedicated_server_mods_setup.lua…… &start /w NOTEPAD "!modpth3!"
	goto ui
)
if "!op!"=="6" (
    call :killserver
    if EXIST "%~dp0LiuNianModSetTool.exe" (
        echo,等待用户配置mod文件……
        call :write_log 调用LiuNianModSetTool.exe等待用户配置mod文件……
        start /w /d "%~dp0" LiuNianModSetTool.exe "存档槽" "%clustername%"
        goto ui
    )
	set "modpth=%~dp0%mods\modsettings.lua"
	set "modpth1=!Personal!DoNotStarveTogether\!clustername!\!masterarchive!\modoverrides.lua"
	set "modpth2=!Personal!DoNotStarveTogether\!clustername!\!cavesarchive!\modoverrides.lua"
    set "modpth3=!~dp0!mods\dedicated_server_mods_setup.lua"
    call :write_log 不存在LiuNianModSetTool.exe，使用流年一键生成mod文件……
	echo,正在生成modsetting.lua……
	call :modsettingsregen
	echo,正在生成modoverrides.lua……
	call :modoverrides
	if EXIST "modpth!" echo,等待用户配置modsettings.lua…… &start /w NOTEPAD "!modpth!"
	if EXIST "!modpth1!" echo,等待用户配置地上modoverrides.lua…… & start /w NOTEPAD "!modpth1!"
	if EXIST "!modpth2!" echo,等待用户配置地上modoverrides.lua…… & start /w NOTEPAD "!modpth2!"
	if EXIST "!modpth3!" echo,等待用户配置dedicated_server_mods_setup.lua…… &start /w NOTEPAD "!modpth3!"
	goto ui
)
if "%op%"=="7" call :killserver&goto miniinit
if "%op%"=="8" call :killserver&goto init
if "%op%"=="9" call :killserver&goto settings
if "%op%"=="10" call :killserver&goto admin
if "%op%"=="11" (
    call :write_log 自动生成世界配置文件……
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
        call :write_log 旧版本饥荒服务器端生成世界配置文件……
        CALL :killserver
        call :worldgenoverride 11
    )
)
if "%op%"=="13" call :killserver&goto selectbaktoreturn
goto ui
exit

:mods
    rem ----------------生成modsettings.lua------------------------
    rem ----------------弃用------------------------
    %~d0
    cd "%~dp0"
    cd mods>nul
    call :write_log 生成modsettings.lua……
    set "pth=mods\modsettings.lua"
    if %modFlag%==1 del "%~dp0%pth%">nul
    if exist "%~dp0%pth%" goto modover
    echo,正在生成modsettings.lua……
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
    echo,--    ┌──────────────────────────┐>>"%~dp0%pth%"
    echo,--        1、以上是modsettings.lua默认内容>>"%~dp0%pth%"
    echo,--        2、本文档是由流年一键启动饥荒服务器%OneKeyVersion%生成>>"%~dp0%pth%"
    echo,--        3、列表创建日期:%date% %time:~0,-6%>>"%~dp0%pth%"
    echo,--        4、--为注释，不影响使用>>"%~dp0%pth%"
    echo,--        5、默认不启用任何mod>>"%~dp0%pth%"
    echo,--        6、删除最前面的注释--即为启用当前行的mod>>"%~dp0%pth%"
    echo,--        7、感谢佩剑的兔子的modsettings.lua制作代码>>"%~dp0%pth%"
    echo,--        8、更多资源请加 QQ群497398445>>"%~dp0%pth%"
    echo,--    └──────────────────────────┘>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    call :displayui
    call :confirmconvert
    if "%convert%"=="true" (
    	call :codeconvert
    	if exist "%~dp0codeconvert.vbs" (
    		rem ---------------对modinfo.lua备份转码---------------
    		for /f "usebackq tokens=1,3 delims=\=" %%i in (`findstr /s "^name" modinfo.lua`) do (
    			echo 正在备份并转码%%i:%%j……
    			copy /y "%~dp0mods\%%i\modinfo.lua" "%~dp0mods\%%i\modinfo.bak" 1>nul 2>nul
    			cscript "%~dp0codeconvert.vbs" "%~dp0mods\%%i\modinfo.lua"  1>nul 2>nul
    		)
    	)
    )
    rem -----------读取modinfo.lua并构造modsetting.lua文件-----------
    for /f "usebackq tokens=1,3 delims=\=" %%i in (`findstr /s "^name" modinfo.lua`) do (
    	if not "%%i"=="current:C:" (
    		echo,--ForceEnableMod^("%%i"^)	--%%j>>"%~dp0%pth%"
    	)
    )
    rem -----------复原modinfo.lua ------------------------
    if "%convert%"=="true" (
    	if exist "%~dp0codeconvert.vbs" (
    		for /f "usebackq tokens=1,3 delims=\=" %%i in (`findstr /s "^name" modinfo.lua`) do (
    			echo 正在恢复%%i:%%j……
    			copy /y "%~dp0mods\%%i\modinfo.bak" "%~dp0mods\%%i\modinfo.lua" 1>nul 2>nul
    			del "%~dp0mods\%%i\modinfo.bak" 1>nul 2>nul
    		)
    		del "%~dp0codeconvert.vbs"
    	)
    )
    echo,modsettings.lua生成成功
    rem ----------文件占用检测---------------
    call :delay 30 >nul
    :modover
    ren "%~dp0%pth%" "modsettings.lua" 1>nul 2>nul
    if %errorlevel% neq 0 (
    	echo modsettings.lua文件已经被其他程序占用
    	call :delay 30 >nul
    	goto modover
    	) else (
    	if "%1"=="f" (
    		goto :eof
    	) else (
    		echo 等待用户设置modsettings.lua
    		start /w "test" "notepad" "%~dp0%pth%">nul
    	)
    )
set /a GLFlag=6 >nul& goto ui

rem ----------------生成modoverrides.lua---------------------
if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\modoverrides.lua" (
    if EXIST "%~dp0LiuNianModSetTool.exe" (
        echo,等待用户配置mod文件……
        start "GUI" /w /d "%~dp0" "%~dp0LiuNianModSetTool.exe" "存档槽" "%clustername%"
        goto :eof
    )
)

:modoverrides
    %~d0
    cd "%~dp0"
    cd mods>nul
    call :write_log modoverrides……
    if not exist "%Personal%DoNotStarveTogether\%clustername%\" md "%Personal%DoNotStarveTogether\%clustername%\"
    if not exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\" md "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\"

    set "modpth1=%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\modoverrides.lua"
    set "modpth2=%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\modoverrides.lua"
    set "modsettingui1=--    ┌──────────────────────────┐"
    set "modsettingui2=--        1、本文档是由流年一键启动饥荒服务器%OneKeyVersion%生成"
    set "modsettingui3=--        2、列表创建日期:%date% %time:~0,-6%"
    set "modsettingui4=--        3、--为注释，不影响使用"
    set "modsettingui5=--        4、默认不启用任何mod"
    set "modsettingui6=--        5、把enabled = false改成enabled = true即为启用mod"
    set "modsettingui7=--        6、更多资源请加 QQ群497398445"
    set "modsettingui8=--    └──────────────────────────┘"
    set "modsettingui="
    call :codeconvert
    set/p=<nul>"%modpth1%"
    if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" set/p=<nul>"%modpth2%"
    for /l %%a in (1,1,8) do (
    	set "modsettingui=%%modsettingui%%a%%"
    	call echo,!modsettingui!>>"%modpth1%"
    	if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\" call echo,!modsettingui!>>"%modpth2%"
        set "ServerModSetuptmp=☆"
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
    					    set "ServerModSetuptmp=☆"
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
    echo,√
goto :eof

rem ----------------改进后的modsettings.lua生成算法---------------------
if not exist "%~dp0mods\modsettings.lua" (
    echo,>"%~dp0mods\modsettings.lua"
    goto :eof
    if EXIST "%~dp0LiuNianModSetTool.exe" (
        echo,等待用户配置mod文件……
        start "GUI" /w /d "%~dp0" "%~dp0LiuNianModSetTool.exe" "存档槽" "%clustername%"
        goto :eof
    )
)

:modsettingsregen
    %~d0
    cd "%~dp0"
    cd mods>nul
    call :write_log modsettingsregen……
    if "!runningmod!"=="steam" (
    call :displayui
    set /a mods_setuppthconfirmop=0
        echo ┌────是否要在每次启动服务器的时候自动从创意工坊自动更新mod文件────┐
        echo      ☆警告！！！下载mod会耗费一定的时间，尤其是您需要更新的mod文件比较多，
        echo,     ☆而你的网络又不给力又或者你赶上了steam的大姨妈的时候，你的服务器会
        echo,     ☆一直卡在下载mod的界面，如果你没有时间等待可以执行一键的操作5
        echo,     ☆关闭服务器自动更新mod功能然后重启服务器
        echo            1-----------每次启动服务器自动从创意工坊更新mod文件
        echo            其他--------不更新mod文件
        echo └─────────────────────────────────────┘
        set /p mods_setuppthconfirmop=请输入操作码：
    )
    call :displayui
    call :confirmconvert
    if "!mods_setuppthconfirmop!"=="1" (
        echo 正在生成modsettings.lua 和dedicated_server_mods_setup.lua……
    )   else    (
        echo 正在生成modsettings.lua……
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
    set "modoverride14=--    ┌──────────────────────────┐"
    set "modoverride15=--        1、以上是modsettings.lua默认内容"
    set "modoverride16=--        2、本文档是由流年一键启动饥荒服务器%OneKeyVersion%生成"
    set "modoverride17=--        3、列表创建日期:%date% %time:~0,-6%"
    set "modoverride18=--        4、--为注释，不影响使用"
    set "modoverride19=--        5、默认不启用任何mod"
    set "modoverride20=--        6、删除最前面的注释--即为启用当前行的mod"
    set "modoverride21=--        7、感谢佩剑的兔子的modsettings.lua制作代码"
    set "modoverride22=--        8、更多资源请加 QQ群497398445"
    set "modoverride23=--    └──────────────────────────┘"
    set "modoverrideb13=--    ┌──────────────────────────┐"
    set "modoverrideb14=--        1、本文档是由流年一键启动饥荒服务器%OneKeyVersion%自动生成"
    set "modoverrideb15=--        2、列表创建日期:%date% %time:~0,-6%"
    set "modoverrideb16=--        3、--为注释，不影响使用,一键会根据mod名字自动过滤掉非创意工坊的mod"
    set "modoverrideb17=--        4、默认启用所有mod的自动更新"
    set "modoverrideb18=--        5、在一行最前面加上注释--即为禁用当前行mod的自动更新"
    set "modoverrideb19=--        6、在需要更新的mod比较多或者主机网速不给力的时候再或者steam大姨妈的时候"
    set "modoverrideb20=--        7、您的服务器会一直卡在下载mod的界面，这个时候要不你就一直等待直到服务器mod下载完毕"
    set "modoverrideb21=--        8、要不就执行一键操作5关闭服务器自动更新mod功能"
    set "modoverrideb22=--        9、更多资源请加 QQ群497398445"
    set "modoverrideb23=--    └──────────────────────────┘"
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
        set "ServerModSetuptmp=☆"
        set/p=!ServerModSetuptmp!<nul 2>nul
    )
    call :codeconvert

    if "%convert%"=="true" (
    	cscript "%~dp0codeconvert.vbs" "%modpth%" 1 1>nul 2>nul
    	if "!mods_setuppthconfirmop!"=="1" (
            cscript "%~dp0codeconvert.vbs" "%mods_setuppth%" 1 1>nul 2>nul
        )
    )
    rem --------------自动构建modoverride.lua文件核心部分---------------
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
                            set "ServerModSetuptmp=☆"
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
    echo,√
goto :eof

rem ----------------服务器初始化----------------
:init
    %~d0>nul
    cd "%~dp0">nul
    cd mods>nul
    call :write_log 服务器初始化……
    set "pth=mods\modsettings.lua"
    if exist "%~dp0%pth%" del "%~dp0%pth%">nul
    if exist "%Personal%DoNotStarveTogether\%clustername%" rd /s /q "%Personal%DoNotStarveTogether\%clustername%"
    rem -------------初始化服务配置参数值---------------
    set "game_mode= endless"
    set "max_players= 6"
    set "cluster_intention= cooperative"
    set "server_password="
    set "pvp= false"
    set "pause_when_empty= true"
    set "shard_enable= true"
    set "default_server_name=流年离伤"
    set "default_server_description=本服务器由“流年一键启动饥荒服务器”启动，了解更多请加群497398445"
    set cavesenabal=false
    call :displayui
    echo ┌─────────────需要开启地下世界吗？──────────────┐
    echo,        1--------地下洞穴更加刺激，更具有游戏性，建议开启
    echo,        其他-----不开启地下洞穴
    echo └─────────────────────────────────────┘
    set /p cavesenabal=请输入操作码:
    if "%oldversion%"=="true" (
    	if "%cavesenabal%" == "1" (
    		call :interactive_ui
    		ECHO,正在生成洞穴配置文件……
    		call :Caves_settings_ini 1 11000
    	) else (
    		call :interactive_ui
    	)
    	call :Overworld_settings_ini 1
    	set /a GLFlag=1
    ) else (
    	if "%cavesenabal%" == "1" ( 
    		echo,正在生成洞穴配置文件……
    		call :cave_server_ini 10998
    	)
    	call :cluster_ini
    	call :master_server_ini 10999
    	set /a GLFlag=1
    )
goto ui

rem -----------------暴力删档--------------------
:miniinit
    call :write_log 暴力删档……
    if exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\save\session" rd /s /q "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\save\session"
    if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\save\session" rd /s /q "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\save\session"
    echo, 存档已经删除完毕,按任意键启动服务器&pause>nul
    goto start
rem ------------------生成服务器配置参考文件（已经过期）--------------------
:settings
    set "pth=bin\服务器配置参考文件.txt"
    if exist "%~dp0%pth%" del "%~dp0%pth%">nul
    echo,正在创建示例文档
    echo,>"%~dp0%pth%"
    echo,┌──────服务器配置参考文件──────┐>>"%~dp0%pth%"
    echo,  1、请根据此文件修改服务器配置文件>>"%~dp0%pth%"
    echo,  2、第一次弹出的文件是地上服务器配置文件>>"%~dp0%pth%"
    echo,  3、第二次弹出的文件是地下服务器配置文件>>"%~dp0%pth%"
    echo,  4、每一次弹出的文件可能被当前的文件遮挡>>"%~dp0%pth%"
    echo,  5、拖动以下当前的文件就可以看到弹出的文件>>"%~dp0%pth%"
    echo,  6、修改世界名字可以只修改地上配置文件>>"%~dp0%pth%"
    echo,  7、修改世界最大连接人数必须同时修改两个文件>>"%~dp0%pth%"
    echo,  8、服务器配置文件至关重要，请慎重更改>>"%~dp0%pth%"
    echo,  9、如果由于配置错误导致服务器运行失败>>"%~dp0%pth%"
    echo,  10、请运行本程序操作8恢复初始状态>>"%~dp0%pth%"
    echo,  11、感谢您的使用，更多资源请加群>>"%~dp0%pth%"
    echo,  12、  Made By LiuNianLiShang %OneKeyVersion% >>"%~dp0%pth%"
    echo,  13、 更多资源请加 QQ群497398445>>"%~dp0%pth%"
    echo,└─────────────────────┘>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    echo,[network]>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    echo,default_server_name ^= A unique server name>>"%~dp0%pth%"
    echo,^-^-此行是默认世界名称>>"%~dp0%pth%"
    echo,default_server_description ^= A very nice server>>"%~dp0%pth%"
    echo,^-^-此行是默认世界描述>>"%~dp0%pth%"
    echo,server_port ^= 10999>>"%~dp0%pth%"
    echo,^-^-此行是端口，默认即可。>>"%~dp0%pth%"
    echo,server_password ^= password>>"%~dp0%pth%"
    echo,^-^-世界密码，输入你要设置的密码，空则没有密码。>>"%~dp0%pth%"
    echo,max_players ^= 1 .. 64>>"%~dp0%pth%"
    echo,^-^-最大玩家数，1-64任意一个数>>"%~dp0%pth%"
    echo,pvp ^= true ^| false>>"%~dp0%pth%
    echo,^-^-PvP，true即为开启，false即为关闭>>"%~dp0%pth%"
    echo,game_mode ^= endless ^| survival ^| wilderness>>"%~dp0%pth%"
    echo,^-^-游戏模式，左往右依次是无尽、生存和荒野模式>>"%~dp0%pth%"
    echo,enable_snapshots ^= [true ^| false]>>"%~dp0%pth%"
    echo,^-^-是否让世界回滚到之前保存的快照，默认关闭。>>"%~dp0%pth%"
    echo,enable_autosaver ^= [true ^| false]>>"%~dp0%pth%"
    echo,^-^-是否自动存档，以防意外，默认开启。>>"%~dp0%pth%"
    echo,tick_rate ^= 30 [ 10 ^| 15 ^| 30 ^| 60 ]>>"%~dp0%pth%"
    echo,^-^-帧刷新率，越高将有越好的游戏体验，但会增加CPU和宽带的负担，自己抉择吧。>>"%~dp0%pth%"
    echo,connection_timeout ^= 8000>>"%~dp0%pth%"
    echo,^-^-等待未响应玩家重新连接的时间，以毫秒计时。>>"%~dp0%pth%"
    echo,server_save_slot ^= 1 [1^-5任意数字]>>"%~dp0%pth%"
    echo,^-^-读取几号存档，如果选择的存档槽没有存档则新建一个存档。>>"%~dp0%pth%"
    echo,enable_vote_kick ^= true [true ^| false]>>"%~dp0%pth%"
    echo,^-^-是否允许投票踢人，默认开启。>>"%~dp0%pth%"
    echo,pause_when_empty ^= true [ true ^| false ]>>"%~dp0%pth%"
    echo,^-^-世界没人时是否自动暂停。>>"%~dp0%pth%"
    echo,cluster_intention ^= cooperative ^| social ^| competitive ^| madness>>"%~dp0%pth%"
    echo,^-^-游戏风格，分别是 合作 交际 竞争 疯狂>>"%~dp0%pth%"
    echo,offline_only_server ^= false [ true ^| false ]>>"%~dp0%pth%"
    echo,^-^-是否仅开启离线模式，默认关闭。如果你没有令牌，建议开启。>>"%~dp0%pth%"
    echo,[account]>>"%~dp0%pth%"
    echo,>>"%~dp0%pth%"
    echo,dedicated_offline_server ^= false [ true ^| false ]>>"%~dp0%pth%"
    echo,^-^-是否仅开启离线模式，默认关闭。如果你没有令牌，建议开启。>>"%~dp0%pth%"
    echo,^-^-注：据说这个键klei已不推荐使用。>>"%~dp0%pth%"
    echo,示例文件生成成功
    start "" notepad "%~dp0%pth%"
    if "%oldversion%" NEQ "true" (
    	echo 等待用户配置cluster.ini
    	if exist "%Personal%DoNotStarveTogether\%clustername%\cluster.ini" start /w "地上" "%Personal%DoNotStarveTogether\%clustername%\cluster.ini"
    	echo 等待用户配置地上服务器配置文件
    	if exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server.ini" start /w "地上" "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server.ini"
    	echo 等待用户配置地下服务器配置文件
    	if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server.ini" start /w "地下" "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server.ini"
    ) else (
    	echo 等待用户配置地上服务器配置文件
    	if exist "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\settings.ini" start /w "地上" "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\settings.ini"
    	echo 等待用户配置地下服务器配置文件
    	if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\settings.ini" start /w "地下" "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\settings.ini"
    )
    del "%~dp0%pth%">nul
set /a GLFlag=6 >nul& goto ui

:exiterr
    call :write_log 已经有饥荒服务程序在运行！
    echo ┌─────────已经有饥荒服务程序在运行，你可以────────────┐
    echo                1---------管理服务器
    echo                其他------退出
    echo └─────────────────────────────────────┘
    set "op=1"
    set /p op="----------请输入操作码，按回车确认："
    if %op%==1 set /a GLFlag=6 >nul& goto ui
    call :write_log 退出当前进程……
exit

rem --------------确认UI----------------------
:confirm
    call :write_log 主菜单确认UI……
    set /a confirmop=0
    echo ┌───────────────警告！！！！！───────────────┐
    echo      当前操作可能会涉及强制关闭服务器，删除存档等可能丢失数据的操作
    echo      注意，服务器关闭前务必先保存，否则存档回到当天早晨
    echo      服务器每天早晨自动保存，想在任意时刻时保存请在控制台输入指令 c_save()
    echo    1----------------------是的，这是我想要做的
    echo    其他-------------------No No NO！！！这是我的误操作
    echo └─────────────────────────────────────┘
    if "%consolemod%"=="trueeeerrr" (
    set /p=等待服务器存档，请稍后…… <nul
    set /p=<nul
    SET status=1
    (TASKLIST|FIND /I "dontstarve_dedicated_serv"||SET status=0) 2>nul 1>nul
    IF "%status%" EQU "1" set "consolecmd=c_save{(}{)}{enter}{enter}"&call :ConsoleOutput
    )
    set /p confirmop="----------请输入操作码，按回车确认："
    if "%confirmop%"=="1" goto ops
set /a GLFlag=6 >nul& goto ui

rem -------------------控制台确认UI------------------
:consoleconfirm
    call :write_log 控制台确认UI……
    set /a confirmop=0
    echo ┌───────────────警告！！！！！───────────────┐
    echo      当前操作可能会涉及强制关闭服务器，删除存档等可能丢失数据的操作
    echo      注意，服务器关闭前务必先保存，否则存档回到当天早晨
    echo      服务器每天早晨自动保存，想在任意时刻时保存请在控制台输入指令 c_save()
    echo    1----------------------是的，这是我想要做的
    echo    其他-------------------No No NO！！！这是我的误操作
    echo └─────────────────────────────────────┘
    set /p confirmop="----------请输入操作码，按回车确认："
    if "%confirmop%"=="1" goto :eof
goto consolemenu

rem -------------------生成管理员配置文件---------------------
:admin
    call :write_log 生成管理员配置文件……
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
    echo,--本文件由流年一键启动服务器%OneKeyVersion%自动生成>"%adminpath%%adminfilename%"
    echo,--在此文件输入要加入管理员的ID>>"%adminpath%%adminfilename%"
    echo,--管理员的ID可以通过在游戏里说一句话，然后在服务端查看>>"%adminpath%%adminfilename%"
    echo,--每个管理员ID必须单独占用一行，不要在本文件其他位置输入任何其他内容>>"%adminpath%%adminfilename%"
    echo,--否则服务器可能崩溃！！！！！！！>>"%adminpath%%adminfilename%"
    echo,--下面是管理员ID示例：>>"%adminpath%%adminfilename%"
    echo,KU_VNyTVYGs>>"%adminpath%%adminfilename%"
    echo,OU_76561197961083523>>"%adminpath%%adminfilename%"
    )
    echo 等待用户配置adminlist.txt
    start /w "" "notepad" "%adminpath%%adminfilename%"
set /a GLFlag=6 >nul& goto ui

rem -----------------一键找不到服务器文件报错与解决方法-------------------
:patherr
    call :write_log 正在全盘查找您电脑上存在的饥荒服务端，可能需要几十秒到几分钟的时间……
    set n=0
    echo ┌────未找到服务器文件，本脚本必须放置到饥荒服务器根目录才会生效────┐
    echo                       Made By LiuNianLiShang %OneKeyVersion%
    echo                       更多资源请加 QQ群497398445
    echo └─────────────────────────────────────┘
    echo,                                 请耐心等待……
    echo ┌─正在全盘查找您电脑上存在的饥荒服务端，可能需要几十秒到几分钟的时间……─┐
    for /f "skip=1" %%a in ('wmic logicaldisk where "drivetype=3" get name') do call :mve %%a
    rem ------------如果全盘搜索找不到饥荒服务器文件，就弹出网盘让用户下载------------------
    if "!n!"=="0" (
        call :write_log 全盘搜索找不到饥荒服务器文件，弹出网盘让用户下载……
    	echo,        暂未在您的电脑上查找到饥荒服务器端，请下载饥荒服务端后
    	echo,           把本脚本放入饥荒服务器根目录，正在转到帮助……
    	echo └─────────────────────────────────────┘
    	start "" "http://pan.baidu.com/share/home?uk=4045161541&view=share#category/type=0"
    	call :myhelp
    	call :write_log 退出当前进程……
    	exit
    ) else (
        call :write_log "在您电脑上共找到!n!个饥荒服务端……"
    	echo,    在您电脑上共找到!n!个饥荒服务端.
    )
    echo └─────────────────────────────────────┘
    echo,
    rem --------------------自动打开查找到的饥荒服务器目录和复制到该目录下的一键-------------------
    set serverdirnum=0
    set /p serverdirnum=  已经把本脚本复制到搜索到的服务器目录，请输入要打开目录前面的编号:
    set n2=1
    call :displayui
    echo,┌─────────────────────────────────────┐
    echo,              正在为您打开您选择的服务器目录，请耐心等待……
    echo,└─────────────────────────────────────┘
    for /f "skip=1" %%a in ('wmic logicaldisk where "drivetype=3" get name') do call :openserverdir %%a
    call :write_log 退出当前进程……
exit

:mve
    
    set "displaydstver=版本号未知"
    for /r %1 %%b in (dontstarve*renderer.exe) do (
    	set "pth=%%~b"&set "pth=!pth:~,-48!"
    	set /a n+=1
    	if exist "!pth!version.txt" (
    		for /f "usebackq delims= " %%a in ("!pth!version.txt") do set displaydstver=%%a
    	)
    	echo,!n!:!pth! ^(版本：!displaydstver!^)
    	call :write_log  "复制一键到搜索到的目录!pth! ^(版本：!displaydstver!^)……"
    	copy /y "%~f0" "!pth!" >nul
    )
goto :eof

rem --------自动打开用户选定的饥荒服务跟目录并打开被复制到该目录的一键-----------
:openserverdir
    call :write_log 自动打开用户选定的饥荒服务跟目录并打开被复制到该目录的一键……
    for /r %1 %%b in (dontstarve*renderer.exe) do (
    	::set /p=<nul
    	set pth=%%~b&set pth=!pth:~,-48!
    	if "!n2!"=="%serverdirnum%" (
    	    call :write_log 退出当前进程……
    		start "流年离殇" "!pth!" 1>nul 2>nul
    		start "流年离殇" "!pth!流年一键启动饥荒服务器%OneKeyVersion%.bat" &exit
    	)
    	set /a nowsi=!n2!*100/!serverdirnum!
    	set /a n2+=1
    	echo,"已完成：!nowsi!%%"
    )
goto :eof
exit

rem ----------worldgenoverride.lua----------------
:worldgenoverride
    call :write_log worldgenoverride……
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
    		echo,--┌─────饥荒地上世界配置文件──────┐>>"%pah%"
    	) else (
    		echo,--┌─────饥荒地下世界配置文件──────┐>>"%pah%"
    	)
    	echo,--   1、本文件由流年一键启动服务器%OneKeyVersion%自动生成>>"%pah%"
    	echo,--   2、如果不想对世界进行改动，请直接关闭>>"%pah%"
    	echo,--   3、never,rare,default,often,always分别对应>>"%pah%"
    	echo,--   4、资源量的无、较少、默认、较多、大量>>"%pah%"
    	echo,--   5、每一行“^-^–”后面的内容服务器自动忽略>>"%pah%"
    	echo,--   6、可能是DST服务器预配置的限制，服务器不会载入世界配置>>"%pah%"
    	echo,--   7、要想生效世界配置，请在控制台输入c^_regenerateworld^(^)>>"%pah%"
    	echo,--   8、想改回默认的世界配置，请执行命令8>>"%pah%"
    	echo,--   9、然后等服务器稳定后输入c^_regenerateworld^(^)>>"%pah%"
    	echo,--   10、    Made By LiuNianLiShang  >>"%pah%"
    	echo,--   11、   更多资源请加 QQ群497398445>>"%pah%"
    	echo,--└─────────────────────┘>>"%pah%"
    	echo,return {>>"%pah%"
    	echo,	override_enabled = true,>>"%pah%"
    	if %caveoreht%==1 (
    		echo,	preset = "SURVIVAL_TOGETHER", --  or "SURVIVAL_TOGETHER" or "SURVIVAL_TOGETHER_CLASSIC" or "SURVIVAL_DEFAULT_PLUS" or "COMPLETE_DARKNESS" or "DST_CAVE">>"%pah%"
    	) else (
    		echo,	preset = "DST_CAVE", --  or "SURVIVAL_TOGETHER" or "SURVIVAL_TOGETHER_CLASSIC" or "SURVIVAL_DEFAULT_PLUS" or "COMPLETE_DARKNESS" or "DST_CAVE">>"%pah%"
    	)
    	echo,	--预设		依次是：默认，经典，三箱开局，永夜，洞穴>>"%pah%"
    	echo,	unprepared = { >>"%pah%"
    	echo,	--食物>>"%pah%"
    	echo,	--"never", "rare", "default", "often", "always">>"%pah%"
    	echo,		banana = "default",--香蕉>>"%pah%"
    	echo,		berrybush = "default",--浆果丛>>"%pah%"
    	echo,		cactus = "default",--仙人掌>>"%pah%"
    	echo,		carrot = "default",--胡萝卜>>"%pah%"
    	echo,		lichen = "default",--苔藓>>"%pah%"
    	echo,		mushroom = "default",--蘑菇>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	misc = { >>"%pah%"
    	echo,	--杂项>>"%pah%"
    	echo,		autumn = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--秋天长度>>"%pah%"
    	echo,		boons = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--恩惠>>"%pah%"
    	echo,		branching = "default", -- "never", "least", "default", "most">>"%pah%"
    	echo,		--地图分支>>"%pah%"
    	echo,		cavelight = "default", -- "veryslow", "slow", "default", "fast", "veryfast">>"%pah%"
    	echo,		--洞穴光照？>>"%pah%"
    	echo,		day = "default", -- "default", "longday", "longdusk", "longnight", "noday", "nodusk", "nonight", "onlyday", "onlydusk", "onlynight">>"%pah%"
    	echo,		--昼夜长短>>"%pah%"
    	echo,		earthquakes = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--地震频率>>"%pah%"
    	echo,		frograin = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--青蛙雨>>"%pah%"
    	echo,		lightning = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--闪电>>"%pah%"
    	echo,		loop = "default", -- "never", "default", "always">>"%pah%"
    	echo,		--环状地形>>"%pah%"
    	echo,		regrowth = "default", -- "veryslow", "slow", "default", "fast", "veryfast">>"%pah%"
    	echo,		--再生速度>>"%pah%"
    	echo,		season_start = "default", -- "default", "winter", "spring", "summer", "autumnorspring", "winterorsummer", "random">>"%pah%"
    	echo,		--开始季节>>"%pah%"
    	echo,		spring = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--春天长度>>"%pah%"
    	echo,		start_location = "default", -- "caves", "default", "plus", "darkness">>"%pah%"
    	echo,		--起始位置>>"%pah%"
    	echo,		summer = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--夏天长度>>"%pah%"
    	echo,		task_set = "default", -- "classic", "default", "cave_default">>"%pah%"
    	echo,		--生物群落>>"%pah%"
    	echo,		touchstone = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--复活台>>"%pah%"
    	echo,		weather = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--天气>>"%pah%"
    	echo,		wildfires = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--野火（自燃）>>"%pah%"
    	echo,		winter = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--冬天长度>>"%pah%"
    	echo,		world_size = "default", -- "small", "medium", "default", "huge">>"%pah%"
    	echo,		--地图大小>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	animals = { >>"%pah%"
    	echo,	--动物>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		alternatehunt = "default",--足迹>>"%pah%"
    	echo,		angrybees = "default",--杀人蜂巢穴>>"%pah%"
    	echo,		beefalo = "default",--牛>>"%pah%"
    	echo,		beefaloheat = "default",--红屁股牛>>"%pah%"
    	echo,		bees = "default",--蜜蜂巢穴>>"%pah%"
    	echo,		birds = "default",--鸟>>"%pah%"
    	echo,		bunnymen = "default",--兔人>>"%pah%"
    	echo,		butterfly = "default",--蝴蝶>>"%pah%"
    	echo,		buzzard = "default",--秃鹫>>"%pah%"
    	echo,		catcoon = "default",--浣猫>>"%pah%"
    	echo,		frogs = "default",--青蛙>>"%pah%"
    	echo,		hunt = "default",--大象>>"%pah%"
    	echo,		lightninggoat = "default",--电羊>>"%pah%"
    	echo,		moles = "default",--鼹鼠>>"%pah%"
    	echo,		monkey = "default",--猴子>>"%pah%"
    	echo,		penguins = "default",--企鹅>>"%pah%"
    	echo,		perd = "default",--火鸡>>"%pah%"
    	echo,		pigs = "default",--猪人>>"%pah%"
    	echo,		rabbits = "default",--兔子>>"%pah%"
    	echo,		rocky = "default",--石虾>>"%pah%"
    	echo,		slurper = "default",--啜食者>>"%pah%"
    	echo,		slurtles = "default",--蜗牛>>"%pah%"
    	echo,		tallbirds = "default",--高鸟>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	monsters = { >>"%pah%"
    	echo,	--怪物>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		bats = "default",--蝙蝠>>"%pah%"
    	echo,		bearger = "default",--秋boss>>"%pah%"
    	echo,		chess = "default",--齿轮马>>"%pah%"
    	echo,		deciduousmonster = "default",--树精>>"%pah%"
    	echo,		deerclops = "default",--巨鹿>>"%pah%"
    	echo,		dragonfly = "default",--龙蝇>>"%pah%"
    	echo,		fissure = "default",--裂缝>>"%pah%"
    	echo,		goosemoose = "default",--春boss>>"%pah%"
    	echo,		houndmound = "default",--猎犬丘>>"%pah%"
    	echo,		hounds = "default",--猎狗>>"%pah%"
    	echo,		krampus = "default",--小偷>>"%pah%"
    	echo,		liefs = "default",--树人>>"%pah%"
    	echo,		lurepofflinets = "default",--食人花>>"%pah%"
    	echo,		merm = "default",--鱼人>>"%pah%"
    	echo,		spiders = "default",--蜘蛛>>"%pah%"
    	echo,		tentacles = "default",--触手>>"%pah%"
    	echo,		walrus = "default",--海象巢穴>>"%pah%"
    	echo,		worms = "default",--蠕虫>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	resources = { >>"%pah%"
    	echo,	--资源>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		fern = "default",--蕨类植物>>"%pah%"
    	echo,		flint = "default",--燧石>>"%pah%"
    	echo,		flower_cave = "default",--荧光花>>"%pah%"
    	echo,		flowers = "default",--花>>"%pah%"
    	echo,		grass = "default",--干草>>"%pah%"
    	echo,		marshbush = "default",--尖刺灌木>>"%pah%"
    	echo,		meteorshowers = "default",--陨石>>"%pah%"
    	echo,		meteorspawner = "default",--陨石坑>>"%pah%"
    	echo,		mushtree = "default",--蘑菇树>>"%pah%"
    	echo,		reeds = "default",--芦苇>>"%pah%"
    	echo,		rock = "default",--岩石>>"%pah%"
    	echo,		rock_ice = "default",--冰块>>"%pah%"
    	echo,		sapling = "default",--小树枝>>"%pah%"
    	echo,		trees = "default",--树>>"%pah%"
    	echo,		tumbleweed = "default",--风滚草>>"%pah%"
    	echo,		wormlights = "default",--发光浆果>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,}>>"%pah%"
    	echo,worldgenoverride.lua生成成功
    )
    if "%1"=="120" (
    	echo,等待用户配置worldgenoverride.lua……
    	if %caveoreht%==1 set /a caveoreht=0
    	goto :eof
    )
    echo,等待用户配置worldgenoverride.lua……
    start /w "test" "notepad" "%pah%">nul
    if "%caveoreht%"=="1" set /a caveoreht=0
goto :eof
goto ui


rem -----------------世界配置参考文档-------------------
:worldgenoverride_for_refer
    call :write_log 生成世界配置参考文件worldgenoverride……
    set "pah=%~dp0worldgenoverride.lua"
    	echo.>"%pah%"
    	echo,--┌─────饥荒世界配置参考文件──────┐>>"%pah%"
    	echo,--   1、本文件由流年一键启动服务器%OneKeyVersion%自动生成>>"%pah%"
    	echo,--   2、如果不想对世界进行改动，请直接关闭>>"%pah%"
    	echo,--   3、never,rare,default,often,always分别对应>>"%pah%"
    	echo,--   4、资源量的无、较少、默认、较多、大量>>"%pah%"
    	echo,--   5、每一行“^-^–”后面的内容服务器自动忽略>>"%pah%"
    	echo,--   6、可能是DST服务器预配置的限制，服务器不会载入世界配置>>"%pah%"
    	echo,--   7、要想生效世界配置，请在控制台输入c^_regenerateworld^(^)>>"%pah%"
    	echo,--   8、想改回默认的世界配置，请执行命令8>>"%pah%"
    	echo,--   9、然后等服务器稳定后输入c^_regenerateworld^(^)>>"%pah%"
    	echo,--   10、    Made By LiuNianLiShang  >>"%pah%"
    	echo,--   11、   更多资源请加 QQ群497398445>>"%pah%"
    	echo,--└─────────────────────┘>>"%pah%"
    	echo,return {>>"%pah%"
    	echo,	override_enabled = true,>>"%pah%"
    	echo,	preset = "SURVIVAL_TOGETHER", --  or "SURVIVAL_TOGETHER" or "SURVIVAL_TOGETHER_CLASSIC" or "SURVIVAL_DEFAULT_PLUS" or "COMPLETE_DARKNESS" or "DST_CAVE">>"%pah%"
    	echo,	--预设		依次是：默认，经典，三箱开局，永夜，洞穴>>"%pah%"
    	echo,	unprepared = { >>"%pah%"
    	echo,	--食物>>"%pah%"
    	echo,	--"never", "rare", "default", "often", "always">>"%pah%"
    	echo,		banana = "default",--香蕉>>"%pah%"
    	echo,		berrybush = "default",--浆果丛>>"%pah%"
    	echo,		cactus = "default",--仙人掌>>"%pah%"
    	echo,		carrot = "default",--胡萝卜>>"%pah%"
    	echo,		lichen = "default",--苔藓>>"%pah%"
    	echo,		mushroom = "default",--蘑菇>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	misc = { >>"%pah%"
    	echo,	--杂项>>"%pah%"
    	echo,		autumn = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--秋天长度>>"%pah%"
    	echo,		boons = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--恩惠>>"%pah%"
    	echo,		branching = "default", -- "never", "least", "default", "most">>"%pah%"
    	echo,		--地图分支>>"%pah%"
    	echo,		cavelight = "default", -- "veryslow", "slow", "default", "fast", "veryfast">>"%pah%"
    	echo,		--洞穴光照？>>"%pah%"
    	echo,		day = "default", -- "default", "longday", "longdusk", "longnight", "noday", "nodusk", "nonight", "onlyday", "onlydusk", "onlynight">>"%pah%"
    	echo,		--昼夜长短>>"%pah%"
    	echo,		earthquakes = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--地震频率>>"%pah%"
    	echo,		frograin = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--青蛙雨>>"%pah%"
    	echo,		lightning = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--闪电>>"%pah%"
    	echo,		loop = "default", -- "never", "default", "always">>"%pah%"
    	echo,		--环状地形>>"%pah%"
    	echo,		regrowth = "default", -- "veryslow", "slow", "default", "fast", "veryfast">>"%pah%"
    	echo,		--再生速度>>"%pah%"
    	echo,		season_start = "default", -- "default", "winter", "spring", "summer", "autumnorspring", "winterorsummer", "random">>"%pah%"
    	echo,		--开始季节>>"%pah%"
    	echo,		spring = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--春天长度>>"%pah%"
    	echo,		start_location = "default", -- "caves", "default", "plus", "darkness">>"%pah%"
    	echo,		--起始位置>>"%pah%"
    	echo,		summer = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--夏天长度>>"%pah%"
    	echo,		task_set = "default", -- "classic", "default", "cave_default">>"%pah%"
    	echo,		--生物群落>>"%pah%"
    	echo,		touchstone = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--复活台>>"%pah%"
    	echo,		weather = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--天气>>"%pah%"
    	echo,		wildfires = "default", -- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		--野火（自燃）>>"%pah%"
    	echo,		winter = "default", -- "noseason", "veryshortseason", "shortseason", "default", "longseason", "verylongseason", "random">>"%pah%"
    	echo,		--冬天长度>>"%pah%"
    	echo,		world_size = "default", -- "small", "medium", "default", "huge">>"%pah%"
    	echo,		--地图大小>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	animals = { >>"%pah%"
    	echo,	--动物>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		alternatehunt = "default",--足迹>>"%pah%"
    	echo,		angrybees = "default",--杀人蜂巢穴>>"%pah%"
    	echo,		beefalo = "default",--牛>>"%pah%"
    	echo,		beefaloheat = "default",--红屁股牛>>"%pah%"
    	echo,		bees = "default",--蜜蜂巢穴>>"%pah%"
    	echo,		birds = "default",--鸟>>"%pah%"
    	echo,		bunnymen = "default",--兔人>>"%pah%"
    	echo,		butterfly = "default",--蝴蝶>>"%pah%"
    	echo,		buzzard = "default",--秃鹫>>"%pah%"
    	echo,		catcoon = "default",--浣猫>>"%pah%"
    	echo,		frogs = "default",--青蛙>>"%pah%"
    	echo,		hunt = "default",--大象>>"%pah%"
    	echo,		lightninggoat = "default",--电羊>>"%pah%"
    	echo,		moles = "default",--鼹鼠>>"%pah%"
    	echo,		monkey = "default",--猴子>>"%pah%"
    	echo,		penguins = "default",--企鹅>>"%pah%"
    	echo,		perd = "default",--火鸡>>"%pah%"
    	echo,		pigs = "default",--猪人>>"%pah%"
    	echo,		rabbits = "default",--兔子>>"%pah%"
    	echo,		rocky = "default",--石虾>>"%pah%"
    	echo,		slurper = "default",--啜食者>>"%pah%"
    	echo,		slurtles = "default",--蜗牛>>"%pah%"
    	echo,		tallbirds = "default",--高鸟>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	monsters = { >>"%pah%"
    	echo,	--怪物>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		bats = "default",--蝙蝠>>"%pah%"
    	echo,		bearger = "default",--秋boss>>"%pah%"
    	echo,		chess = "default",--齿轮马>>"%pah%"
    	echo,		deciduousmonster = "default",--树精>>"%pah%"
    	echo,		deerclops = "default",--巨鹿>>"%pah%"
    	echo,		dragonfly = "default",--龙蝇>>"%pah%"
    	echo,		fissure = "default",--裂缝>>"%pah%"
    	echo,		goosemoose = "default",--春boss>>"%pah%"
    	echo,		houndmound = "default",--猎犬丘>>"%pah%"
    	echo,		hounds = "default",--猎狗>>"%pah%"
    	echo,		krampus = "default",--小偷>>"%pah%"
    	echo,		liefs = "default",--树人>>"%pah%"
    	echo,		lurepofflinets = "default",--食人花>>"%pah%"
    	echo,		merm = "default",--鱼人>>"%pah%"
    	echo,		spiders = "default",--蜘蛛>>"%pah%"
    	echo,		tentacles = "default",--触手>>"%pah%"
    	echo,		walrus = "default",--海象巢穴>>"%pah%"
    	echo,		worms = "default",--蠕虫>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,	resources = { >>"%pah%"
    	echo,	--资源>>"%pah%"
    	echo,	-- "never", "rare", "default", "often", "always">>"%pah%"
    	echo,		fern = "default",--蕨类植物>>"%pah%"
    	echo,		flint = "default",--燧石>>"%pah%"
    	echo,		flower_cave = "default",--荧光花>>"%pah%"
    	echo,		flowers = "default",--花>>"%pah%"
    	echo,		grass = "default",--干草>>"%pah%"
    	echo,		marshbush = "default",--尖刺灌木>>"%pah%"
    	echo,		meteorshowers = "default",--陨石>>"%pah%"
    	echo,		meteorspawner = "default",--陨石坑>>"%pah%"
    	echo,		mushtree = "default",--蘑菇树>>"%pah%"
    	echo,		reeds = "default",--芦苇>>"%pah%"
    	echo,		rock = "default",--岩石>>"%pah%"
    	echo,		rock_ice = "default",--冰块>>"%pah%"
    	echo,		sapling = "default",--小树枝>>"%pah%"
    	echo,		trees = "default",--树>>"%pah%"
    	echo,		tumbleweed = "default",--风滚草>>"%pah%"
    	echo,		wormlights = "default",--发光浆果>>"%pah%"
    	echo,	},>>"%pah%"
    	echo,}>>"%pah%"
    	echo,世界配置参考文件生成成功
    	start "" "%pah%"
goto :eof
rem -----------------延时函数--------------------
:delay
    rem call :write_log 延时函数
    set /a num+=1
    if "%num%" geq "%1" (set num=0)&goto :eof
goto delay

rem --------------备份函数-------------------
:savebak
    cls
    call :displayui
    call :write_log 备份函数……
    echo,┌─────────────────────────────────────┐
    call :get_time_for_dir
    set "beizhu="
    set /p beizhu=请给您的备份起个名字：
    set "datetime=%timestr%"
    XCOPY  "%Personal%DoNotStarveTogether\%clustername%\"*  "%Personal%LiuNianOneKeyBak\%datetime%\clusterbak\" /s  /e /c /y
    set "pth=mods\modsettings.lua"
    if exist "%~dp0%pth%" copy /y "%~dp0%pth%" "%Personal%LiuNianOneKeyBak\%datetime%\"
    echo,"α%beizhu%【版本号：%dstver%】α">"%Personal%LiuNianOneKeyBak\%datetime%\note.liunian"
    echo 操作已完成，备份文件夹名字：【%datetime%】按任意键继续&pause>nul
goto ui
goto :eof

rem ----------备份恢复函数-------------
:selectbaktoreturn
    cls
    call :displayui
    call :write_log 备份恢复函数
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
    set /p ch=共发现%timen%个备份，请输入要恢复备份的编号：
    if "%ch%"=="err"  echo 输入数据有误,按任意键返回管理菜单！&pause>nul&goto ui
    if %ch% LSS 0 echo 输入数据有误,按任意键返回管理菜单！&pause>nul&goto ui
    if %ch% GTR %timen% echo 输入数据有误,按任意键返回管理菜单！&pause>nul&goto ui
    set timen=0
    for /d %%f in (*) do (
    if "!timen!"=="%ch%" (
        call :write_log "正在从!timen!号备份:【%%f】恢复存档和服务器设置……"
        echo 正在从!timen!号备份:【%%f】恢复存档和服务器设置……&set "pathname=%%f" & goto end
    ) 
    set /a timen+=1
    )
    :end
    if exist "%Personal%LiuNianOneKeyBak\%pathname%\note.lnls" echo 此备份是由旧版本生成的，请使用旧版一键(v3.2.4之前版本)恢复！！！&pause>nul&goto ui
    if EXIST "%Personal%DoNotStarveTogether\%clustername%\" rd /s /q "%Personal%DoNotStarveTogether\%clustername%\"
    rem echo 已经删除%Personal%EasyConfigCaves\
    if not exist "%Personal%DoNotStarveTogether\%clustername%\" md "%Personal%DoNotStarveTogether\%clustername%\"
    xcopy "%Personal%LiuNianOneKeyBak\%pathname%\clusterbak\"* "%Personal%DoNotStarveTogether\%clustername%\" /s  /e /c /h /y
    rem xcopy "%Personal%LiuNianOneKeyBak\%pathname%\"* "%Personal%DoNotStarveTogether\" /s  /e /c /h /y
    if exist "%Personal%LiuNianOneKeyBak\%pathname%\modsettings.lua" copy /y "%Personal%LiuNianOneKeyBak\%pathname%\modsettings.lua" "%~dp0mods\modsettings.lua"
    echo 操作已完成，任意键继续&pause>nul
goto ui

:bakerr
    call :write_log "备份目录空!"
    echo 您的备份目录空空如也，为了您的数据安全，快创建一个备份吧！！按任意键继续&pause>nul
    goto ui
goto :eof

rem ----------------删除单个备份-------------------
:delonebak
    cls
    call :displayui
    call :write_log 删除单个备份
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
    set /p ch=共发现%timen%个备份，请输入要删除存档的编号：
    if "%ch%"=="err"  echo 输入数据有误,按任意键返回管理菜单！&pause>nul&goto ui
    if %ch% LSS 0 echo 输入数据有误,按任意键返回管理菜单！&pause>nul&goto ui
    if %ch% GTR %timen% echo 输入数据有误,按任意键返回管理菜单！&pause>nul&goto ui
    set timen=0
    for /d %%f in (*) do (
    	if "!timen!" == "%ch%" (
    	    call :write_log "正在删除!timen!号备份:【%%f】……"
    	    echo 正在删除!timen!号备份:【%%f】……&rd /s /q "%Personal%LiuNianOneKeyBak\%%f\" 2>nul else goto ui
    	) 
    	set /a timen+=1
    )
    :delover
    echo 操作成功&pause
goto ui

rem -----------------批量删除备份----------------
:delbak
    
    cls
    call :displayui
    call :write_log 批量删除备份……
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
    set /p ch=共发现%timen%个备份，请输入要删除几号存档（不包括所选）之前的存档，您可以输入1到%timen%之间的任意数字，输入%timen%删除所有！：
    if "%ch%"=="err"  echo 输入数据有误,按任意键返回管理菜单！&pause>nul&goto ui
    if %ch% LSS 0 echo 输入数据有误,按任意键返回管理菜单！&pause>nul&goto ui
    if %ch% GTR %timen% echo 输入数据有误,按任意键返回管理菜单！&pause>nul&goto ui
    set timen=0
    for /d %%f in (*) do (
    	if !timen! LSS %ch% (
    	    call :write_log "正在删除!timen!号备份:【%%f】……"
    	    echo 正在删除!timen!号备份:【%%f】……&rd /s /q "%Personal%LiuNianOneKeyBak\%%f\" 2>nul else goto ui
    	) 
    	set /a timen+=1
    )
    :delover
    echo 操作成功&pause
goto ui

rem ---------------主UI-----------------------
:displayui
    
    cls
    set "uid="
    for /l %%a in (1,1,11) do (
    	set "uid=%%ui%%a%%"
    	call echo !uid!
    )
    echo,                        当前存档槽：【%clustername%】
    call :write_log "当前存档槽：【%clustername%】"
    rem  服务器位置【%folder:~0,30%.】 此变量已经在菜单的最后面的位置实现
    call :write_log 显示主UI……
goto :eof

rem ---------------备份UI----------------------
rem 此函数主要功能是显示当前电脑已经存在的备份列表
:beifenui
    call :write_log "此函数主要功能是显示当前电脑已经存在的备份列表……"
    echo,┌─────────────────────────────────────┐
    for /d %%f in (*) do (
    	if exist "%Personal%LiuNianOneKeyBak\%%f\note.liunian" (
    		for /f "usebackq tokens=2* delims=α" %%o in ("%Personal%LiuNianOneKeyBak\%%f\note.liunian") do (
    			set "beizhustr=%%o"
    			call echo    !timen!:%%f 备注："%%beizhustr%%"
    			set /a timen+=1
    		)
    	) else (
    		echo    !timen!:%%f 备注："无备注"
    		set /a timen+=1
    	)
    )
    echo,└─────────────────────────────────────┘
goto :eof

rem ----------------帮助--------------------
:myhelp
    call :write_log "进入帮助菜单……"
    set op=100
    call :displayui
    echo ┌──────────请根据以下提示选择希望获取的帮助───────────┐
    echo                0--------- 加入流年大大的“饥友一起玩”QQ群
    echo                1--------- 一键启动饥荒服务器使用说明书
    echo                2--------- 一键启动饥荒服务器找不到文件的解决办法
    echo                3--------- 通过游侠启动饥荒服务器的同时连接其它房间的方法
    echo                4--------- 一键启动饥荒服务器百度贴吧
    echo                5--------- 流年饥荒控制台指令大全
    echo                6--------- 下载最新版本的流年一键启动服务器
    echo                h--------- 一键启动饥荒服务器版本更新记录
    echo                其他------退出
    echo └─────────────────────────────────────┘
    set /p op="----------请输入操作码，按回车确认："
    if "%op%"=="0" start http://qm.qq.com/cgi-bin/qm/qr?k=KmbPqsBaMEsfeA3FTFSyVeKQIrq46Jdv
    if "%op%"=="1" start http://wenku.baidu.com/view/cba87ebcf46527d3250ce00b
    if "%op%"=="2" start http://wenku.baidu.com/view/09f2c1276294dd88d0d26be8
    if "%op%"=="3" start http://wenku.baidu.com/view/c412f7d2c5da50e2534d7f14
    if "%op%"=="4" start http://tieba.baidu.com/p/4247626325
    if "%op%"=="5" start http://wenku.baidu.com/view/ccd56cfacfc789eb162dc8a3
    if "%op%"=="6" start http://pan.baidu.com/share/home?uk=4045161541&view=share#category/type=0
    if "%op%"=="h" call :UpdateLog
goto :eof

rem --------------转码VBS脚本-------------------
:codeconvert
    call :write_log "转码VBS脚本"
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

rem ----通过调用vbs脚本自动获取用户电脑上面的我的文档绝对路径，使用这种方法的原因是在游侠环境下，从bat访问本机的注册表的方式获取我的文档路径是行不通的，而通过调用vbs来获取我的文档路径则没有影响-----
:vbs_get_document_dir
    call :write_log "通过调用vbs脚本自动获取用户电脑上面的我的文档绝对路径，使用这种方法的原因是在游侠环境下，从bat访问本机的注册表的方式获取我的文档路径是行不通的，而通过调用vbs来获取我的文档路径则没有影响"
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
    start /w "vbs获取我的文档路径" "%~dp0codeconvert.vbs"
    set tmp=0
    rem ---------------读取一键配置变量值------------------
    for /f "eol=[ tokens=1,2* usebackq delims==" %%i in ("%~dp0dirtmp.txt") do (
        set /a tmp+=1
        call set "%%i=%%j"
    )
    rem ----------------保存一键配置-------------------
    call :save_One_Key_setting_ini
    del "%~dp0codeconvert.vbs"
    del /q "%~dp0dirtmp.txt"
goto :eof

rem ----通过vbs调用打开文件夹对话框来选择饥荒客户端所在的路径并通过文件转换到bat文件的变量中-----
:vbs_get_dst_dir
    call :write_log "通过vbs调用打开文件夹对话框来选择饥荒客户端所在的路径并通过文件转换到bat文件的变量中……"
    if exist "%~dp0dirtmp.txt" del /q "%~dp0dirtmp.txt">nul 2>nul
    set "get_dstdir_vbs1=strPath = BrowseForFolder^(^"请选择饥荒客户端所在的目录：^"^)"
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
    echo,未找到饥荒客户端，请在弹出的目录对话框中选择您的饥荒客户端所在目录……
    start /w "vbs获取饥荒客户端路径" "%~dp0DSTServerConsole.vbs"
    set tmp=0
    for /f "eol=[ tokens=1,2* usebackq delims==" %%i in ("%~dp0dirtmp.txt") do (
        set /a tmp+=1
        call set "%%i=%%j"
    )
    rem 保存用户选择的饥荒客户端的绝对路径，保存之前会对这一路径进行合法性检测以及版本适用性检测
    if exist "%dstdir%dontstarve_steam.exe" (
        call :save_One_Key_setting_ini
    ) else (
        if exist "%dstdir%bin\dontstarve_steam.exe" (
            set "dstdir=!dstdir!bin\"
            call :save_One_Key_setting_ini
        ) else (
            call :write_log 所选的饥荒客户端目录有误，请确认您选择的目录下是否有饥荒客户端，支持选择饥荒根目录和饥荒的bin目录，程序自动识别
            echo,所选的饥荒客户端目录有误，请确认您选择的目录下是否有饥荒客户端，支持选择饥荒根目录和饥荒的bin目录，程序自动识别
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
    	        call :write_log "警告，您选择的饥荒客户端（ver!clientver!）和饥荒服务器端（ver!cmpdstver!）版本不匹配，只有相同版本号的饥荒客户端和服务器端才能搜到房间并连上！"
                echo,警告，您选择的饥荒客户端（ver!clientver!）和饥荒服务器端（ver!cmpdstver!）版本不匹配，只有相同版本号的饥荒客户端和服务器端才能搜到房间并连上！
                pause
            )
    	)
    )
    del /q "%~dp0DSTServerConsole.vbs"
    del /q "%~dp0dirtmp.txt"
goto :eof

rem ----------在生成modsettings.lua 和 modoverride.lua文件之前询问用户是否要对这两个文件进行编码转换---------
:confirmconvert
    call :write_log "在生成modsettings.lua 和 modoverride.lua文件之前询问用户是否要对这两个文件进行编码转换……"
    set convert=false
    echo ┌─────────您是否需要对modsettings.lua 转码────────────┐
    echo                1---------我需要转码 ※推荐
    echo                其他------我不需要转码
    echo └─────────────────────────────────────┘
    set /p op="----------请输入操作码，按回车确认："
    if %op%==1 set convert=true
    echo, 正在执行，请稍候……
goto :eof

rem -------------VBS模拟按键脚本-----------------
:ConsoleOutput
    call :write_log VBS模拟按键脚本
    set "console1=on error resume next"
    set "console2=SET WS=CreateObject(^"WScript.Shell^")"
    if "!choice_console!" == "地上" (
      set "console3=WS.AppActivate ^"%OverworldTitle%^""
    ) else (
    	set "console3=WS.AppActivate ^"%CavesTitle%^""
    )
    set "console4=WS.SendKeys ^"%consolecmd%^""
    set "console5=wscript.sleep 1"
    set "console6=WS.AppActivate ^"%titlestr%^""
    set "console7=WS.AppActivate ^"Don^'t Starve Together^""
    set "console="
    echo,'本脚本由流年一键启动%OneKeyVersion%自动生成>"%~dp0DSTServerConsole.vbs"
    for /l %%a in (1,1,7) do (
    	set "console=%%console%%a%%"
    	call echo,!console!>>"%~dp0DSTServerConsole.vbs"
    )
    start /w "控制台命令发送程序" "%~dp0DSTServerConsole.vbs"
    del "%~dp0DSTServerConsole.vbs"
goto :eof

rem -------------------两个窗口同时输入-------------------
:DoubleConsoleOutput
    call :write_log DoubleConsoleOutput……
    set "console1=on error resume next"
    set "console2=SET WS=CreateObject(^"WScript.Shell^")"
    set "console3=WS.AppActivate ^"%OverworldTitle%^""
    set "console4=WS.SendKeys ^"%consolecmd%^""
    set "console5=wscript.sleep 1"
    set "console6=WS.AppActivate ^"%titlestr%^""
    set "console="
    echo,'本脚本由流年一键启动%OneKeyVersion%自动生成>"%~dp0DSTServerConsole.vbs"
    for /l %%a in (1,1,6) do (
    	set "console=%%console%%a%%"
    	call echo,!console!>>"%~dp0DSTServerConsole.vbs"
    )
    start /w "控制台命令发送程序" "%~dp0DSTServerConsole.vbs"
    del "%~dp0DSTServerConsole.vbs"
    call :DoubleConsoleOutput2
goto :eof

:DoubleConsoleOutput2
    call :write_log DoubleConsoleOutput2……
    set "console3=WS.AppActivate ^"%CavesTitle%^""
    rem set "console7=WS.AppActivate ^"Don^'t Starve Together^""
    set "console="
    echo,'本脚本由流年一键启动%OneKeyVersion%自动生成>"%~dp0DSTServerConsole.vbs"
    for /l %%a in (1,1,6) do (
    	set "console=%%console%%a%%"
    	call echo,!console!>>"%~dp0DSTServerConsole.vbs"
    )
    start /w "控制台命令发送程序" "%~dp0DSTServerConsole.vbs"
    del "%~dp0DSTServerConsole.vbs"
goto :eof

rem -------------自动调整控制台输入法--------------
:Consoleshurufatiaozheng1
    call :write_log Consoleshurufatiaozheng1……
    set "console1=on error resume next"
    set "console2=SET WS=CreateObject(^"WScript.Shell^")"
    set "console3=WS.AppActivate ^"%OverworldTitle%^""
    set "console4=WS.SendKeys ^"^^^^ ^""
    set "console5=wscript.sleep 1"
    set "console6=WS.AppActivate ^"%titlestr%^""
    set "console="
    echo,'本脚本由流年一键启动%OneKeyVersion%自动生成>"%~dp0DSTServerConsole.vbs"
    for /l %%a in (1,1,6) do (
    	set "console=%%console%%a%%"
    	call echo,!console!>>"%~dp0DSTServerConsole.vbs"
    )
    start /w "控制台命令发送程序" "%~dp0DSTServerConsole.vbs"
    del "%~dp0DSTServerConsole.vbs"
goto :eof

:Consoleshurufatiaozheng2
    call :write_log Consoleshurufatiaozheng2……
    set "console1=on error resume next"
    set "console2=SET WS=CreateObject(^"WScript.Shell^")"
    set "console3=WS.AppActivate ^"%CavesTitle%^""
    set "console4=WS.SendKeys ^"^^^^ ^""
    set "console5=wscript.sleep 1"
    set "console6=WS.AppActivate ^"%titlestr%^""
    set "console="
    echo,'本脚本由流年一键启动%OneKeyVersion%自动生成>"%~dp0DSTServerConsole.vbs"
    for /l %%a in (1,1,6) do (
    	set "console=%%console%%a%%"
    	call echo,!console!>>"%~dp0DSTServerConsole.vbs"
    )
    start /w "控制台命令发送程序" "%~dp0DSTServerConsole.vbs"
    del "%~dp0DSTServerConsole.vbs"
goto :eof

rem --------------------控制台菜单----------------------
:consolemenu
    call :displayui
    call :write_log 控制台菜单……
    set op=LiuNianLiShang
    echo,┌──────控制台操作菜单（注意，控制台应处于英文输入法下）───────┐
    echo,  12---接收刷入的玩家编号【%playernum%】         13----物品刷在背包还是地上【%cmdyorn%】
    echo,  0----返回上一级菜单                  20----玩家位置在地上or地下【%choice_console%】
    echo,  ──────────────华丽丽的分割线────────────────
    echo,  1----存档                            21----使【%playernum%】号玩家退出选人
    echo,  2----回档                            22----列出当前在线用户
    echo,  3----重新初始化游戏                  23----所有人集合到【%playernum%】号身边
    echo,  4----软重启服务器                    24----还没想好做什么(∩_∩)
    echo,  5----软关闭服务器                    25----还没想好做什么(∩_∩)
    echo,  6----禁止玩家加入游戏                26----还没想好做什么(∩_∩)
    echo,  7----允许玩家加入游戏                27----还没想好做什么(∩_∩)
    echo,  8----系统公告,只支持英文             28----还没想好做什么(∩_∩)
    echo,  9----复活所有人                      29----还没想好做什么(∩_∩)
    echo,  10---切换输入法（刷入失败请执行）    30----还没想好做什么(∩_∩)
    echo,  11---重复上一个命令                  31----还没想好做什么(∩_∩)
    echo,  h----帮助                            32----还没想好做什么(∩_∩)
    echo,  其他- 搜索你输入的物品（可以是中文或英文）并刷入背包或刷在地上
    echo,└─────────────────────────────────────┘
    set /p op="---请输入操作码或者要刷入的物品中文名或英文名，按回车确认："
    if "%op%"=="LiuNianLiShang" (
        call :write_log 控制台操作菜单操作码输入有误……
        echo 输入有误，按任意键继续&pause >nul&goto consolemenu
    )
    if "%op%"=="20" (
        if "%choice_console%" == "地下" (
            call :write_log 设置玩家位置在地上……
            set "choice_console=地上"
        ) else (
            set "choice_console=地下"
            call :write_log 设置玩家位置在地上……
        )
        call :save_One_Key_setting_ini
        goto consolemenu
    )
    if "%op%"=="12" (
    	set "op"="err"
    	call :write_log 更改接收刷入玩家编号……
    	set /p op=请输入接收刷入的玩家编号，玩家编号为按TAB键其在列表中的位置：
    	if "!op!" == "err" echo 输入有误，按任意键继续&pause >nul&goto consolemenu
    	if !op! LSS 0 echo 输入有误，按任意键继续&pause >nul&goto consolemenu
    	if !op! GTR 250 echo 输入数据有误,按任意键返回管理菜单！&pause>nul&goto consolemenu
    	set "playernum=!op!"
    	call :save_One_Key_setting_ini
    	goto consolemenu
    )
    if "%op%"=="13" (
        
        if "%cmdyorn%" == "背包" (
            call :write_log 设置物品刷在地上……
            SET "cmdyorn=地上"
        ) else (
            call :write_log 设置物品刷在背包……
            SET "cmdyorn=背包"
        )
        call :save_One_Key_setting_ini
        goto consolemenu
    )
    if "%op%"=="11" call :ConsoleOutput&goto consolemenu

    if "%op%"=="21" (
        call :write_log "使【%playernum%】号玩家退出选人"
        set "consolecmd=c_despawn{(}AllPlayers{[}%playernum%{]}{)}{enter}{enter}"
        call :ConsoleOutput
        goto consolemenu
    )
    if "%op%"=="22" (
        call :write_log 列出当前在线用户
        set "consolecmd=c_listplayers{(}{)}{enter}{enter}"
        call :ConsoleOutput
        goto consolemenu
    )
    if "%op%"=="23" (
        call :write_log "所有人集合到【%playernum%】号身边"
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
        call :write_log 存档……
        call :ConsoleOutput&goto consolemenu
    )
    if "%op%"=="2" (
        call :consoleconfirm
        
        set /p numOfRoll=回档数最多不要超过你剩余存档个数，一般是6，连续回档这个数会缩小，一旦超过您剩余存档个数，服务器会初始化世界，建议操作前备份存档，请输入回档个数:
        call :write_log "回档!numOfRoll!个……"
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
    	echo ┌─────────────流年一键控制台警告───────────────┐
    	ECHO,         1、为了保护饥荒的游戏性，默认关闭该功能，
    	echo,         2、如果需要使用请在一键配置区域启用高级控制台功能
    	echo └─────────────────────────────────────┘
    	echo,按任意键继续……
    	pause>NUl
    	GOTO consolemenu
    )
GOTO searchcmd
goto consolemenu

rem ------------根据用户输入的关键字搜索对应的物品或建筑等并显示出来-------------------
:searchcmd

    rem set /p cmdstr=请输入要搜索的命令名称，可以用中文，或英文：
    call :displayui
    call :write_log 根据用户输入的关键字搜索对应的物品或建筑等并显示出来……
    echo ┌──────控制台操作菜单（注意，控制台应处于英文输入法下）───────┐
    set searchflag=0
    set searchret=0
    for /F "usebackq tokens=1,2* delims=:" %%i in (`findstr /n "%op%" !nowpath!`) do (
    	 if %%i GEQ !consoledata! (
    	 		set /a searchret=!searchret!+1
    	 		echo       !searchret!:%%j
    	 )
    )
    if %searchret% == 0 (
    	echo                  1、啦啦啦，没有找到你想要的东西
    	echo                  2、请优化关键字，确认是否输入错误
    	echo                  3、或者你可以将你要刷的东西添加到一键中去
    	echo                  4、流年祝您游戏愉快
    	echo └─────────────────────────────────────┘
    	pause
    	goto consolemenu
    )
    set cmdstr=0
    set cmdsum=1
    echo └─────────────────────────────────────┘
    rem --------------控制台物品列表查找并构建控制台命令算法-----------------
    set /p cmdstr=共找到%searchret%个相关物品，请输入要刷物品前面的编号：
    rem ----------------输入合法性检查--------------------
    if %cmdstr% GTR %searchret% echo 输入数据错误按任意键继续&pause>nul&goto consolemenu
    if %cmdstr% LSS 1 echo 输入数据错误按任意键继续&pause>nul&goto consolemenu
    set searchflag=0
    set /p cmdsum=请输入要刷物品的数量：
    if %cmdsum% GTR 1000 echo 听说刷的太多服务器会崩溃哦，少刷一点吧！按任意键继续&pause>nul&goto consolemenu
    if %cmdsum% LSS 1 echo 输入数据错误按任意键继续&pause>nul&goto consolemenu
    set searchret=0
    set connum=0
    set searchret=0
    rem ----------------查找算法---------------
    for /F "usebackq tokens=1,2* delims=:" %%i in (`findstr /n "%op%" %0`) do (
    	 if %%i GEQ !consoledata! (
    	 		set /a searchret=!searchret!+1
    	 )
    	 if "!searchret!"=="%cmdstr%" call set cmdstr=%%i&goto connext
    )
    :connext
    set /a cmdstr=cmdstr-1
    rem set cmdyorn=0
    rem set /p cmdyorn=要刷在地上请输入1，否则将刷入背包：
    rem 要刷在地上请输入1，否则将刷入背包：
    rem -----------------构造控制台命令算法-------------------
    for /F "skip=%cmdstr% usebackq tokens=1,2*" %%i in (%0) do (
    	if "%cmdyorn%" neq "背包" (
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
    call :write_log 发送公告……
    set /p annuounceStr=请输入公告内容:
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
    call :write_log 流年一键控制台帮助……
    echo ┌─────────────流年一键控制台帮助───────────────┐
    echo    1、一键控制台原理是使用VBS SendKeys 函数模拟按键发送，杀软有可能拦截
    echo    2、允许即可，如果介意可以不用此部分功能，因为一键的源码是开放的，只要
    echo    3、你是从我发布一键的途径获取的就不会有问题，如果怀疑一键可以阅读源码
    echo    4、警告，如果不能刷入背包的东西刷入了背包有可能造成游戏崩溃，刷入建筑等不能放在背包的东西的时候请按21切换成【地上】刷入方式
    echo    5、如果刷入不成功请确保你的地上控制台窗口处于英文输入法下，可以按10进行切换
    echo └─────────────────────────────────────┘
    pause
goto :eof

rem -----------------守护进程子程序------------------------
:serverxind
    call :displayui
    call :write_log 守护进程子程序……
    echo ┌─────────────【服务器进程守护】───────────────┐
    echo     1、当前处于服务器进程守护模式，想要退出进程守护请按Y
    echo     2、当前时间%date% %time:~0,-6%
    echo └─────────────────────────────────────┘
    if "%xind%"=="true" (
    	for /f "usebackq" %%i in (`dir "%Personal%DoNotStarveTogether\" /A:D /B`) do (
    	    rem 排除饥荒自动生成的文件夹
    		if "%%i" NEQ "client_save" (
    			if "%%i" NEQ "save" (
    			    if "%%i" NEQ "save.old" (
    					set "server_is_running_or_not=false"
    					if exist "%Personal%DoNotStarveTogether\%%i\runningflag.lnls" (
    						for /f "usebackq delims= " %%a in ("%Personal%DoNotStarveTogether\%%i\runningflag.lnls") do set "server_is_running_or_not=%%a"
    					)
    					if "!server_is_running_or_not!"=="true" (
    						set "clustername=%%i"
    						set "OverworldTitle=▄︻┻═┳一地上世界Overworld 存档槽【!clustername!】一键版本【%OneKeyVersion%】服务器版本【%dstver%】"
    						set "CavesTitle=▄︻┻═┳一地下世界Caves 存档槽【!clustername!】一键版本【%OneKeyVersion%】服务器版本【%dstver%】"
    						echo,  正在检测存档槽为【%%i】的服务器运行状态……
    						call :write_log "正在检测存档槽为【%%i】的服务器运行状态……"
    						set "existserver=0"
    						tasklist /fi "windowtitle eq !OverworldTitle!"|find "dontstarve_dedicated_serv">nul&&set "existserver=1"
    						if "!existserver!" NEQ "1" (
    						    call :write_log 地上服务器异常结束，正在关闭并重新启动此存档槽的所有服务器……
    							echo,  地上服务器异常结束，正在关闭并重新启动此存档槽的所有服务器……
    							call :killserver
    							call :startserver
    							choice /c YN /t 40 /d N /m "  延时40秒，等待服务器重启……"
    							if "!errorlevel!" == "2" goto serverxind
    							set "xind=false"
    							goto ui
    						)
    						if exist "%Personal%DoNotStarveTogether\!clustername!\%cavesarchive%" (
    							set "existserver=0"
    							tasklist /fi "windowtitle eq !CavesTitle!"|find "dontstarve_dedicated_serv">nul&&set "existserver=1"
    							if "!existserver!" NEQ "1" (
    							    call :write_log 地下服务器异常结束，正在关闭并重新启动此存档槽的所有服务器……
    								echo,  地下服务器异常结束，正在关闭并重新启动此存档槽的所有服务器……
    								call :killserver
    								call :startserver
    								choice /c YN /t 40 /d N /m "  延时40秒，等待服务器重启……"
    								if "!errorlevel!" == "2" goto serverxind
    								set "xind=false"
    								goto ui
    							)
    						)
    						call :write_log "存档槽为【%%i】的服务器程序正在运行中……"
    						echo,  存档槽为【%%i】的服务器程序正在运行中……
    				    )
    				)
    			)
    		)
    	)
        choice /c YN /t 4 /d N /m "→取消守护进程请按Y，否则程序将一直守护已经开启的服务器……"
    	if "!errorlevel!" neq "2" (
    	    set "xind=false"
    		goto ui
    	)
    	goto serverxind
    )
goto :eof

:miswt
    call :write_log 进入首次运行动画生成函数
    set "missing0=Wrote to someone I care:"
    set "missing1=1、Missing someone in the midnight,I become so sad."
    set "missing2=2、I lost myself while lost my white cat."
    set "missing3=3、Whoever take away someone I care,please take good care of."
    set "missing4=4、You wouldn't known how did i wanner to play this game with you."
    set "missing5=5、Excuse for taking your time, I just said something making no difference."
    set "missing6=6、Now,you can start your DSTSERVER immediately."
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

    set "song1=谁还记得是谁先说永远的爱我	"
    set "song2=以前的一句话是我们以后的伤口	"
    set "song3=过了太久谁还记得当初那些温柔	"
    set "song4=我和你手牵手，说要一起，走到最后	"
    set "song5=我们都忘了，这条路走了多久	"
    set "song6=心中是清楚的，有一天，有一天都会停的	"
    set "song7=让时间说真话，虽然我也害怕	"
    set "song8=在天黑了以后，我们都不知道会不会有以后	"
    set "song9=谁还记得是谁先说永远的爱我	"
    set "song10=以前的一句话是我们以后的伤口	"
    set "song11=过了太久没人记得当初那些温柔	"
    set "song12=我和你手牵手说要一起走到最后	"
    set "song13=我们都累了，却没办法往回走	"
    set "song14=两颗心都迷惑怎么说，怎么说 都没有救	"
    set "song15=亲爱的为什么，也许你也不懂	"
    set "song16=两个相爱的人等着对方先说想分开的理由	"
    set "song17=谁还记得爱情开始变化的时候	"
    set "song18=我和你的眼中看见了不同的天空	"
    set "song19=走的太远终于走到分岔路的路口	"
    set "song20=是不是你和我要有两个相反的梦	"
    set "song21=谁还记得是谁先说永远的爱我	"
    set "song22=以前的一句话是我们以后的伤口	"
    set "song23=过了太久没人记得当初那些温柔	"
    set "song24=我和你手牵手说要一起走到最后	"
    set "song25=我和你手牵手说要一起走到最后	"
    set "song26=	"
    set "song27=分手从你口中说出十分冷漠	"
    set "song28=难过心中然后熄灭的火	"
    set "song29=我以为留下来没有错	"
    set "song30=我以为努力过你会懂	"
    set "song31=怎么连落叶都在嘲笑我	"
    set "song32=要假装坚强的走	"
    set "song33=行走在冬夜的冷风中	"
    set "song34=飘散的踩碎的都是梦	"
    set "song35=孤单单这一刻如何确定你曾爱过我	"
    set "song36=停留在冬夜的冷风中	"
    set "song37=我不是也不想装脆弱	"
    set "song38=我没说不代表我不会痛	"
    set "song39=我以为你暂时走失了	"
    set "song40=我以为你累了，会回头	"
    set "song41=怎么连复杂的故事背后，都是我听朋友说	"
    set "song42=行走在冬夜的冷风中	"
    set "song43=飘散的踩碎都是梦	"
    set "song44=孤单单这一刻如何确定你曾爱过我	"
    set "song45=停留在冬夜的冷风中	"
    set "song46=我不是也不想装脆弱	"
    set "song47=我没说不代表我不会痛	"
    set "song48=停留在冬夜的冷风	"
    set "song49=我不是也不想装脆弱	"
    set "song50=只因为你说过爱是等待是细水长流	"
    set "song51=。。。。。。。。。。	"
    set "song52=我没说不代表我不会痛	"
    set "song53=	"
    set "song54=	"
    set "song55=假如	"
    set "song56=信乐团	"
    set "song57=一份爱能承受多少的误解	"
    set "song58=熬过飘雪的冬天	"
    set "song59=一句话能撕裂多深的牵连	"
    set "song60=变得比陌生人还遥远	"
    set "song61=最初的爱越像火焰	"
    set "song62=最后越会被风熄灭	"
    set "song63=有时候真话太尖锐	"
    set "song64=有人只好说着谎言	"
    set "song65=假如时光倒流	"
    set "song66=我能做什么	"
    set "song67=找你没说的却想要的	"
    set "song68=假如我不放手	"
    set "song69=你多年以后	"
    set "song70=会怪我恨我或感动	"
    set "song71=想假如是最空虚的痛	"
    set "song72=一个人要看过几次爱凋谢	"
    set "song73=才甘心在孤独里冬眠	"
    set "song74=最初的爱越像火焰	"
    set "song75=最后越会被风熄灭	"
    set "song76=有时候真话太尖锐	"
    set "song77=有人只好说着谎言	"
    set "song78=假如时光倒流	"
    set "song79=我能做什么	"
    set "song80=找你没说的却想要的	"
    set "song81=假如我不放手	"
    set "song82=你多年以后会怪我恨我或感动	"
    set "song83=想假如，是最空虚的痛	"
    set "song84=为什么幸福 总是幻梦	"
    set "song85=越靠近天堂	"
    set "song86=也就快醒了	"
    set "song87=也许爱情 很像落叶	"
    set "song88=看似飞翔却在坠落	"
    set "song89=假如时光倒流我能做什么	"
    set "song90=找你没说的却想要的	"
    set "song91=假如我不放手	"
    set "song92=你多年以后会怪我恨我或感动	"
    set "song93=假如这刻已让时光倒流	"
    set "song94=你会做什么	"
    set "song95=一样选择我或不把握	"
    set "song96=假如温柔放手	"
    set "song97=你是否懂得做错了依然能回头	"
    set "song98=想假如，是无力的寂寞	"
    set "song99=	"
    set "song100=	"
    set "song101=	"
    set "song102=一个人	"
    set "song103=乌云一层一层的遮住了光	"
    set "song104=坚强一层一层卸掉了伪装	"
    set "song105=过往的车辆遮掩了眼神里面的慌张	"
    set "song106=脆弱被嘴角的的笑无情感伤	"
    set "song107=一个心里面住着一个人	"
    set "song108=一个人却只有这一颗心	"
    set "song109=当你来来回回践踏着我心底	"
    set "song110=我不怕痛只怕你爱的不坚定	"
    set "song111=一个人吃饭	"
    set "song112=一个人睡	"
    set "song113=一个人想念	"
    set "song114=一个人醉	"
    set "song115=一个人爱着另一个人	"
    set "song116=一个人只流泪	"
    set "song117=好 好伤悲	"
    set "song118=我是一条小鱼儿	"
    set "song119=不曾想过要逃离	"
    set "song120=我也爱大海	"
    set "song121=我也想呼吸	"
    set "song122=可是想到失去你	"
    set "song123=我宁愿干涸	"
    set "song124=在你宽大的掌心里	"
    set "song125=我一个人痛	"
    set "song126=我一个人走	"
    set "song127=我一个人守候到天明	"
    set "song128=我一个人梦	"
    set "song129=我一个人错	"
    set "song130=我一个人或喜或悲不要谁关心	"
    set "song131=我一个人疯	"
    set "song132=我一个人懂	"
    set "song133=我一个人多想回过头	"
    set "song134=可明知道	"
    set "song135=你不在身后	"
    set "song136=反反复复	"
    set "song137=爱到最后只剩下我	"
    set "song138=我一个人走	"
    set "song139=别再说爱我	"
    set "song140=放手了是吗	"
    set "song141=从此一个人	"
    set "song142=让我一个人走	"
    set "song143=我不想你爱我	"
    set "song144=真的放你走了	"
    set "song145=一个人好好的	"
    set "turncmd1=启动流年一键！"
    set "turncmd2=快启动流年一键！"
    set "turncmd3=你他喵快启动流年一键！"
    set "turncmd4=再不启动流年一键就砸了你！"
    set "turnon1='%turncmd1%' 不是内部或外部命令，也不是可运行的程序"
    set "turnon2='%turncmd2%' 不是内部或外部命令，也不是可运行的程序"
    set "turnon3='%turncmd3%' 不是内部或外部命令，也不是可运行的程序"
    set "turnont=或批处理文件。"
    rem 首次运行一键的时候构造出一个恶搞动画效果
    echo,Microsoft Windows [版本 6.1.7601]
    echo,版权所有 (c) 2009 Microsoft Corporation。保留所有权利。
    echo,
    call :write_log 动画所需数据准备完毕，正在显示开机恶搞画面……
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
    echo,正在启动流年一键……
    set /p a=">=============================================================================="<nul
    for /l %%i in (1,1,80) do (
    	set /p aa=<nul
    )
    for /l %%i in (1,1,80) do (
    	set /p aa=^><nul
    	call :delay 1 >nul
    )
    call :write_log 开机恶搞画面运行完毕

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

rem ---------------------写入一键配置文件--------------------------
:save_One_Key_setting_ini
    %~d0
    cd "%~dp0"
    call :write_log 写入一键配置文件……
    echo,[配置文档由流年一键启动饥荒服务器%OneKeyVersion%自动生成]>LiuNianOneKey.ini
    echo,[文档生成时间：%date% %time:~0,-6%]>>LiuNianOneKey.ini
    echo,[路径配置]>>LiuNianOneKey.ini
    call :write_log "Personal=%Personal%"
    call :write_log "dstdir=%dstdir%"
    echo,Personal=%Personal%>>LiuNianOneKey.ini
    echo,dstdir=%dstdir%>>LiuNianOneKey.ini
    echo,[参数配置]>>LiuNianOneKey.ini
    call :write_log "clustername=%clustername%"
    call :write_log "cmdyorn=%cmdyorn%"
    call :write_log "choice_console=%choice_console%"
    call :write_log "playernum=!playernum!"
    echo,clustername=%clustername%>>LiuNianOneKey.ini
    echo,cmdyorn=%cmdyorn%>>LiuNianOneKey.ini
    echo,choice_console=%choice_console%>>LiuNianOneKey.ini
    echo,playernum=!playernum!>>LiuNianOneKey.ini
    
goto :eof

rem ---------------------从一键配置文件读取配置--------------------------
:read_One_Key_setting_ini
    call :write_log 从一键配置文件读取配置……
    set tmp=0
    for /f "eol=[ tokens=1,2* usebackq delims==" %%i in ("%~dp0LiuNianOneKey.ini") do (
        set /a tmp+=1
        call set "%%i=%%j"
        call :write_log "%%i=%%j"
    )

goto :eof

rem -----------------交互式生成cluster.ini------------------------
:cluster_ini
    call :write_log 交互式生成cluster.ini……
    set "game_mode=endless"
    set "max_players=6"
    set "pvp=false"
    set "pause_when_empty=true"
    set "lan_only_cluster=false"
    set "offline_server=false"
    set "cluster_description=本服务器由“流年一键启动饥荒服务器”启动，了解更多请加群497398445"
    set "cluster_name=流年离伤"
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
    call :write_log aotosetcluster……
    if not exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" set "cluster22=shard_enabled = false"
    rem -------------调用交互输入界面---------------
    call :interactive_ui

    echo,正在保存服务器配置……
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

rem -----------------------------生成地上配置文件---------------------------------
:Overworld_settings_ini
    call :write_log 生成地上配置文件……
    echo,正在生成地上settings.ini……
    set "Overworldpth=%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\"
    if not exist "%Overworldpth%save" md "%Overworldpth%save"
    if "%1"=="1" (
    	echo 正在生成……>nul
    ) else (
    	if exist "%Overworldpth%settings.ini" (
    		set "game_mode= endless"
    		set "max_players= 6"
    		set "cluster_intention= cooperative"
    		set "server_password="
    		set "pvp= false"
    		set "pause_when_empty= true"
    		set "shard_enable= true"
    	    set "default_server_name=流年离伤"
    		set "default_server_description=本服务器由“流年一键启动饥荒服务器”启动，了解更多请加群497398445"
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

rem ----------------------生成地下配置文件---------------------------
:Caves_settings_ini
    call :write_log Caves_settings_ini……
    echo,正在生成地下settings.ini……
    set "Cavespth=%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\"
    if "%1"=="1" (
    	echo 正在生成……>nul
    ) else (
    	if exist "%Cavespth%settings.ini" (
    		set "game_mode= endless"
    		set "max_players= 6"
    		set "cluster_intention= cooperative"
    		set "server_password="
    		set "pvp= false"
    		set "pause_when_empty= true"
    		set "shard_enable= true"
    		set "default_server_name=流年离伤"
    		set "default_server_description=本服务器由“流年一键启动饥荒服务器”启动，了解更多请加群497398445"

    		set tmp=0
    		call :codeconvert
    		if exist "%~dp0codeconvert.vbs" (
    			cscript "%~dp0codeconvert.vbs" "%Cavespth%settings.ini" 1>nul 2>nul
    			del "%~dp0codeconvert.vbs"
    		)
    		rem -------------自动读取地下服务器配置文件---------------
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
    call :write_log master_server_ini……
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
    call :write_log cave_server_ini……
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

rem -----------------------自动生成洞穴服务器世界配置文件-------------------------
:cavesworldgenoverride
    call :write_log 自动生成洞穴服务器世界配置文件……
    set "data=return { override_enabled=true, preset=^"DST_CAVE^" }"
    echo,return { override_enabled=true, preset=^"DST_CAVE^" } >"%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\worldgenoverride.lua"
    if exist "%~dp0codeconvert.vbs" (
    	cscript "%~dp0codeconvert.vbs" "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\worldgenoverride.lua" 1 1>nul 2>nul
    	del "%~dp0codeconvert.vbs"
    )
goto :eof

rem ----------------交互输入界面-------------------
:interactive_ui
    call :displayui
    call :write_log 服务器配置文件交互输入界面……
    echo ┌──────────────是否要自定义房间───────────────┐
    set op=n
    echo,        1-----------是   ※推荐
    echo,        其他--------使用流年提供的默认配置：
    echo └─────────────────────────────────────┘
    set /p op=  请输入操作码：
    rem echo,  以下数据请谨慎输入，所有您输入的数据都会影响服务器配置文件，一键暂时不对数据合法性进行检查，请按照要求谨慎输入，否则可能导致服务器开启失败！！！
    if "%runningmod%" NEQ "steam" (
    	set "lan_only_cluster=true"
    	set "offline_server=true"
    ) else (
    	set "lan_only_cluster=false"
    	set "offline_server=false"
    )
    if %op%==1 (
    	call :displayui
    	echo ┌───────────────请选择游戏风格───────────────┐
    	set op=2
    	echo,        1--------social（交际）
    	echo,        2--------cooperative（合作）※推荐
    	echo,        3--------competitive（竞争）
    	echo,        4--------madness（疯狂）
    	echo └─────────────────────────────────────┘
    	set /p op=  请输入操作码：
    	if "!op!" neq "" (
    		if !op!==1 set "cluster_intention=social"
    		if !op!==2 set "cluster_intention=cooperative"
    		if !op!==3 set "cluster_intention=competitive"
    		if !op!==4 set "cluster_intention=madness"
    	)
    	call :displayui
    	echo ┌───────────────请输入房间名────────────────┐
    	echo,        给你的房间起一个漂亮的名字吧
    	echo └─────────────────────────────────────┘
    	set /p op=  请输入房间名：
    	if "!op!" neq "" (
    		set "cluster_name=!op!"
    		set "default_server_name=!op!"
    	)
    	call :displayui
    	echo ┌───────────────输入房间描述────────────────┐
    	set "op=本服务器由“流年一键启动饥荒服务器”启动，了解更多请加群497398445"
    	echo,   1、向别人介绍一下你的房间吧，比如我是这样装X的:
    	echo,   2、本服务器由“流年一键启动饥荒服务器”启动，了解更多请加群497398445
    	echo,   3、如果想支持我们，可以直接回车使用上面的描述作为你服务器的描述
    	echo └─────────────────────────────────────┘
    	set /p op=  请输入房间描述：
    	if "!op!" neq "" (
    		set "cluster_description=!op!"
    		set "default_server_description=!op!"
    	)
    	call :displayui
    	set op=0
    	echo ┌──────────────请选择游戏模式───────────────┐
    	echo,        1--------survival（生存）
    	echo,        2--------wilderness（荒野）
    	echo,        3--------endless（无尽）※推荐
    	echo └─────────────────────────────────────┘
    	set /p op=  请输入操作码：
    	if !op!==1 set "game_mode=survival"
    	if !op!==2 set "game_mode=wilderness"
    	if !op!==3 set "game_mode=endless"
    	call :displayui
    	echo ┌──────────────是否开启PvP ─────────────────┐
    	set op=0
    	echo,        我的大刀早已饥渴难耐，开启队友PK吧~~~~
    	echo,        1-----------开启
    	echo,        其他--------关闭 ※推荐
    	echo └─────────────────────────────────────┘
    	set /p op=  请输入操作码：
    	if !op!==1 set "pvp=true"
    	call :displayui
    	echo ┌────────────请输入房间最大容纳人数──────────────┐
    	set op=6
    	echo,        1、人数可以输入1~64之间任意数字 
    	echo,        2、温馨提示，请根据自己电脑的配置情况设置
    	echo └─────────────────────────────────────┘
    	set /p op=  请输入房间最大容纳人数：
    	set "max_players=!op!"
    	call :displayui
    	echo ┌───────────────请输入房间密码───────────────┐
    	set "op="
    	echo,        1、再也不想见到熊孩子了
    	echo,        2、快设个密码和饥友一起玩吧
    	echo └─────────────────────────────────────┘
    	set /p op=  请输入房间密码，直接回车为不设密码：
    	set "cluster_password=!op!"
    	set "server_password=!op!"
    	call :displayui
    	echo ┌─────────────是否开启服务器无人暂停─────────────┐
    	set "op=0"
    	echo,        建议打开，很有用的一个功能
    	echo,        1-----------开启 ※推荐
    	echo,        其他--------关闭
    	echo └─────────────────────────────────────┘
    	set /p op=  请输入操作码：
    	if !op! NEQ 1 set "pause_when_empty=false"
    )
goto :eof

rem -------------设置服务器主端口--------------------
:setclusterport
    call :write_log 设置服务器主端口
    set "game_mode=endless"
    set "max_players=6"
    set "pvp=false"
    set "pause_when_empty=true"
    set "lan_only_cluster=false"
    set "offline_server=false"
    set "cluster_description=本服务器由“流年一键启动饥荒服务器”启动，了解更多请加群497398445"
    set "cluster_name=流年离伤"
    set "cluster_intention=cooperative"
    set "cluster_password="
    set "console_enabled=true"
    set "shard_enabled=true"
    set "bind_ip=127.0.0.1"
    set "master_ip=127.0.0.1"
    set "master_port=%1"
    set "cluster_key=defaultPass"
goto savecluster

rem -------------根据服务器窗口名字关闭服务器-----------------
:killserver
    call :write_log 根据服务器窗口名字关闭服务器……
    set "existserver=0"
    call :write_log "正在关闭使用存档槽【%clustername%】的地上服务器……"
    echo 正在关闭使用存档槽【%clustername%】的地上服务器……
    TASKKILL /F /FI "windowtitle eq %OverworldTitle%" >nul
    call :write_log "正在关闭使用存档槽【%clustername%】的地下服务器……"
    echo 正在关闭使用存档槽【%clustername%】的地下服务器……
    TASKKILL /F /FI "windowtitle eq %CavesTitle%" >nul
    if exist "%Personal%DoNotStarveTogether\%clustername%\runningflag.lnls" (
         call :write_log 清除服务器运行标志变量……
    	 del "%Personal%DoNotStarveTogether\%clustername%\runningflag.lnls"
    )
goto :eof

rem --------------枚举当前可用端口------------------
:get_available_port
    call :write_log 枚举当前可用端口……
    echo,正在枚举可用的端口……
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
    echo,找到可用的端口：%port%
    call :write_log "找到可用的端口：%port%"
    echo,正在写入配置文件……
goto :eof

rem -----------------动态分配端口号并启动服务器-------------------
:startserver
    call :write_log 动态分配端口号并启动服务器……
    if "%oldversion%" NEQ "true" (
    	call :get_available_port 10888
    	call :cluster_ini !port! 1
    	if "%runningmod%"=="steam" (
    		call :get_available_port 10998
    		call :master_server_ini !port!
    		echo,正在启动地上服务器……
    		start "%OverworldTitle%" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %masterarchive% -port !port!
    		if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" (
    			call :get_available_port 11008
    			call :cave_server_ini !port!
    			echo,正在启动地下服务器……
    			start "%CavesTitle%" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %cavesarchive% -port !port!
    		)
    	) else (
    		call :get_available_port 10998
    		call :master_server_ini !port!
    		echo,正在启动地上服务器……
    		start "%OverworldTitle%" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %masterarchive% -port !port! -offline
    		if exist "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%" (
    			call :get_available_port 11008
    			call :cave_server_ini !port!
    			echo,正在启动地下服务器……
    			start "%CavesTitle%" /D "%~dp0bin" "dontstarve_dedicated_server_nullrenderer.exe" -cluster %clustername% -shard %cavesarchive% -port !port! -offline
    		)
    	)
    ) else (
    	call :get_available_port 10888
    	set "master_port=!port!"
    	if "!runningmod!"=="steam禁用" (
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

rem ----------------时间处理函数--------------------
:get_time_for_dir
    call :write_log 时间处理函数……
    Set timea=%date%%time%
    set "timestr="
    set timef=0
    :timeloops
    set timec=%%timea:~%timef%,1%%
    call set timet=%timec%
    if "%timet%"==" " set "timet=0"
    if "%timet%"==":" set "timet=："
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
    call :write_log ReadleveldataoverrideSetting……
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
    call :write_log Cavesleveldataoverride ……
    echo ┌──────────────选择洞穴世界类型───────────────┐
    echo,        1---------The Caves ※推荐
    echo,        2---------Caves Plus
    echo └─────────────────────────────────────┘
    set /p op=  请输入世界类型：
    if "!op!" neq "" (
        if "!op!" == "1" (
            call :DefaultCavesleveldataoverridesettings
        )   else   (
            if "!op!" == "2" (
                call :DarkerCavesleveldataoverridesettings
            )   else   (
                echo,输入数据有误，请重新选择，按任意键继续……&goto Cavesleveldataoverride
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
    echo,--    ┌──────────────────────────┐>"%leveldataoverridepat%"
    echo,--        0、本文档是地下世界配置文件>>"%leveldataoverridepat%"
    echo,--        1、由【流年一键启动饥荒服务器%OneKeyVersion%】自动生成>>"%leveldataoverridepat%"
    echo,--        2、文档创建日期:%date% %time:~0,-6%>>"%leveldataoverridepat%"
    echo,--        3、--为注释，不影响使用>>"%leveldataoverridepat%"
    echo,--        4、更多资源请加 QQ群497398445>>"%leveldataoverridepat%"
    echo,--    └──────────────────────────┘>>"%leveldataoverridepat%"
    for /l %%a in (1,1,62) do (
    	set "Cavesleveldataoverrideui=%%Cavesleveldataoverrideui%%a%%"
    	call echo,!Cavesleveldataoverrideui!>>"%leveldataoverridepat%"
    )
goto :eof

:DefaultCavesleveldataoverridesettings
    call :write_log DefaultCavesleveldataoverridesettings……
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
    call :write_log DarkerCavesleveldataoverridesettings……
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
    call :write_log 选择地上世界类型……
    echo ┌──────────────选择地上世界类型───────────────┐
    echo,        1---------默认 ※推荐
    echo,        2---------经典（没有巨人）
    echo,        3---------三箱
    echo,        4---------永夜
    echo └─────────────────────────────────────┘
    set /p op=  请输入房间名：
    if "!op!" neq "" (
        if "!op!" == "1" (
            call :write_log 用户选择了默认地上世界类型
            call :defaultOverworldleveldataoverridesetting
        )   else   (
            if "!op!" == "2" (
                call :write_log "用户选择了经典（没有巨人）地上世界类型"
                call :NoGiantsHereOverworldleveldataoverridesetting
            )   else   (
                if "!op!" == "3" (
                    call :write_log 用户选择了三箱地上世界类型
                    call :TogetherPlusOverworldleveldataoverridesetting
                )   else   (
                    if "!op!" == "4" (
                        call :write_log 用户选择了永夜地上世界类型
                        call :LightOutOverworldleveldataoverridesetting
                    )   else   (
                        call :write_log 输入数据有误，请重新选择
                        echo,输入数据有误，请重新选择，按任意键继续……&goto Overworldleveldataoverride
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
    echo,--    ┌──────────────────────────┐>"%leveldataoverridepat%"
    echo,--        0、本文档是地上世界配置文件>>"%leveldataoverridepat%"
    echo,--        1、由【流年一键启动饥荒服务器%OneKeyVersion%】自动生成>>"%leveldataoverridepat%"
    echo,--        2、文档创建日期:%date% %time:~0,-6%>>"%leveldataoverridepat%"
    echo,--        3、--为注释，不影响使用>>"%leveldataoverridepat%"
    echo,--        4、更多资源请加 QQ群497398445>>"%leveldataoverridepat%"
    echo,--    └──────────────────────────┘>>"%leveldataoverridepat%"
    for /l %%a in (1,1,109) do (
    	set "Overworldleveldataoverrideui=%%Overworldleveldataoverrideui%%a%%"
    	call echo,!Overworldleveldataoverrideui!>>"%leveldataoverridepat%"
    )
goto :eof

rem ------------------默认---------------------
:defaultOverworldleveldataoverridesetting
    call :write_log defaultOverworldleveldataoverridesetting……
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

rem ------------------经典---------------------
:NoGiantsHereOverworldleveldataoverridesetting
    call :write_log NoGiantsHereOverworldleveldataoverridesetting……
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

rem ------------------三箱---------------------
:TogetherPlusOverworldleveldataoverridesetting
    call :write_log TogetherPlusOverworldleveldataoverridesetting……
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

rem ------------------永夜---------------------
:LightOutOverworldleveldataoverridesetting
    call :write_log LightOutOverworldleveldataoverridesetting…… 
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

rem -----------------------函数接口共享-----------------------------
:openPort
    for %%a in (killserver BB CC DD) do (
        if "%1"=="%%a" (
            call :%%a
            echo %clustername%9sss2016/7/30 11:10:28
            call :write_log 退出当前进程……
            exit
        )
    )
    echo jieshu 
goto :eof

rem ----------------------自动从用户客户端复制mod文件到服务端mods文件夹---------------------------
:aotucopymodfile
    call :write_log aotucopymodfile…… 
    %~d0
    cd "%~dp0"
    if exist "%~dp0\bin\dontstarve_steam.exe" (
        echo,您使用的饥荒客户端开的服务器，不需要复制mod文件
        pause 
        goto :eof  
    ) else (                                                rem 正版有默认的文档路径
        if exist "..\Don't Starve Together\bin\dontstarve_steam.exe" (
            echo,正在从steam默认的饥荒客户端路径更新服务器端mods文件夹
            XCOPY  "..\Don't Starve Together\mods\"*  ".\mods\" /s  /e /c /y /d 2>nul
            echo,已经根据文件创建时间复制完所有最新的文件,谢谢使用！！&pause
        ) else (
            echo,您电脑上steam默认路径"..\Don't Starve Together\bin\dontstarve_steam.exe"下没有dontstarve_steam.exe文件！！正在从客户自定义的路径中查找………
            if exist "%dstdir%dontstarve_steam.exe" (
                echo,正在从用户指定的饥荒客户端更新服务器端mods文件夹
                XCOPY  "%dstdir:~0,-4%mods\"*  ".\mods\" /s  /e /c /y /d 2>nul
                echo,已经根据文件创建时间复制完所有最新的文件,谢谢使用！！&pause
            ) else (
                echo,客户端路径设置有误，复制失败，请先按20 设置客户端路径后再执行本命令&pause
            )         
        )
    )
goto :eof

rem ------------------------用户许可与版权声明-------------------------
:licences
    call :write_log  进入用户许可与版权声明模块……   
    rem call :displayui
    cls
    echo,
    echo ┌─────────────用户许可与版权声明───────────────┐
    set "licencesui="
    for /l %%a in (1,1,13) do (
    	set "licencesui=%%licencesui%%a%%"
    	call echo,  !licencesui!
    )
    echo,  最终用户许可协议
    echo,  1，一旦安装、复制或以其他方式使用本软件，即表示同意接受协议各项条件的约束。如果用户不同意协议的条件，请不要使用本软件。
    echo,  2，本软件由流年离伤编写，用户在遵守本协议的情况下可以免费使用。本软件请从流年qq群497398445或流年百度网盘（百度账号ybbhdddf）下载,从其他途径下载的本软件有可能被恶意篡改！！
    echo,  3，本软件之著作权及其它知识产权等相关权利或利益（包括但不限于现已取得或未来可取得之著作权、专利权、商标权、营业秘密等）皆为流年离伤所有。本软件受中华人民共和国版权法及国际版权条约和其他知识产权法及条约的保护。用户仅获得本软件的非排他性使用权。
    echo,  4，未经许可禁止使用本软件进行任何的商业活动
    echo,  5，用户不得，删除本软件及其他副本上一切关于版权的信息。未经授权禁止篡改，挪用本软件源码
    echo,  6，使用本软件由用户自己承担风险，在适用法律允许的最大范围内，流年任何情况下不就因使用或不能使用本软件所发生的特殊的、意外的、直接的、非直接的损失承担赔偿责任。即使已事先被告知该损害发生的可能性
    echo,  7，保留对软件版本进行升级，对功能、内容、结构、界面、运行方式等进行修改或自动更新的权利。
    echo,  8，如果您未遵守本协议的任何一项条款，流年离伤有权立即终止本协议，并保留通过法律手段追究责任。
    echo,  9，流年离伤保留对以上各项条款内容的最终解释权和修改权
    echo,                                           当前时间：%date% %time:~0,-6%
    echo └─────────────────────────────────────┘
    set licenceschoice=0
    set /p licenceschoice=按1并回车同意以上协议否则请关闭本软件：
    if "!licenceschoice!" neq "1" (
        call :write_log 用户不同意用户许可协议，退出程序。 
        call :write_log 退出当前进程……
        exit
    )
    call :write_log 用户同意用户许可协议
goto :eof

:write_log
    if not exist "%log_dir%" (
        echo,[%date% %time%]:--------LiuNianOneKey Log File，version:%LiuNianOneKeyVersion%-------->"%log_dir%"
        echo,[%date% %time%]:如果发现bug请将此日志文件发送到流年qq群：497398445进行反馈>>"%log_dir%"
    ) else (
        echo,[%date% %time%]:%1%2%3%4%5%6%7>>"%log_dir%"
    )
goto :eof

:errerany
set serr=0
set ssuc=0
echo,---------------地下日志文件错误列表---------------
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "error"
echo,---------------地上日志文件错误列表---------------
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "error"
echo,----------------------------------分析结果------------------------------------
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "No auth token could be found">nul &&(
    echo,没有令牌或者令牌失效 （严重错误）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "No auth token could be found">nul &&(
    echo,没有令牌或者令牌失效 （严重错误）
)    
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "SOCKET_PORT_ALREADY_IN_USE">nul &&(
    echo,地下服务器端口占用 （严重错误）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "SOCKET_PORT_ALREADY_IN_USE">nul &&(
    echo,地上服务器端口占用 （严重错误）
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "ID_DST_INITIALIZATION_FAILED">nul &&(
    echo,地下服务器初始化失败 （严重错误）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "ID_DST_INITIALIZATION_FAILED">nul &&(
    echo,地上服务器初始化失败 （严重错误）
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "Server failed to start">nul &&(
    echo,地下服务器启动失败 （严重错误）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "Server failed to start">nul &&(
    echo,地上服务器启动失败 （严重错误）
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "CURL ERROR: Could not resolve host: api.steampowered.com">nul &&(
    echo,地下服务器连接steam mod下载api失败 （小毛病不用管,但是预示着你和steam的链接不好，有可能也链接不上klei的服务器）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "CURL ERROR: Could not resolve host: api.steampowered.com">nul &&(
    echo,地上服务器连接steam mod下载api失败 （小毛病不用管,但是预示着你和steam的链接不好，有可能也链接不上klei的服务器）
) 

type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "because it had an error" &&(
    echo,地下服务器mod中包含错误 （严重错误）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "because it had an error" &&(
    echo,地上服务器mod中包含错误 （严重错误）
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "Could not load mod_config_data">nul &&(
    echo,地下服务器Could not load mod_config_data （小毛病不用管）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "Could not load mod_config_data">nul &&(
    echo,地上服务器Could not load mod_config_data （小毛病不用管）
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "FMOD Error: An invalid object handle was used">nul &&(
    echo,地下服务器FMOD Error: An invalid object handle was used （小毛病不用管）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "FMOD Error: An invalid object handle was used">nul &&(
    echo,地上服务器FMOD Error: An invalid object handle was used （小毛病不用管）
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "Could not find an asset matching">nul &&(
    echo,地下服务器Could not find an asset matching
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "Could not find an asset matching">nul &&(
    echo,地上服务器Could not find an asset matching
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "ERROR: You are trying to enable the mod twice">nul &&(
    echo,地下服务器ERROR: You are trying to enable the mod twice （严重错误，但是有可能不影响开服）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "ERROR: You are trying to enable the mod twice">nul &&(
    echo,地上服务器ERROR: You are trying to enable the mod twice （严重错误，但是有可能不影响开服）
) 

type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "]: MOD ERROR:" &&(
    echo,以上为地下服务器存在的MOD ERROR （严重错误）
    echo,-------------------------------
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "]: MOD ERROR:" &&(
    echo,以上为地上服务器存在的MOD ERROR （严重错误）
    echo,-------------------------------
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i ": stack overflow" &&(
    echo,以上为地下服务器的堆栈溢出错误 （严重错误）
    echo,-------------------------------
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i ": stack overflow" &&(
    echo,以上为地上服务器的堆栈溢出错误 （严重错误）
    echo,-------------------------------
) 

type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "CURL ERROR: Could not resolve host: login.kleientertainment.com">nul &&(
    echo,地下服务器连接Klei服务器失败
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "CURL ERROR: Could not resolve host: login.kleientertainment.com">nul &&(
    echo,地上服务器连接Klei服务器失败
) 

type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "LOADING LUA SUCCESS">nul &&(
    echo,地下服务器LOADING LUA SUCCESS（地下服务器启动成功阶段标志1）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "LOADING LUA SUCCESS">nul &&(
    echo,地上服务器LOADING LUA SUCCESS（地上服务器启动成功阶段标志1）
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "Sim paused">nul &&(
    echo,地下服务器Sim paused（地下服务器启动成功阶段标志3【地下服务器启动完成或曾经启动完成过】）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "Sim paused">nul &&(
    echo,地上服务器Sim paused（地上服务器启动成功阶段标志2）
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i "is now connected">nul &&(
    echo,地上服务器is now connected （地下服务器启动成功阶段标志2）
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i "is now connected">nul &&(
    echo,地下服务器is now connected （地上服务器启动成功阶段标志3【地上服务器启动完成或曾经启动完成过】）
) 
type "%Personal%DoNotStarveTogether\%clustername%\%cavesarchive%\server_log.txt"|find /i ": module '">nul &&(
    echo,地下服务器 模块未找到（严重错误）此错误可能导致服务器秒退，或者客户端一直白屏，例如兔娘的眼镜可以导致此错误
)
type "%Personal%DoNotStarveTogether\%clustername%\%masterarchive%\server_log.txt"|find /i ": module '">nul &&(
    echo,地上服务器 模块未找到（严重错误）此错误可能导致服务器秒退，或者客户端一直白屏,例如兔娘的眼镜可以导致此错误
) 

echo,-------------------------------------------------------------------------------   
pause
goto :eof
rem ----------------------------------------------------------------
rem ------------------更新日志------------------
:UpdateLog
    call :displayui
    echo,┌────────────────版本更新记录────────────────┐
    echo,  --------------v2.1------------------
    echo,  v2.1 因为Bug注释掉了地下worldgenoverride.lua自动生成功能备用
    echo,  --------------v2.2------------------
    echo,  v2.2 修改服务器配置参考缓冲文件路径为./bin
    echo,  --------------v2.3------------------
    echo,  v2.3 增加了帮助文档自动弹出功能
    echo,  --------------v2.4------------------
    echo,  v2.4 增加了备份恢复系统
    echo,  --------------v2.6------------------
    echo,  v2.6 增强的配置管理
    echo,  --------------v2.8------------------
    echo,  v2.8 饥荒steam联机版本我的文档获取采用访问注册表的方式，以适应用户更改了我的文档目录的情况，而由于游侠虚拟环境会使获取的我的文档目录出错，所以采用各系统默认路径作为我的文档路径 增加了模式更改
    echo,  --------------v2.8------------------
    echo,  v2.81优化备份功能
    echo,  --------------v2.9------------------
    echo,  v2.9 优化帮助
    echo,  --------------v3.0------------------
    echo,  v3.0 游侠联机终于可以开服务器的同时连其他的房间了
    echo,  --------------v3.01------------------
    echo,  v3.01 逻辑优化 解决客户机更改了我的文档目录后某些功能不能用的bug
    echo,  --------------v3.02------------------
    echo,  v3.02 修复备份名字显示bug
    echo,  --------------v3.0.3------------------
    echo,  v3.0.3 帮助优化 bug修复 程序规范化
    echo,  --------------v3.1.0------------------
    echo,  v3.1.0 解决161版本modsettings.lua乱码问题
    echo,  修复v3.0.3存在的操作1重置modsetting.lua 的bug 修复其他bug,细微优化
    echo,  解决对旧版本备份系统的向下兼容问题
    echo,  --------------v3.1.1------------------
    echo,  v3.1.1 加入控制台操作菜单，涉及服务器强制退出的时候程序自动向服务器发送存档命令
    echo,  逻辑优化,UI调整
    echo,  --------------v3.1.2------------------
    echo,  v3.1.2 BUG更正，备份系统优化（目前还存在输入数据合法化检测问题）易用性优化
    echo,  逻辑优化
    echo,  --------------v3.1.3------------------
    echo,  v3.1.3 找不到服务器时UI和功能优化，文件名加入版本号
    echo,  --------------v3.1.4------------------
    echo,  v3.1.4 由于3.1.3控制台bug 版本回滚，等待以后解决了再加入控制台功能   完成备份系统输入数据合法化检测问题
    echo,  --------------v3.1.6------------------
    echo,  v3.1.6 加入版权声明，修复备份系统恢复存档不成功BUG 优化文件名显示
    echo,  --------------v3.1.7------------------
    echo,  v3.1.7 修复备份遗留的暂停BUG
    echo,  --------------v3.1.8------------------
    echo,  v3.1.8 修复新版本初始化过程造成UI重叠或无法访问设备BUG
    echo,  --------------v3.2.0------------------
    echo,  v3.2.0 新版饥荒166077以后版本专用
    echo,  --------------v3.2.2------------------
    echo,  v3.2.2 自动生成服务器配置文档，可以选择用户交互模式更改用户名，密码，人数等等，不再依赖客户端存档槽，优化日志文件弹出机制，此版本只适用于166227版本以及以后没有重大更新的版本，不兼容以前版本
    echo,  --------------v3.2.3------------------
    echo,  v3.2.3 重新启用控制台，修复初始建房的时候逻辑bug,修复存档bug
    echo,  --------------v3.2.4------------------
    echo,  v3.2.4 优化控制台用户体验
    echo,  --------------v3.2.5------------------
    echo,  v3.2.5 加入存档槽切换，优化程序结构
    echo,  --------------v3.2.6------------------
    echo,  v3.2.6 支持服务器多开，mod设置文件使用modoverrides.lua，mod设置文件生成转码算法优化
    echo,  --------------v3.2.7------------------
    echo,  v3.2.7 加入单服务器守护进程 ，修复服务器多开存档恢复
    echo,  --------------v3.2.8------------------
    echo,  v3.2.8 加入多服务器守护进程 ，重新加入mod转码选择选项，优化信息显示
    echo,  --------------v3.3.0------------------
    echo,  v3.3.0 优化用户体验，自动适配客户机更改过我的文档的情况
    echo,  管理员配置优化，支持游侠164版
    echo,  --------------v3.3.3------------------
    echo,  v3.3.3 控制台体验优化，适配173098新版本，支持世界配置
    echo,  添加了三箱开局，永夜开局等选项，把更多的参数移到  
    echo,  外部文件LiuNianOneKey.ini里面.
    echo,  --------------v3.3.4------------------
    echo,  v3.3.4 修复游戏类型显示bug(感谢夜月反馈)
    echo,  --------------v3.3.5------------------
    echo,  v3.3.5 修复地下世界配置文件bug，此bug可以            
    echo,         导致开出两个地上世界
    echo,  --------------v3.3.8------------------
    echo,  v3.3.8 适配新版本增加的魔化植物，优化我的文档路径获取
    echo,  --------------v3.3.9------------------
    echo,  v3.3.9 路径自动适配优化，修复v3.3.8不读取配置文件问题
    echo,  更多精彩功能等待你去发现
    echo,└──────────────────────────────────────┘
    pause
goto :eof

::--------------------自定义控制台物品代码-----------------------------
rem 如果以下列表里面没有你想要的物品，你可以在以下任何一个位置加入你想要物品的代码，
rem 格式为物品英文代码加空格加物品中文描述，物品中文描述可以输入多个，比如金子，你可以
rem 输入金子 金块 黄金 这样，你搜索的时候，任意一个关键字都能够搜索到你要找的物品
rem 温馨提示，不仅可以使用中文搜索，也可以使用英文搜索哦，比如你想搜宝石，你知道宝石的
rem 英文名字是gem,那么你就可以使用gem当做关键字进行搜索，搜索结果如下：
rem redgem     （红宝石）rem bluegem    （蓝宝石）rem purplegem  （紫宝石）rem greengem   （绿宝石）
rem orangegem  （橙宝石）rem yellowgem  （黄宝石）rem gemsocket  （宝石看台）























































































































































































































































;1.植物.
cutgrass	 （草）
twigs	 （树枝）
log	 （木头 木 ）
charcoal	 （木炭）
ash	 （灰）
cutreeds	 （采下的芦苇）
lightbulb	 （荧光果）
petals	 （花瓣）
petals_evil	 （噩梦花瓣）
pinecone	 （松果）
foliage	 （叶子）
cutlichen	 （摘下的苔藓）
wormlight	 （虫子果 地龙眼睛）
lureplantbulb	 （食人花种子）
flint	 （燧石 遂石 碎石）
nitre	 （硝石）
redgem 	 （红宝石）
bluegem	 （蓝宝石）
purplegem	 （紫宝石）
greengem	 （绿宝石）
orangegem	 （橙宝石）
yellowgem	 （黄宝石）
rocks	 （岩石 石头 矿石）
goldnugget	 （黄金 金子）
thulecite	 （铥矿石）
thulecite_pieces	 （铥矿碎片）
rope	 （绳子）
boards	 （木板）
cutstone	 （石砖）
papyrus	 （纸）
houndstooth	 （犬牙 狗牙）
pigskin	 （猪皮）
manrabbit_tail	 （兔人尾巴 兔子尾巴）
silk	 （蜘蛛丝）
spidergland	 （蜘蛛腺体）
spidereggsack	 （蜘蛛卵）
beardhair	 （胡子）
beefalowool	 （牛毛）
honeycomb	 （蜂巢）
stinger	 （蜂刺）
walrus_tusk	 （海象牙）
feather_crow	 （乌鸦羽毛 黑羽毛）
feather_robin	 （红雀羽毛 红羽毛）
feather_robin_winter	 （雪雀羽毛 白羽毛）
horn	 （牛角）
tentaclespots	 （触手皮）
trunk_summer	 （夏象鼻 红象鼻）
trunk_winter	 （冬象鼻 蓝象鼻）
slurtleslime	 （蜗牛龟粘液）
slurtle_shellpieces	 （蜗牛龟壳片）
butterflywings	 （蝴蝶翅膀）
mosquitosack	 （蚊子血囊）
slurper_pelt	 （啜食者皮）
minotaurhorn	 （远古守护者角）
deerclops_eyeball	 （巨鹿眼球）
lightninggoathorn	 （闪电羊角 电羊角）
glommerwings	 （格罗门翅膀 格罗姆翅膀）
glommerflower	 （格罗门花 格罗姆花）
glommerfuel	 （格罗门燃料 格罗姆燃料）
livinglog	 （活木头）
nightmarefuel	 （噩梦燃料）
gears	 （齿轮）
transistor （晶体管 电子元件）
marble	 （大理石）
boneshard	 （硬骨头）
ice	 （冰）
poop	 （便便）
guano	 （鸟粪 鸟便便）
dragon_scales	 （蜻蜓鳞片 龙蝇鳞片）
goose_feather	 （鹿鸭羽毛 鸭子羽毛 鹅羽毛）
coontail	 （浣熊尾巴 猫尾巴）
bearger_fur	 （熊皮）



;2.工具武器：

axe	 （斧子 斧头）
goldenaxe	 （黄金斧头 斧子）
lucy	 （露西斧子 露西斧头）
hammer	 （锤子）
pickaxe	 （镐 十字镐）
goldenpickaxe	 （黄金镐）
shovel	 （铲子 铁锨）
goldenshovel	 （黄金铲子 黄金铁锨）
pitchfork	 （草叉）
razor	 （剃刀）
bugnet	 （捕虫网）
fishingrod	 （鱼竿）
multitool_axe_pickaxe	 （多功能工具 远古镐）
cane	 （行走手杖 步行权杖 加速手杖）
trap	 （陷阱）
birdtrap	 （鸟陷阱）
trap_teeth	 （牙齿陷阱 狗牙陷阱）
trap_teeth_maxwell	 （麦斯威尔的牙齿陷阱）
backpack	 （背包）
piggyback	 （猪皮包 猪背包）
krampus_sack	 （坎普斯背包 小偷包）
umbrella	 （雨伞）
grass_umbrella （草伞 花雨伞）
heatrock	 （保温石 暖石）
bedroll_straw	 （草席卷 草铺盖）
bedroll_furry	 （毛皮铺盖）
torch	 （火炬）
lantern	 （提灯）
pumpkin_lantern	 （南瓜灯）
compass	 （指南针）
fertilizer （化肥 肥料桶）
firesuppressor  （灭火器）
sewing_kit	 （缝纫工具包）
spear	 （矛）
boomerang	 （回旋镖）
tentaclespike	 （狼牙棒）
blowdart_pipe	 （吹箭）
blowdart_sleep	 （麻醉吹箭）
blowdart_fire	 （燃烧吹箭）
hambat	 （火腿短棍 肉棍）
nightsword	 （暗影剑 暗夜剑）
batbat	 （蝙蝠棒 蝙蝠刀 吸血刀）
ruins_bat	 （远古短棒）
spear_wathgrithr	 （瓦丝格雷斯矛 女武神矛）
panflute	 （排箫）
onemanband	 （独奏乐器）
gunpowder	 （火药）
beemine	 （蜜蜂地雷）
bell	 （铃）
amulet	 （红色护身符 护符）
blueamulet	 （蓝色护身符 寒冰护符）
purpleamulet	 （紫色护身符 护符）
yellowamulet	 （黄色护身符 懒人护符）
orangeamulet	 （橙色护身符 护符）
greenamulet	 （绿色护身符 建造护符）
nightmare_timepiece	 （铥矿奖章）
icestaff	 （冰魔杖）
firestaff	 （火魔杖）
telestaff	 （传送魔杖）
orangestaff	 （橙色魔杖）
greenstaff	 （绿色魔杖）
yellowstaff	 （黄色魔杖）
diviningrod	 （探矿杖）
book_birds	 （召唤鸟的书）
book_tentacles	 （召唤触手的书）
book_gardening	 （催生植物的书）
book_sleep	 （催眠的书）
book_brimstone	 （召唤闪电的书）
waxwelljournal	 （麦斯威尔的日志）
abigail_flower	 （阿比盖尔之花）
balloons_empty	 （空气球）
balloon	 （气球）
lighter	 （薇洛的打火机）
chester_eyebone	 （切斯特骨眼 小切 狗箱棍）
featherfan	 （羽毛扇）
staff_tornado	 （龙卷风魔杖）
nightstick	 （夜棍）



;3.穿戴：

strawhat	 （草帽）
flowerhat	 （花环）
beefalohat	 （牛毛帽）
featherhat	 （羽毛帽）
footballhat	 （猪皮帽）
tophat	 （高礼帽）
earmuffshat	 （兔耳罩 兔毛帽）
winterhat	 （冬帽）
minerhat	 （矿工帽）
spiderhat	 （蜘蛛帽）
beehat	 （蜂帽）
walrushat	 （海象帽）
slurtlehat	 （蜗牛帽子）
bushhat	 （丛林帽）
ruinshat	 （远古王冠）
rainhat  （防雨帽）
icehat  （冰帽）
watermelonhat	 （西瓜帽）
catcoonhat	 （浣熊帽）
wathgrithrhat	 （瓦丝格雷斯帽 女武神帽子）
armorwood	 （木盔甲 木头盔甲 铠甲）
armorgrass	 （草盔甲 铠甲）
armormarble	 （大理石盔甲 铠甲）
armor_sanity	 （夜魔盔甲 铠甲 暗夜盔甲 ）
armorsnurtleshell	 （蜗牛龟盔甲 蜗牛盔甲 铠甲）
armorruins	 （远古盔甲 铠甲）
sweatervest	 （小巧背心）
trunkvest_summer	 （夏日背心）
trunkvest_winter	 （寒冬背心）
armorslurper	 （饥饿腰带）
raincoat （雨衣）
webberskull	 （韦伯头骨）
molehat	 （鼹鼠帽）
armordragonfly	 （蜻蜓盔甲）
beargervest	 （熊背心）
eyebrellahat	 （眼睛帽 眼球伞）
reflectivevest	 （反射背心）
hawaiianshirt	 （夏威夷衬衫）



;4.建筑：

campfire	 （营火）
firepit	 （石头营火）
coldfire  （冷火）
coldfirepit （石头冷火）
cookpot	 （锅）
icebox	 （冰箱）
winterometer	 （寒冰温度计）
rainometer	 （雨量计 量雨计）
slow_farmplot	 （一般农田）
fast_farmplot	 （高级农田）
siestahut  （午睡小屋）
tent	 （帐篷）
homesign	 （路牌）
birdcage	 （鸟笼）
meatrack	 （晾肉架）
lightning_rod	 （避雷针）
pottedfern	 （盆栽）
nightlight	 （暗夜照明灯）
nightmarelight	 （影灯）
researchlab	 （科学机器）
researchlab2	 （炼金术引擎）
researchlab3	 （阴影操纵者）
researchlab4	 （灵子分解器）
treasurechest	 （木箱）
skullchest	 （骷髅箱）
pandoraschest	 （华丽的箱子）
minotaurchest	 （大华丽的箱子）
wall_hay_item	 （草墙）
wall_wood_item	 （木墙）
wall_stone_item	 （石墙）
wall_ruins_item	 （铥墙）
wall_hay	 （地上的草墙）
wall_wood	 （地上的木墙）
wall_stone	 （地上的石墙）
wall_ruins	 （地上的铥墙）
pighouse	 （猪房）
rabbithole	 （兔房）
mermhouse	 （鱼人房）
resurrectionstatue	 （肉块雕像）
resurrectionstone	 （重生石）
ancient_altar 	 （远古祭坛）
ancient_altar_broken 	 （损坏的远古祭坛）
telebase	 （传送核心）
gemsocket	 （宝石看台）
eyeturret	 （固定在地上的眼睛炮塔）
eyeturret_item	 （可带走的眼睛炮塔）
cave_exit	 （洞穴出口）
turf_woodfloor	 （木地板）
turf_carpetfloor	 （地毯地板）
turf_checkerfloor	 （棋盘地板）
adventure_portal	 （冒险之门）
rock_light	 （火山坑）
gravestone	 （墓碑）
mound	 （坟墓土堆）
skeleton	 （人骨）
houndbone	 （狗骨头）
animal_track	 （动物足迹）
dirtpile	 （可疑的土堆）
pond	 （池塘）
pond_cave	 （洞穴池塘）
pighead	 （猪头棍）
mermhead	 （鱼头棍）
pigtorch	 （猪火炬）
rabbithole	 （兔子洞）
beebox	 （蜂箱）
beehive	 （野生蜂窝）
wasphive	 （杀人蜂窝）
spiderhole	 （洞穴蜘蛛洞）
walrus_camp	 （海象窝）
tallbirdnest	 （高鸟窝）
houndmound	 （猎犬丘）
slurtlehole	 （蜗牛窝）
batcave	 （蝙蝠洞）
monkeybarrel	 （猴子桶）
spiderden	 （蜘蛛巢穴）
molehill	 （鼹鼠丘）
catcoonden	 （浣熊洞）
rock1	 （带硝石的岩石）
rock2	 （带黄金的岩石）
rock_flintless	 （只有石头的岩石）
stalagmite_full	 （大圆洞穴石头）
stalagmite_med	 （中圆洞穴石头）
stalagmite_low	 （小圆洞穴石头）
stalagmite_tall_full	 （大高洞穴石头）
stalagmite_tall_med	 （中高洞穴石头）
stalagmite_tall_low	 （小高洞穴石头）
rock_ice	 （冰石）
ruins_statue_head	 （远古头像）
ruins_statue_mage	 （远古法师雕像）
marblepillar	 （大理石柱子）
marbletree	 （大理石树）
statueharp	 （竖琴雕像）
basalt	 （玄武岩）
basalt_pillar	 （高玄武岩）
insanityrock	 （猪王矮柱石）
sanityrock	 （猪王高柱石）
ruins_chair	 （远古椅子）
ruins_vase	 （远古花瓶）
ruins_table	 （远古桌子）
statuemaxwell	 （麦斯威尔雕像）
statueglommer	 （格罗门雕像）
relic	 （废墟）
ruins_rubble	 （损毁的废墟）
bishop_nightmare	 （损坏的雕像）
rook_nightmare	 （损坏的战车）
knight_nightmare	 （损坏的骑士）
chessjunk1	 （损坏的机械1）
chessjunk2	 （损坏的机械2）
chessjunk3	 （损坏的机械3）
teleportato_ring	 （环状传送机零件）
teleportato_box	 （盒状传送机零件）
teleportato_crank	 （曲柄状传送机零件）
teleportato_potato	 （球状传送机零件）
teleportato_base	 （传送机零件底座）
teleportato_checkmate	 （传送机零件底座）
wormhole	 （虫洞）
wormhole_limited_1	 （被限制的虫洞）
stafflight	 （小星星）
treasurechest_trap	 （箱子陷阱）
icepack	 （冰包）
dragonflychest	 （蜻蜓箱子）



;5.食物：

carrot	 （胡萝卜）
carrot_cooked	 （熟胡萝卜）
berries	 （浆果）
berries_cooked	 （熟浆果）
pumpkin	 （南瓜）
pumpkin_cooked	 （熟南瓜）
dragonfruit	 （火龙果）
dragonfruit_cooked	 （熟火龙果）
pomegranate	 （石榴）
pomegranate_cooked	 （熟石榴）
corn	 （玉米）
corn_cooked	 （熟玉米）
durian	 （榴莲）
durian_cooked	 （熟榴莲）
eggplant	 （茄子）
eggplant_cooked	 （熟茄子）
cave_banana	 （洞穴香蕉）
cave_banana_cooked	 （熟洞穴香蕉）
acorn	 （橡果）
acorn_cooked （熟橡果）
cactus_meat	 （仙人掌肉）
watermelon （西瓜）
red_cap	 （采摘的红蘑菇）
red_cap_cooked	 （煮熟的红蘑菇）
green_cap	 （采摘的绿蘑菇）
green_cap_cooked	 （煮熟的绿蘑菇）
blue_cap_cooked	 （煮熟的蓝蘑菇）
blue_cap	 （采摘的蓝蘑菇）
seeds	 （种子）
seeds_cooked	 （熟种子）
carrot_seeds	 （胡萝卜种子）
pumpkin_seeds	 （南瓜种子）
dragonfruit_seeds	 （火龙果种子）
pomegranate_seeds	 （石榴种子）
corn_seeds	 （玉米种子）
durian_seeds	 （榴莲种子）
eggplant_seeds	 （茄子种子）
smallmeat	 （小肉）
cookedsmallmeat	 （小熟肉）
smallmeat_dried	 （小干肉）
meat	 （大肉）
cookedmeat	 （大熟肉）
meat_dried	 （大干肉）
drumstick	 （鸡腿）
drumstick_cooked	 （熟鸡腿）
monstermeat	 （疯肉）
cookedmonstermeat	 （熟疯肉）
monstermeat_dried	 （干疯肉）
plantmeat	 （食人花肉）
plantmeat_cooked	 （熟食人花肉）
bird_egg	 （鸡蛋）
bird_egg_cooked	 （煮熟的鸡蛋）
rottenegg	 （烂鸡蛋）
tallbirdegg	 （高鸟蛋）
tallbirdegg_cooked	 （熟高鸟蛋）
tallbirdegg_cracked	 （孵化的高鸟蛋）
fish	 （鱼）
fish_cooked	 （熟鱼）
eel	 （鳗鱼）
eel_cooked	 （熟鳗鱼）
froglegs	 （蛙腿）
froglegs_cooked	 （熟蛙腿）
batwing	 （蝙蝠翅膀）
batwing_cooked	 （熟蝙蝠翅膀）
trunk_cooked	 （熟象鼻）
mandrake	 （曼德拉草）
cookedmandrake	 （熟曼特拉草）
honey	 （蜂蜜）
butter	 （黄油）
butterflymuffin	 （奶油松饼）
frogglebunwich	 （青蛙圆面包三明治）
honeyham	 （蜜汁火腿）
dragonpie	 （龙馅饼）
taffy	 （太妃糖）
pumpkincookie	 （南瓜饼）
kabobs	 （肉串）
powcake	 （芝士蛋糕）
mandrakesoup	 （曼德拉草汤）
baconeggs	 （鸡蛋火腿）
bonestew	 （肉汤）
perogies	 （半圆小酥饼）
wetgoop	 （湿腻焦糊）
ratatouille	 （蹩脚的炖菜）
fruitmedley	 （水果拼盘）
fishtacos 	 （玉米饼包炸鱼）
waffles 	 （华夫饼）
turkeydinner	 （火鸡正餐）
fishsticks	 （鱼肉条）
stuffedeggplant	 （香酥茄盒）
honeynuggets	 （甜蜜金砖）
meatballs	 （肉丸 丸子）
jammypreserves	 （果酱蜜饯）
monsterlasagna	 （怪物千层饼）
unagi	 （鳗鱼料理）
bandage	 （蜂蜜绷带）
healingsalve	 （治疗药膏）
spoiled_food	 （腐烂食物）
flowersalad	 （花沙拉）
icecream	 （冰激淋 冰淇淋）
watermelonicle	 （西瓜冰）
trailmix	 （干果）
hotchili	 （咖喱）
guacamole	 （鳄梨酱）
goatmilk	 （羊奶）
perogies   （水饺 饺子）


;6.植物：

flower	 （花）
flower_evil	 （噩梦花）
carrot_planted	 （长在地上的胡萝卜）
grass	 （长在地上的草）
depleted_grass	 （草根）
dug_grass	 （长草簇）
sapling	 （树苗）
dug_sapling	 （可种的树苗）
berrybush	 （果树丛）
dug_berrybush	 （可种的果树丛）
berrybush2	 （果树丛2）
dug_berrybush2	 （可种的果树丛2）
marsh_bush	 （尖刺灌木）
dug_marsh_bush	 （可种的尖刺灌木）
reeds	 （芦苇）
lichen	 （洞穴苔藓）
cave_fern	 （蕨类植物）
evergreen	 （树）
evergreen_sparse	 （无松果的树）
marsh_tree	 （针叶树）
cave_banana_tree	 （洞穴香蕉树）
livingtree	 （活树）
deciduoustree	 （橡树）
deciduoustree_tall	 （高橡树）
deciduoustree_short	 （矮橡树）
red_mushroom	 （红蘑菇）
green_mushroom	 （绿蘑菇）
blue_mushroom	 （蓝蘑菇）
mushtree_tall	 （高蘑菇树）
mushtree_medium	 （中蘑菇树）
mushtree_small	 （小蘑菇树）
flower_cave	 （单朵洞穴花 荧光草）
flower_cave_double	 （双朵洞穴花 荧光草）
flower_cave_triple	 （三朵洞穴花 荧光草）
tumbleweed	 （风滚草）
cactus	 （仙人掌）
cactus_flower	 （仙人掌花）
marsh_plant	 （水塘边小草）
pond_algae	 （水藻）



;7.动物：

rabbit	 （兔子）
perd	 （火鸡）
crow	 （乌鸦）
robin	 （红雀）
robin_winter	 （雪雀）
butterfly	 （蝴蝶）
fireflies	 （萤火虫）
bee	 （蜜蜂）
killerbee	 （杀人蜂）
flies	 （苍蝇）
mosquito	 （蚊子）
frog	 （青蛙）
beefalo	 （牛）
babybeefalo	 （小牛）
lightninggoat	 （闪电羊）
pigman	 （猪人）
pigguard	 （猪守卫）
bunnyman	 （兔人）
merm	 （鱼人）
spider_hider	 （洞穴蜘蛛）
spider_spitter	 （喷射蜘蛛）
spider	 （地面小蜘蛛）
spider_warrior	 （地面绿蜘蛛）
spiderqueen	 （蜘蛛女王）
spider_dropper	 （白蜘蛛）
hound	 （猎狗）
firehound	 （红色猎狗）
icehound	 （冰狗）
tentacle	 （触手）
tentacle_garden	 （巨型触手）
leif	 （树精）
leif_sparse	 （稀有树精）
walrus	 （海象）
little_walrus	 （小海象）
smallbird	 （小高鸟）
teenbird	 （青年高鸟）
tallbird	 （高鸟）
koalefant_summer	 （夏象）
koalefant_winter	 （冬象）
penguin	 （企鹅）
slurtle	 （蜗牛龟）
snurtle	 （黏糊虫）
bat	 （蝙蝠）
rocky	 （龙虾）
monkey	 （猴子）
slurper	 （缀食者）
buzzard	 （秃鹫）
mole	 （鼹鼠）
catcoon	 （浣熊）
knight	 （发条骑士）
bishop	 （主教）
rook	 （战车）
crawlinghorror	 （爬行暗影怪）
terrorbeak	 （尖嘴暗影怪）
deerclops	 （巨鹿）
minotaur	 （远古守护者）
worm	 （远古虫子 地龙）
abigail	 （阿比盖尔）
ghost	 （幽灵）
shadowwaxwell	 （麦斯威尔黑影小人）
krampus	 （坎普斯 小偷）
glommer	 （格罗门 格罗姆）
chester	 （切斯特 小切 狗箱）
lureplant	 （食人花）
eyeplant	 （食人花眼睛）
bigfoot	 （大脚）
pigking	 （猪王）
moose	 （鹿鸭 鹅）
mossling	 （小鸭）
dragonfly	 （蜻蜓）
warg	 （座狼）
bearger	 （熊）
birchnutdrake	 （坚果鸭）
mooseegg	 （鹿鸭蛋 鹅蛋）



;8.角色：

wilson	 （威尔逊）
waxwell	 （麦斯威尔）
wendy	 （温蒂）
woodie	 （伍迪）
wes	 （韦斯）
wickerbottom	 （图书管理员）
willow	 （薇洛）
wolfgang	 （沃尔夫冈）
wx78	 （机器人）
wathgrithr	 （瓦丝格雷斯）
webber	 （韦伯）

;9.杂项
faroz_gls  （兔子眼睛）
scythe    （死神镰刀）
cave_entrance   （洞穴入口）





























