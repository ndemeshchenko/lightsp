name             'web_app'
maintainer       'YOUR_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures web_app'
long_description 'Installs/Configures web_app'
version          '0.1.0'

%w(php git).each do |dep|
  depends dep
end
