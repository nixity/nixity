fx_version 'bodacious'
game 'gta5'

description 'QB-Anticheat'
version '1.0.0'

shared_scripts { 
	'@qb-core/import.lua',
	'config.lua'
}

client_script 'client/main.lua'
server_script 'server/main.lua'