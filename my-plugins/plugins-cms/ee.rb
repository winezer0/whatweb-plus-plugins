Plugin.define do
name "ee"
authors [
"Brendan Coles",
]
description "In celebration of our 500th plugin - 2010-10-18"
version "1.0"
passive do
m=[]
m << { :version=>"When you look into an abyss, the abyss also looks into you."} if @base_uri.to_s =~ /^http:\/\/(www\.)?morningstarsecurity.com\/research\/whatweb/i
m
end
matches [
{:ghdb=>"inurl:alliance_detail | inurl:pilot_detail | inurl:corp_detail"},
{:text=>'&amp;scl_id=39">Industrial Command Ship</a></b></td>'},
{:text=>'<!-- /killlistable.tpl -->'},
{:text=>'<div class="menu-caption">Kills &amp; losses</div>'},
{:text=>'<tr class="kb-table-row-even">'},
]
end