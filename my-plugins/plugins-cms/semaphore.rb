Plugin.define do
name "Semaphore"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Bridging the gap between layman's terms and official language to provide users with more accurate search results."
website "http://www.smartlogic.com/poweredbysemaphore"
dorks [
'"Powered by Semaphore" inurl:semaphoreserver.exe filetype:exe'
]
matches [
{:ghdb=>'"Powered by Semaphore" inurl:semaphoreserver.exe filetype:exe'},
{:regexp=>/<a href="http:\/\/www.smartlogic.com\/poweredbysemaphore"><img src="[^"^>]+\/semaphore\/semaphore_small\.gif"[^>]+alt="Powered by Semaphore" title="Powered by Semaphore" \/><\/a>/},
{:text=>"<html><head><title>Semaphore server Error</title></head><body>"},
{:text=>'<!-- Display the "Powered by Semaphore" logo -->'},
]
end
