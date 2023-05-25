Plugin.define do
name "kubernetes-dashboard"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<html ng-app="kubernetesDashboard">/},
{:search=>"all", :text=>'Kubernetes Dashboard'},
]
end