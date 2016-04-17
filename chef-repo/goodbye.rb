# Example adjusted from https://learn.chef.io/learn-the-basics/ubuntu/configure-a-resource/

file '/tmp/messages/motd' do
  action :delete
end

