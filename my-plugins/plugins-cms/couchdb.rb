Plugin.define do
name "couchdb"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"headers", :text=>'CouchDB'},
{:search=>"headers", :text=>'Erlang OTP'},
{:search=>'headers[server]', :regexp=>/CouchDB.([\d.]+)/,:offset=>1},
{:url=>"/favicon.ico",:allhash=>"2ab2aae806e8393b70970b2eaace82e0"},
]
end