# Using Docker container to run a real application
## About the project

IT infrastructure.
This project main goal is pack and distribute a real application and it depedencies inside a Docker container. 

## Getting Started
### Requirements
Make sure you have installed all of the following prerequisites on your development machine:
* Git - [installing git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
* Docker - [installing docker](https://docs.docker.com/engine/install/)

### Setup
1. Clone the repo
```sh
git clone https://github.com/jvzmarmentini/automaton-app.git
```

2. Go to git repo
```sh
cd docker-python
```

3. Download image from docker hub
```sh
docker pull jvzmarmentini/ubuntu-python3
```

### Usage

1. Build the image from Dockerfile
```sh
docker build -t python-webserver .
```
or
```sh
docker build --tag python-webserver . 
```

Run the ```docker images``` to make sure it worked. You should see at least a "python3-ubuntu" image.

2. Run the container (detached mode)
```sh
docker run -d -p 80:80 python-webserver
```

This will run the webserver in the background. If you dont want that, simply remove the "-d"

3. Make a GET request
```sh
curl localhost:5000
```

The output should be "Hello there!"
