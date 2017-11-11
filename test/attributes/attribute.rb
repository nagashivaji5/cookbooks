case node['platform']
     when 'centos','rhel'
        default['package_name']='httpd'
        default['service_name']='httpd'
        default['document_root']='/var/www/html/'
        default['db_name']='mariadb-server'
        default['service_db']='mariadb'
     when 'ubuntu','fedora','debain'
        default['package_name']='apache2'
        default['service_name']='apache2'
        default['document_root']='/var/www/'
end 
