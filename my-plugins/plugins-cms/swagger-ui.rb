Plugin.define do
name "swagger-ui"
authors [
"winezero",
]
version "0.2"
matches [
{:regexp=>/swagger-ui[-\w]+.(css|js)/},
{:text=>'<div id="swagger-ui"></div>'},
{:text=>'<title>Swagger UI</title>'},
{:text=>'Workaround for https://github.com/swagger-api'},
]
end