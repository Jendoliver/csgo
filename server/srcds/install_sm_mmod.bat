call ..\load_env.bat
setlocal
FOR /F "tokens=* USEBACKQ" %%F IN (`curl https://mms.alliedmods.net/mmsdrop/1.11/mmsource-latest-windows`) DO (
SET metamod_latest=%%F
)
FOR /F "tokens=* USEBACKQ" %%F IN (`curl https://sm.alliedmods.net/smdrop/1.11/sourcemod-latest-windows`) DO (
SET sourcemod_latest=%%F
)
curl -o metamod.zip https://mms.alliedmods.net/mmsdrop/1.11/%metamod_latest% && powershell.exe -NoP -NonI -Command "Expand-Archive '.\metamod.zip' '%CSGO_SERVER_ROOT%\csgo\'"
curl -o sourcemod.zip https://sm.alliedmods.net/smdrop/1.11/%sourcemod_latest% && powershell.exe -NoP -NonI -Command "Expand-Archive '.\sourcemod.zip' '%CSGO_SERVER_ROOT%\csgo\'"
del metamod.zip
del sourcemod.zip
endlocal
