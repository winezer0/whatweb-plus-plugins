Plugin.define do
name "MySource-Matrix"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MySource Matrix is a feature-rich, enterprise-class Supported Open Source CMS (Content Management System)."
website "http://www.squiz.co.uk/mysource-matrix-open-source-cms"
dorks [
'"powered by Mysource matrix"'
]
matches [
{:text=>'  MySource, MySource Matrix and Squiz.net are registered Trademarks of Squiz Pty Ltd'},
{:text=>'<p class="right">Powered by <a href="http://www.squiz.co.uk/mysource_matrix" target="_blank">MySource Matrix</a></p>'},
{:text=>'<p>Powered By MySource Matrix - A Squiz.net  Initiative</p>'},
{:text=>'class="squiz">Powered by MySource Matrix - a Squiz.net initiative</a> </div>  </div>'},
]
passive do
m=[]
if @body =~ /Powered by <a href="http:\/\/www.squiz.[^>]+>/
if @body =~ /MySource Matrix ([\d\.]+)/
version=@body.scan(/MySource Matrix ([\d\.]+)/)[0][0]
m  << {:version=>version}
end
end
if @body =~ /	Running Squiz MySource v([\d\.]+) \(Matrix\) - http:\/\/matrix.squiz.net\//
version=@body.scan(/	Running Squiz MySource v([\d\.]+) \(Matrix\) - http:\/\/matrix.squiz.net\//)[0][0]
m << {:version=>version}
end
m
end
end
