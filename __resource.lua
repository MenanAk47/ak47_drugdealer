resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
name "ak47_drugdealer"
author "MenanAk47 (MenanAk47#3129)"
description 'AK47 DRUG DEALER'
version '1.0'

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/phone.lua',
	'client/editable.lua',
	'client/loader.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'server/loader.lua'
}
