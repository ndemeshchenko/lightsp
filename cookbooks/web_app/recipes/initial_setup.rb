# Install nginx, php
include_recipe 'php'

php_fpm_pool "default" do
  action :install
end

package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable, :start ]
end
