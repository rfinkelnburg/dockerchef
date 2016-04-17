# Example adjusted from https://learn.chef.io/learn-the-basics/ubuntu/configure-a-resource/

directory '/tmp/messages'

file '/tmp/messages/motd' do
  content 'hello world'
end

