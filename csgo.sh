#!/bin/bash

# update server's data
./steamcmd.sh +login anonymous +force_install_dir /srv/csgo +app_update 740 +exit

# start the server
/srv/csgo/srcds_run -game csgo -console -autoupdate -usercon +fps_max 144 -tickrate 128 -port $PORT +hostname $HOSTNAME +game_type $GAME_TYPE +game_mode $GAME_MODE +sv_setsteamaccount $STEAM_TOKEN -authkey $AUTHKEY -net_port_try 1 +mapgroup mg_armsrace +map ar_shoots +rcon_password lkigenio +sv_password lkigenio

exit 0
