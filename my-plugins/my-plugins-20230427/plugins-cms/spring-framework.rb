Plugin.define do
name "Spring-Framework"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Spring Framework is an open source application framework for the Java platform."
website "http://www.springsource.org/"
matches [
{:search=>"headers[set-cookie]", :text=>'org.springframework.web.servlet.i18n.CookieLocaleResolver.LOCALE='},
]
end
