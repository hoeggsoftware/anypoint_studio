# anypoint_studio

This cookbook provides a resource to install Anypoint Studio on a Windows box.

# Platforms

- Windows

## Chef

- Chef >= 13.0

## Cookbooks

- seven_zip

# Attributes

# Usage
To use the resources provided by this cookbook, include them in a wrapper cookbook.

# Resource/Provider
## anypoint_studio
Installs Anypoint Studio from zip file in "C:\\Program Files"

#### Actions
- `create` - Put Anypoint Studio on the machine
- `remove` - Remove Anypoint Studio from the machine

#### Attribute Parameters
- `studio_source` - Location of zip file to install. Defaults to looking up current version and using it.

#### Examples

```ruby
anypoint_studio 'current_version'

anypoint_studio 'particular_source' do
  studio_source 'https://location_of_file.zip'
end
```

# Authors
- Author:: Clayton Flesher (<clayton@hoegg.software>)

## Todo

- Expand to include Linux and MacOSX boxes.
