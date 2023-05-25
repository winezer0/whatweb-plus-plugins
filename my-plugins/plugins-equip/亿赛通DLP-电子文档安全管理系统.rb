Plugin.define do
name "亿赛通DLP-电子文档安全管理系统"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all" , :text=>'CDGServer3'},
{:text=>"/images/zh/welcome_button_config.jpg"},
{:text=>"/images/zh/welcome_button_help.jpg"},
{:text=>"/images/zh/welcome_button_login.jpg"},
{:text=>'/CDGServer3/SysConfig.jsp'},
{:text=>'/CDGServer3/help/getEditionInfo.jsp'},
{:text=>'/CDGServer3/index.jsp'},
{:text=>'<title>电子文档安全管理系统</title>'},
{:url=>"/images/zh/welcome_button_config.jpg", :allhash=>"mmh3:-2085496367-md5:469006c1f29e390b0dfd538ad4a0b9a2"},
{:url=>"/images/zh/welcome_button_help.jpg", :allhash=>"mmh3:292109211-md5:51881526d0f3c4b93b8e5dc3356328d7"},
{:url=>"/images/zh/welcome_button_login.jpg", :allhash=>"mmh3:-1861420340-md5:5be3d6df8aa5f81aadad94af2e148698"},
]
end