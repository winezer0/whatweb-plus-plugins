Plugin.define do
name "jetty-web-server"
authors [
"Brendan Coles <bcoles@gmail.com>",
]
version "0.1"
description "Jetty is a pure Java application server. Jetty provides an HTTP server, HTTP client, and javax.servlet container."
website "http://jetty.codehaus.org/jetty/"
dorks [
'intitle:"JSP snoop page" "WebApp JSP Snoop page"'
]
matches [
{:search=>"header",:regexp=>/Server: Jetty.*/},
{:search=>"headers", :text=>'Server: Jetty'},
{:search=>"headers[server]", :version=>/^Jetty(\/|\()([^\s^\)]+)/, :offset=>1},
{:search=>"headers[servlet-engine]", :module=>/^(Jetty\/[^\s]+)/},
{:search=>'headers[server]',:offset=>1, :regexp=>/Jetty(?:\(([\d\.]*\d+))?/},
{:text=>'<p><i><small><a href="http://jetty.mortbay.org">Powered by Jetty://</a></small></i></p>'},
{:url=>"/", :text=>'<A HREF="http://jetty.mortbay.org"><IMG SRC="jetty_banner.gif"></A>'},
{:url=>"/favicon.ico",:allhash=>"ed7d5c39c69262f4ba95418d4f909b10"},
]
end