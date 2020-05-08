# csgo
Config scripts for both personal gameplay and dedicated server creation

## `cfg`
Contains personal gameplay scripts, which might also be used in some server configurations at some point.

## `server` (WIP)
Contains setup scripts to roll up a CSGO Dedicated Server easily.

### Setting up a server
#### Creating an `.env` file
Most server scripts need some sort of secrets to be set in order to operate automatically.
They will, however, prompt for manual input if these are not set, effectively breaking the automation.

For it to work, you must create a file named `.env` under the `server` folder and 
set the following variables:

```
CSGO_SERVER_ROOT=C:\Path\To\Desired\Root
SRCDS_TOKEN=Asd3728FaKeToken
RCON_PASSWORD=jamesbond007
```

If you are paranoid about storing secrets in plain text, delete the file after running all the 
scripts you wanted to run.

#### Installation
Run the `server/steamcmd/install_csgo_ds.bat` script.
This will create two scripts named `rcon_pass.cfg` and `sv_pass.cfg` in `%CSGO_SERVER_ROOT%\csgo\cfg`.
Fill your passwords there, as the `autoexec.cfg` will `exec` those files in order to set them.

#### Updating
Run the `server/steamcmd/update_csgo_ds.bat` script.
If you want to do it periodically, create a scheduled task in your OS.

### Starting the server
Run the `server/srcds/start.bat` script.
