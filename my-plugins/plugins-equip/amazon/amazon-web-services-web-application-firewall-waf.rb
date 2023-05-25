Plugin.define do
name "amazon-web-services-web-application-firewall-waf"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>'headers', :text=>'x-amz-id-2'},
{:search=>'headers', :text=>'x-amz-request-id'},
{:text=>'<Error><Code>AccessDenied'},
{:text=>'<title>Grey Wizard'},
]
end