Plugin.define do
name "Apache-Shiro"
authors [
"winezero", 

]
version "0.3"
description "Apache Shiro Framework."
website "http://www.springsource.org/"
matches [
{:search=>"all", :text=>'Apache Shiro'},
{:search=>"headers", :regexp=>/=deleteMe|rememberMe=|remember=|remeberMe=|=delete/},
]
passive do
m=[]
@uri = URI.parse(Addressable::URI.encode(@base_uri.to_s))

getthis = @uri.path + (@uri.query.nil? ? '' : '?' + @uri.query)
$CUSTOM_HEADERS["Cookie"]  = "rememberMe=1;remeberMe=1;remember=1" 
req = ExtendedHTTP::Get.new(getthis, $CUSTOM_HEADERS)
if $USE_PROXY == true
http = ExtendedHTTP::Proxy($PROXY_HOST, $PROXY_PORT, $PROXY_USER, $PROXY_PASS).new(@uri.host, @uri.port)
else
http = ExtendedHTTP.new(@uri.host, @uri.port)
end

if @uri.class == URI::HTTPS
http.use_ssl = true
OpenSSL::SSL::SSLContext::DEFAULT_PARAMS[:ciphers] = 'TLSv1:TLSv1.1:TLSv1.2:SSLv3:SSLv2'
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
end

begin
res = http.request(req)
@headers = {}
res.each_header do |x, y| 
newx, newy = x.dup, y.dup
@headers[ Helper::convert_to_utf8(newx) ] = Helper::convert_to_utf8(newy)
end
if @headers.to_s =~ /rememberMe=|remember=|remeberMe=|=deleteMe|=delete/ 
m << {:name=>"shiro"}
end
rescue StandardError => err
error("Plugins Apache-Shiro - ERROR Opening: #{@uri} - #{err} \n\n")

end
m
end
end
