actions :install
default_action :install

provides :app

attribute :name, name_attribute: true, kind_of: String, required: true
# attribute :port, kind_of: String, required: true
attribute :source, kind_of: String
attribute :destination, kind_of: String

attr_accessor :exists
