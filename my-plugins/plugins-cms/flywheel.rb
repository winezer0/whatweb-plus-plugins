Plugin.define do
name "flywheel"
authors [
"winezero",
]
version "0.1"
matches [
{:offset=>1, :regexp=>/^Flywheel(?:.([\d.]+))?/, :search=>'headers[x-fw-server]'},
{:search=>"all", :text=>'Flywheel'},
]
end