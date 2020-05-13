call ..\..\..\load_env.bat
del %CSGO_SERVER_ROOT%\csgo\addons\sourcemod\plugins\sm_parachute.smx
del %CSGO_SERVER_ROOT%\csgo\addons\sourcemod\scripting\sm_parachute.sp
del %CSGO_SERVER_ROOT%\csgo\addons\sourcemod\translations\sm_parachute.phrases.txt
rmdir %CSGO_SERVER_ROOT%\csgo\materials\models\parachute /s /q
rmdir %CSGO_SERVER_ROOT%\csgo\models\parachute /s /q
