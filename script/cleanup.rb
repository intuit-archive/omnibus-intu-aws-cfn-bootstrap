#!/usr/bin/env ruby

# Script to cleanup any build instances which are launched
# Keys off the name that was assigned to the instance

require 'fog'

target_name = "intu-aws-cfn-bootstrap-omnibus-build"

compute = Fog::Compute.new({:provider              => 'AWS', 
                            :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
                            :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
                            :region                => 'us-west-1'})

compute.servers.each do |s|
  id    = s.id
  name  = s.tags['Name']
  state = s.state

  if name == target_name && state == "running"
    puts "Destroying '#{id}'"
    s.destroy
  end

end
