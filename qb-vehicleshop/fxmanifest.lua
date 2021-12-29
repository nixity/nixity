fx_version 'bodacious'
game 'gta5'

description 'QB-VehicleShop'
version '2.0.0'

shared_scripts { 
	'@qb-core/import.lua',
	'config.lua'
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}
