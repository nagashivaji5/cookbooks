#
# Cookbook:: test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
#
package node['package_name'] do 
action :install
end

service node['service_name'] do
action [:start, :enable]
end
package node['db_name'] do
action :install
end
service node['service_db'] do
action [:start, :enable]
end

file "#{node['document_root']}/index.html" do
owner 'root'
group 'root'
mode '0644'
action :create
end
template  "#{node['document_root']}/index.html" do 

source 'template.erb'
end
