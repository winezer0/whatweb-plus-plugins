Plugin.define do
name "chamilo-lms"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<meta name="Generator" content="Chamilo ([\d\.]+)">/},
{:search=>"all", :text=>'chamilo-lms'},
{:search=>"headers[x-powered-by]", :version=>/^Chamilo ([\d\.]+)/},
{:text=>'<!-- end of #main" started at the end of banner.inc.php -->'},
{:text=>'<link href="http://www.chamilo.org/documentation.php" rel="Help" />'},
{:url=>'/main/img/wrong.gif', :md5=>'a51f4619646ad4764f5a980d39a833c2'},
{:url=>'/main/newscorm/js/documentapi.js', :text=>'chamilo'},
{:url=>'/main/wiki/css/ext.png', :md5=>'8ea7563eac773be6a466fd8a9866a411'},
{:version=>/<\/div>(Portal|Plattform|Platform|Plataforma) <a href="http:\/\/www\.chamilo\.org\/?" target="_blank">Chamilo ([^<^\s]+)<\/a> &copy;/, :offset=>1},
{:version=>/<div class="copyright">(Portal|Plattform|Platform|Plataforma) <a href="http:\/\/www\.chamilo\.org\/?" target="_blank">Chamilo ([^<^\s]+)<\/a> &copy;/, :offset=>1 },
]
end