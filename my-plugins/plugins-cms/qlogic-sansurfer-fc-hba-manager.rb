Plugin.define do
name "qlogic-sansurfer-fc-hba-manager"
authors [
"Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "QLogic SANsurfer Fibre Channel (FC) Host Bus Adapter (HBA) management utility web interface (disabled by default). Remote command and control of QLogic Host Bus Adapters - Homepage:http://h20000.www2.hp.com/bizsupport/TechSupport/SoftwareDescription.jsp?lang=en&cc=us&prodTypeId=12169&prodSeriesId=1809835&prodNameId=1809832&swEnvOID=1113&swLang=8&mode=2&taskId=135&swItem=co-80231-1"
matches [
{:regexp=>/<SCRIPT LANGUAGE="Javascript">\s+<!--\s+insertLink\("sansurfer\.jnlp",\s+"Start SANsurfer FC HBA Manager"\);/},
{:text=>'<!-- Developers should be aware that for Gecko-based browsers (NS 6.x)'},
{:text=>'<!---- This initializes the navigator.family object ---->'},
]
end
