fx_version 'cerulean'
game 'gta5'

description 'QB-SmallResources'
version '1.1.0'

shared_scripts {
	'config.lua',
	'@ox_lib/init.lua'
}
server_script 'server/*.lua'
client_script 'client/*.lua'
ui_page 'ui/index.html'


data_file 'FIVEM_LOVES_YOU_4B38E96CC036038F' 'events.meta'
data_file 'FIVEM_LOVES_YOU_341B23A2F0E0F131' 'popgroups.ymt'

files {
	'events.meta',
	'popgroups.ymt',
	'relationships.dat',
    'ui/index.html',
	'ui/global.css',
	'ui/style.css',
	'ui/main.js',
	'ui/assets/*.*'
}

dependencies {
    'oxmysql',
    'ox_inventory',
    'ox_lib'
}

lua54 'yes'
use_experimental_fxv2_oal 'yes'
