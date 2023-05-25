Plugin.define do
name "fastjson"
authors [
"winezero",
]
version "0.1"
description "Fastjson."
website "http://www.springsource.org/"
matches [
{:search=>"all", :regexp=>/nested exception is com.alibaba.fastjson.JSONException: unclosed string/},
]
passive do
m=[]
@uri = URI.parse(Addressable::URI.encode(@base_uri.to_s))
getthis = @uri.path + (@uri.query.nil? ? '' : '?' + @uri.query)
$CUSTOM_HEADERS["Content-Type"]  = "application/json"
req = ExtendedHTTP::Post.new(getthis, $CUSTOM_HEADERS)
req.body = "{\"a\":\""
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
@body = Helper::convert_to_utf8(res.body)
if @body.to_s =~ /nested exception is com.alibaba.fastjson.JSONException: unclosed string/
m << {:name=>"Fastjson"}
end
rescue StandardError => err
error("ERROR Opening: #{@uri} - #{err} \n")
end
m
end
end