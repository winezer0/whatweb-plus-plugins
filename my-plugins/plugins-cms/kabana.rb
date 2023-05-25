Plugin.define do
name "Kibana"
authors ["winezer0"]
version "0.1"
description "Kibana is an open source data visualization platform that allows you to interact with your data - Homepage: https://www.elastic.co/products/kibana"
matches [
{ :search=>"headers[x-app-name]", :regexp=>/^kibana$/ },
{ :text=>'<body kibana ng-class' },
{ :version=>/<script>\s+window\.KIBANA_VERSION='([\d\.]+)';\s+window\.KIBANA_BUILD_NUM='[\d]+';/ },
]
end