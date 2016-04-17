# Local Chef client provisioning of docker containers

This is just another personal study of using a Chef client to provision a docker container. Provioning 
examples (see resouces/recipies in `chef-repo` subfolder) are borrowed and somtimes adjusted from the
official Chef tutorial available at `https://learn.chef.io/learn-the-basics/ubuntu/`. It is certainly
a good resource to start with ;)  

Building the docker image a `debian:jessie` base image is pulled and Chef client verions 12.9.38 is
installed onto it. Please, adjust the `Dockerfile` respectively if you need another OS or Chef client.
You can find other Chef client versions/packages at https://downloads.chef.io/chef-client/. To build 
the docker image run 

`sudo docker build -t <YOUR IMAGE NAME> .`

The command 

`sudo docker run --rm -ti -v $PWD/chef-repo:/chef-repo -v $PWD/scripts:/scripts <YOUR IMAGE NAME>`

will run the docker container using the built image and opens an interactive Bash shell after Chef 
provsioning finished. Please, change the `scripts/entrypoint.sh` and add resouces/recipies to the 
`chef-repo` subfolder to adjust the provisioning.
 
