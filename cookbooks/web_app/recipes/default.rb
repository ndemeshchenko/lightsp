#
# Cookbook Name:: web_app
# Recipe:: default
#
# Copyright (C) 2017 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'web_app::initial_setup'

app 'sample-app' do
  name node['app']['name']
  source node['app']['source']
  destination node['app']['destination']
end

template '/etc/nginx/sites-available/default' do
  source 'app_conf'
  mode 00755
  variables(
    :app => node['app']
  )
  notifies :restart, 'service[nginx]', :immediately
end
