# Example adjusted from https://learn.chef.io/learn-the-basics/ubuntu/configure-a-package-and-service/

if node['platform_family'] == 'debian'
  apt_update 'apt update' do
    action :update
  end
end
