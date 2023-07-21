Plugin.define do
name "goahead-webs" 
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"headers", :text=>'GoAhead'},
{:text=>"response_code_begin ERIC_RESPONSE_OK response_code_end response_msg_begin  response_msg_end"},
]
end