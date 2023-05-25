Plugin.define do
name "tp-link-router"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'TP-LINK Router'},
{:text=>'Operating System Error Nr:3997698:  <P><HR><H2>File not found</H2>'},
{:text=>'Operating System Error Nr:3997698: HTM <P><HR><H2>Access denied</H2>'},
]
end