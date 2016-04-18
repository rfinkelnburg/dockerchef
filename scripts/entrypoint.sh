#!/bin/bash

# Do Chef provisioning
cd $CHEF_HOME
#chef-client --local-mode hello.rb
#chef-client --local-mode goodbye.rb
#chef-client --local-mode aptupdate.rb
#chef-client --local-mode webserver.rb
chef-client --local-mode --runlist 'recipe[learn_chef_apache2]'

# Do some nice stuff (e.g. getting a shell ;)
/bin/bash
