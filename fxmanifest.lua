fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

author 'SirLamaGott'
description 'Lama - Panic & Position Button'
version '1.2.0'

shared_script '@es_extended/imports.lua' 
shared_script '@es_extended/locale.lua'

shared_scripts { 
  'config.lua',
  'locales/*.lua'
}

client_scripts {
	'client/main.lua'
}

server_scripts {
	'server/main.lua'
}

dependency 'es_extended' 
escrow_ignore {
  'server/*.lua',
  'locales/*.lua',
  'client/*.lua',
  'config.lua'
} 