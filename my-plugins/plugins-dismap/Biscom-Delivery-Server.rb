Plugin.define do
name "Biscom-Delivery-Server"
authors [
"winezero",
]
version "0.1"
matches [
{:text=>'<link rel="ICON" href="/bds/images/icons/favicon.ico" />'},
{:text=>'<link rel="StyleSheet" href="/bds/stylesheets/fds.css" type="text/css">'},
{:text=>'<script src="/bds/includes/fdsJavascript.do" type="text/javascript"></script>'},
{:url=>"/bds/images/icons/favicon.ico", :md5=>"eb05f77bf80d66f0db6b1f682ff08bee"},
{:url=>"/favicon.ico",:allhash=>"eb05f77bf80d66f0db6b1f682ff08bee"},
]
end