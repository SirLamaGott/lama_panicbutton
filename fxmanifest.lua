fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

author 'SirLamaGott'
description 'Lama - Panic & Position Button'
version '0.1.0'

shared_script '@es_extended/imports.lua'
shared_script 'config.lua'
shared_script 'locales/*.lua'
client_scripts {
	'client/main.lua'
}

server_scripts {
	'server/main.lua'
}
 
escrow_ignore {
  'server/*.lua',
  'locales/*.lua'
  'client/*.lua',
  'config.lua'
} 