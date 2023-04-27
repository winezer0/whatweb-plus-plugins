Plugin.define do
name "Sony-LocationFree-TV"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The LocationFree TV is an advanced, portable TV that allows you to watch TV or video, browse the Web, check your e-mail and manage your digital photos whether you are at home or not. When you are at home, you can carry the Monitor around the house and use it anywhere within its wireless transmission range. When you are away from home, you can watch the same TV programs and videos by accessing your Base Station via the Internet. By installing LocationFree Player on your computer, and registering the computer with the Base Station, you can use the LocationFree NetAV function on your computer as well."
website "http://store.sony.com/p/LF-X1/en/p/LFX1"
passive do
m=[]
if @headers["server"] =~ /^SONY LocationFreeTV\/([^\s]+) HTTPD\/([^\s]+)$/
m << { :version=>"#{$2}" }
m << { :model=>"#{$1}" }
end
m
end
end
