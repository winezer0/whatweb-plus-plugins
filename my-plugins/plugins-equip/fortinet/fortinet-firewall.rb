Plugin.define do
name "fortinet-firewall"
authors [
"winezero",
]
version "0.1"
matches [
{:certainty=>75, :url=>"/", :md5=>"c647dc149f55829659640751e9184f8c"},
{:certainty=>75, :url=>"/index.html", :md5=>"c647dc149f55829659640751e9184f8c"},
{:search=>"all", :text=>'Fortinet-Firewall'},
{:text=>'Firewall Notification'},
{:url=>"/login", :certainty=>75, :regexp=>/str_table\.token_needed = "Please input your token code.";[\s]+str_table\.ncode_needed = "FortiToken clock drift detected\. Please input the next code and continue\.";[\s]+str_table\.mail_token_msg = "An email message containing a Token Code will be sent to";/},
{:url=>'login', :name=>'Login page MD5 hash', :md5=>'8bc0d101e3a25c98a9cbcf18240bd271'},
{:url=>'login.js?nocache='+rand(36**8).to_s(36), :name=>'Login.js Copyright Text',:regex=>/login.js(\n|\r\n)Copyright Fortinet, Inc\.(\n|\r\n)All rights reserved\./},
{:url=>'login.js?nocache='+rand(36**8).to_s(36), :name=>'Login.js MD5 Hash', :md5=>'6032999e08978b317d8382249866232a'},
{:url=>'success', :name=>'Success Page MD5', :md5=>'1451298ccf3a24e342b20e6684cbb0dc'},
]
end