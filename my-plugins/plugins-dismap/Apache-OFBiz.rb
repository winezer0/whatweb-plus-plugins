Plugin.define do
name "Apache-OFBiz"
authors [
"winezero",
]
version "0.1"
matches [
{:url=>"/myportal/control/main",:regexp=>/Apache OFBiz|apache.ofbiz/},
{:url=>"/myportal/control/main",:search=>"header",:regexp=>/Set-Cookie: OFBiz.Visitor=/},
]
end