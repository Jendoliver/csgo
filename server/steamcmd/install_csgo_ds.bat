call ..\load_env.bat
steamcmd +login anonymous +force_install_dir %CSGO_SERVER_ROOT% +app_update 740 +validate +quit
echo rcon_password "yourrconpassword" > %CSGO_SERVER_ROOT%\csgo\cfg\rcon_pass.cfg
echo sv_password "" > %CSGO_SERVER_ROOT%\csgo\cfg\sv_pass.cfg
