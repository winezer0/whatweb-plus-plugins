Plugin.define do
name "JFrog"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/src=\/ui\/img\/jfrog|<meta http-equiv="refresh" content="0;URL=\/artifactory">|Artifactory is a binaries repository manager/},
{:search=>"header",:regexp=>/Location: \/artifactory\//},
]
end