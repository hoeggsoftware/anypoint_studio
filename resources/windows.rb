resource_name :anypoint_studio
provides      :anypoint_studio, os: 'windows'

property :studio_source, String, default: ''


action :create do
  chef_gem 'nokogiri'

  include_recipe 'seven_zip'

  if new_resource.studio_source = ''
    new_resource.studio_source = anypoint_zip
  end
  seven_zip_archive 'AnypointStudio' do
    path 'C:\Program Files'
    source new_resource.studio_source
    overwrite true
    timeout 30
  end
end

action_class do
  include AnypointStudio::Helper
end
