#
# Cookbook:: default
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'chocolatey'

chocolatey_package 'maven' do
  version '3.5.0'
end

chocolatey_package 'jdk8' do
  version '8.0.152'
end

anypoint_studio 'installation' do
  action :create
end

env 'JAVA_HOME' do
  value 'C:\Program Files\Java\jdk1.8.0_152'
end
