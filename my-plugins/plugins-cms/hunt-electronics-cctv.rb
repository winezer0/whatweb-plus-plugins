Plugin.define do
name "Hunt-Electronics-CCTV"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Hunt Electronics is staffed with highly trained, experienced, and creative individuals specializing in the development and manufacturing of high performance CCTV solutions."
website "http://www.huntcctv.com/"
matches [
{:text=>'                        <!--<p>If ActiveX control can\'t be loaded, please download and install Webviewer ActiveX Control.<br>&gt;&gt; <a href="./WebviewerInstaller.exe">Download Webviewer Installer v.1.0.2.4</a>-->', :version=>"HVRM-T1600L"},
{:text=>'                        <!--<p>If ActiveX control can\'t be loaded, please download and install Webviewer ActiveX Control.<br>&gt;&gt; <a href="./WebviewerInstaller.exe">Download Webviewer Installer v.1.0.2.5</a>-->', :version=>"HVRM-H1600L / HVRM-T1600M"},
{:text=>'                        <!--<p>If ActiveX control can\'t be loaded, please download and install Webviewer ActiveX Control.<br>&gt;&gt; <a href="./WebviewerInstaller.exe">Download Webviewer Installer v.1.0.3.0</a>-->', :version=>"HNVS-04"},
{:text=>'   //login.action = "./webviewer.php" ;'},
{:text=>'<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" OnLoad="preload_img(false, \'images/btn_login_red.gif\', \'images/btn_reset_red.gif\'); placeFocus();na_preload_img(false, \'img/login_btn2.gif\', \'img/login_btn4.gif\'); LoadSavedID();">'},
]
end
