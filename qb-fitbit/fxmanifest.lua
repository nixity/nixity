fx_version 'bodacious'
game 'gta5'

description 'QB-FitBit'
version '1.0.0'

ui_page 'html/index.html'

shared_script '@qb-core/import.lua'
server_script 'server/main.lua'
client_script 'client/main.lua'

files {
	'html/*'
}