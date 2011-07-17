current_dir = File.dirname(__FILE__)
organization = ENV['ORGNAME']
opscode_user = ENV['OPSCODE_USER'] || ENV['USER']
log_level                :info
log_location             STDOUT
node_name                opscode_user
client_key               "#{ENV['HOME']}/.chef/#{opscode_user}.pem"
validation_client_name   "#{organization}-validator"
validation_key           "#{ENV['HOME']}/.chef/#{organization}-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/#{organization}"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
