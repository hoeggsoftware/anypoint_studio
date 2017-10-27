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

# License & Authors
- Author:: Clayton Flesher (<clayton@hoegg.software>)

```text
The MIT License

Copyright (c) 2017 Hoegg Software http://hoegg.software

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
## Todo

- Expand to include Linux and MacOSX boxes.
