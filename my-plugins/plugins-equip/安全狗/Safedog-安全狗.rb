Plugin.define do
name "Safedog-安全狗"
authors [
"Brendan Coles <bcoles@gmail.com>"
]
version '0.2'
description 'Safedog WAF'
website ''
matches [
{:name=>'Server Header Version Detection', :version=>%r{^Safedog/([\d\.]+)}, :search=>'headers[server]'},
{:name=>'Server Header', :regexp=>/^Safedog/, :search=>'headers[server]'},
{:name=>'X-Powered-By Header', :regexp=>%r{^WAF/2\.0}, :search=>'headers[x-powered-by]'},
{:name=>'safedog-flow-item Cookie', :text=>'safedog-flow-item=', :search=>'headers[set-cookie]'},
{:text=>'404.safedog.cn/sitedog_stat.html'},
{:text=>'safedog.cn/images/safedogsite/broswer_logo.jpg'},
]
end