Plugin.define do
name "easycms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'EasyCMS'},
{:text=>'/index.php?s=/index/article/checkuser.html'},
{:url=>"/App/Modules/Admin/Model/UserRelationModel.class.php",:text=>'\App\Modules\Admin\Model\UserRelationModel.class.php'},
]
end