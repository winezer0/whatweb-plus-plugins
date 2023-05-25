Plugin.define do
name "sagem-router"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Sagem Router - Distributed by Wanadoo, Maroc Telecom, Sky and others."
matches [
{:search=>"headers[www-authenticate]", :regexp=>/^Basic realm="?Sagem"?$/},
]
end