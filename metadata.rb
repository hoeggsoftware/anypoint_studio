name 'anypoint_studio'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures anypoint_studio'
long_description 'Installs/Configures anypoint_studio'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/anypoint_studio/issues'

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/anypoint_studio'

depends 'seven_zip'
