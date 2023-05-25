Plugin.define do
name "Content-Language"
authors [
"Peter van der Laan",
]
version "0.1"
description "Detect the content-language setting from the HTTP header."
passive do
m=[]
unless @headers["content-language"].nil? or @headers["content-language"].empty?
m << { :string=>@headers["content-language"].to_s }
end
m
end
matches [
{:regexp=>/<!--[^>]+powered by (?:TYPOlight|Contao)[^>]*-->/},
{:regexp=>/<link[^>]+(?:typolight|contao)\.css/},
{:search=>'body', :regexp=>/^Contao Open Source CMS$/},
{:text=>'<!-- indexer::continue -->'},
{:text=>'This website is powered by Contao Open Source CMS :: Licensed under GNU/LGPL'},
{:text=>'system/contao.css'},
]
end