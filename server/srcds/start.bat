@echo off
setlocal
set /p id="Enter your SRCDS token (https://steamcommunity.com/dev/managegameservers): "
start "" "%CSGO_SERVER_ROOT%\srcds" -game csgo -console -usercon +sv_setsteamaccount %id% -net_port_try 1 +game_type 0 +game_mode 0 +mapgroup mg_active +map de_dust2
endlocal
