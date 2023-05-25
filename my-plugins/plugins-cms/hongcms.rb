Plugin.define do
name "hongcms"
authors [
"winezero",
]
version "0.1"
matches [
{:search=>"all", :text=>'HongCMS'},
{:text=>'/public/templates/Default/images/'},
{:text=>'vP2uJFhaBC3Tlang'},
{:url=>"/admin/controllers/editor_file_manager.php"},
{:url=>"/includes/index.html",:text=>'Directory access is forbidden'},
]
end