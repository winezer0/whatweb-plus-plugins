Plugin.define do
name "Bitweaver"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'<a id="poweredby" class="external" href="http://www.bitweaver.org">Powered by bitweaver</a>'},
{:text=>'<meta name="generator" content="bitweaver - http://www.bitweaver.org" />'},
{:url=>"/favicon.ico",:allhash=>"1a9a1ec2b8817a2f951c9f1793c9bc54"},
]
end