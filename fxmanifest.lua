fx_version 'cerulean'
game 'gta5'

author 'oosayeroo'   
description 'qb-luchettijob by oosayeroo'
version '1.0.0'

shared_scripts {
    'config.lua'
}

client_scripts {
	'client/main.lua',
	'client/garage.lua',
	'client/menus.lua',
	'client/deliveries.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua'
}
