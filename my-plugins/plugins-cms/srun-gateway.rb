Plugin.define do
name "srun-gateway"
authors [
"winezero",

]
version "0.1"
matches [
{:search=>"all", :text=>'srun_gateway'},
{:url=>'/css/login.css', :text=>'loginbox .aboutList li'},
]
end