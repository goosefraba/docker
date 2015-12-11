# Docker
A set of common docker files and examples.

## Template: Java

A simple docker file, starting a container with java 8 installed.

## Template: nginx

A container, installing nginx on an ubuntu 14.04.2

### Useage:
First, build the docker image. Execute the following command in the directory, where the Dockerfile is located.

	docker build -t nginx_example .

Now you can run your docker image:

	docker run -i -t -p 80:80 -v YOUR_ABSOLUTE_PATH/www:/www nginx_example

Be aware, that you have to use an absolute path when binding synchronized folders or files to your docker container.
The container starts and prints the logs of nginx.
If you want to start the container as a deamon (in docker its called "detached") just call the previous command with a -d argument.
If doing so, the container is run in the background without keeping a prompt alive.


## Template: gulp

A container, installing node. After that, within the current directory following commands are executed:
	
	npm install
	bower install

with some arguments.

Build your image within the directory of the Dockerfile:

	docker build -t gulp_example

### Useage:
After building the container, the following example commad could be used to run gulp within the container:

	docker run -i -t -v YOUR_ABSOLUTE_PATH:/gulp gulp_example gulp:watch
