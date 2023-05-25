Plugin.define do
name "ConfTool"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ConfTool is a Web-based event management system that was developed to support the organization of conferences, workshops, congresses and seminars. - Hompage: http://www.conftool.net/"
dorks [
'"ConfTool Conference Administration" "User name or e-mail"'
]
matches [
{:search=>"all", :text=>'conftool'},
{:string=>"Pro", :version=>/<td align="right" nowrap><a href="http:\/\/www\.conftool\.net\/"><span class="[^"]+">Conference Software - <\/span><span class="[^"]+">[\s]+(VSIS )?ConfTool( Pro)? ([^<^\s]+)<\/span><\/a><BR>/, :offset=>2},
{:string=>"Standard", :text=>'<td class="td_dlg_input" width=67% align=left><input type=text name=\'ctusername\' tabindex=2 size=35></td></tr>'},
{:string=>"Standard", :version=>/<td align="right" nowrap><span class="normal8"><a href='http:\/\/www\.conftool\.net'>(Conference |Web-based |Event |Abstract )?(Management|Conference) (Software|System) - VSIS <b>ConfTool<\/b><\/a> Standard ([^<^\s]+)<\/span><BR>/, :offset=>3},
{:text=>'<h2 align=center>ConfTool Conference Administration</h2>'},
]
end
