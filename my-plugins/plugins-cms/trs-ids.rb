Plugin.define do
name "trs-ids"
authors [
"winezero",
]
version "0.2"
matches [
{:regexp=>/TRS\s*\S* TRSIDS/},
{:text=>'<input type="hidden" name="sourceName" value="ids_internal">'},
{:text=>'<script language="JavaScript" src="js/IdSUtil.js"></script>'},
{:url=>'/ids/admin/images/icon_help.gif', :md5=>'9a63a165526a89bfa21a9db7a6d581d4'},
{:url=>'/ids/admin/js/IdSUtil.js', :text=>'TRS IDS'},
{:url=>'/ids/admin/js/TRSBase.js', :md5=>'b8fc2eaaa0a857dd4519c80a7deb325b'},
]
end