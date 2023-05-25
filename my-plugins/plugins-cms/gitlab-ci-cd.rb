Plugin.define do
name "gitlab-ci-cd"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/GitLab CI.CD is a tool built into GitLab for software development through continuous methodologies./, :search=>'body'},
]
end