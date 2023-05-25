Plugin.define do
name "kesioncms"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>"/ks_inc/kesion.common.js"},
{:text=>"KesionJS"},
{:text=>"KesionPopup"},
{:text=>"powered by <a href=\"http://www.kesion.com\" target=\"_blank\">",:version=>/KesionCMS ([\d\.]+)/m},
{:text=>'/ks_inc/common.js'},
{:text=>'publish by KesionCMS'},
{:url=>"/KS_Inc/ajax.js",:version=>/KesionCMS V([\d\.]+)/m},
{:version=>/Powered By KesionICMS V([\d\.]+)/m},
]
end