Plugin.define do
name "Landray-OA" 
authors [
    "winezero",
]
version "0.1"
matches [
{:regexp=>/蓝凌软件 版权所有|url : Com_Parameter.ResPath+"jsp\/clearSsoCookie.jsp/},
{:search=>"header",:regexp=>/Set-Cookie: isopen=close/},
{:url=>"/favicon.ico",:allhash=>"302464c3f6207d57240649926cfc7bd4"},
]
end