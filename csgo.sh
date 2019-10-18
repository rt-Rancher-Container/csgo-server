./steamcmd.sh +login anonymous +force_install_dir /srv/csgo +app_update 740 validate +quit

csgo -console -usercon +game_type $GAME_TYPE +game_mode $GAME_MODE +sv_setsteamaccount $STEAM_TOKEN -net_port_try 1 +mapgroup mg_armsrace +map ar_shoots
