# {
#   "name": "sample-app1",
#   "description": "",
#   "default_attributes": {
#     "app": {
#       "source": "https://github.com/banago/simple-php-website.git",
#       "destination": "/usr/share/nginx/app",
#       "branch": "master",
#       "revision": "master"
#     }
#   },
#   "override_attributes": {},
#   "chef_type": "role",
#   "run_list": ["recipe[web_app]"],
#   "env_run_lists": {}
# }

name "sample_app1"
description "role_description"
run_list "recipe[web_app]"
override_attributes "app" => {
  "name"              => "sample-app1",
  "source"            => "https://github.com/banago/simple-php-website.git",
  "destination"       => "/usr/share/nginx/app",
  "branch"            => "master",
  "revision"          => "master",
  "something_test"    => "HELLOmaster"
}
