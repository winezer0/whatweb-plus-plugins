Plugin.define do
name "MinIO"
authors [
"winezero",
]
version "0.1"
matches [
{:regexp=>/<img src="\/minio\/logo.svg" alt="">|<title>Minio Browser<\/title>/},
{:search=>"header",:regexp=>/Server: MinIO.*/},
{:url=>"/favicon.ico",:allhash=>"613d1c501e586902bd510ab8b8de7cfa"},
]
end