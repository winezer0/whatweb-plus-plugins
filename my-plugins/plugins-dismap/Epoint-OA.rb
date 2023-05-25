Plugin.define do
name "Epoint-OA"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/SourceControl="EpointCommon" ><\/script>|<script>window.location.href='..\/netoffice6';<\/script>/},
]
end