# multibranch-pipeline
Following are the specifications of the Continuous integration:
1. Git Workflow hasto be implemented
2. Code Build should automatically be triggered once commit is made to master branch 
or develop branch.
If commit is made to master branch, build and publish website on 
port 82. If commit is made to develop branch, just build the 
product, do not publish.
3. Create a pipeline for the above tasks.
4. Create a container with Ubuntu and apache installed in it and use that container to
build the code and the code should be on ‘/var/www/html’.



Dockerfile****
FROM ubuntu:20.04
RUN apt-get update && \
   apt-get install -y apache2 git curl && \
   apt-get clean
RUN mkdir -p /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
