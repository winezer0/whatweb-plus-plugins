Plugin.define do
name "vmware-esxi-server"
authors [
"Brendan Coles <bcoles@gmail.com>",
"Andrew Horton",
]
version "0.2"
description "VMware ESXi Server is virtual infrastructure software for partitioning, consolidating and managing systems in mission-critical environments. VMware ESXi Server provides a highly scalable virtual machine platform with advanced resource management capabilities, which can be managed by vSphere."
website "http://www.vmware.com/products/vsphere-hypervisor/overview.html"
matches [
{:text=>'<h1><script type="text/javascript">document.write(ID_EESXServer3);</script></h1>'},
{:text=>'<meta name="description" content="VMware ESXi Server is virtual infrastructure software for partitioning, consolidating, and managing systems in mission-critical environments. VMware ESXi Server provides a highly scalable virtual machine platform with advanced resource management capabilities, which can be managed by VMware vCenter Server.">'},
{:text=>'<script type="text/javascript">document.write("<title>" + ID_EESX_Welcome + "</title>");</script>'},
{:url=>'/default.js', :version=>/var ID_ProductName = "([^"]+)"/},
]
end