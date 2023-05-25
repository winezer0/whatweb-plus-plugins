Plugin.define do
name "先健在线培训系统" 
authors [
    "winezero",
]
version "0.1"
matches [
{:text=>'window.location.href = "Frame/Login.aspx?url='},
{:allhash=>"faa2606046b10554f2e85b4ad9c21b06"},
{:url=>"/Frame/Login.aspx",:text=>"/Training/TeacherOperate/Teacher_Index.aspx"},
{:url=>"/Frame/Login.aspx",:text=>"/Training/TeachingMent/Teaching_management.aspx"},
{:url=>"/Frame/Login.aspx",:text=>"北京新启科技"},
{:url=>"/Frame/Login.aspx",:text=>"http://www.newstartsoft.com"},
{:url=>"/favicon.ico",:allhash=>"2fa3a0bd097ffeaad3c6a4d76e440fb9"},
{:url=>"/Template/default/images/login_left.png",:allhash=>"a966cb8125f11bd3d21d83b2a26c03f2"},
{:url=>"/Template/default/images/beta.png",:allhash=>"7b6f82688c1463e474ed0b2d81cf249e"},

] 
end