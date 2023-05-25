Plugin.define do
name "gitlab-ci"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/GitLab Continuous Integration/, :search=>'body'},
{:search=>"all", :text=>'GitLab CI'},
]
end