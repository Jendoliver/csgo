call ..\load_env.bat
curl -o parachute.zip https://forums.alliedmods.net/attachment.php?attachmentid=81519^&d=1296517627 && powershell.exe -NoP -NonI -Command "Expand-Archive '.\parachute.zip' '%CSGO_SERVER_ROOT%\csgo\'"
del parachute.zip
