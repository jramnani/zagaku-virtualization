# Virtualization for Developers

## Intro

Virtualization is a way to emulate hardware using software.

Why would you do this?  There are many reasons, but we'll consider it from a developer's perspective.  Here are a couple of scenarios:

* One project is a legacy Rails app using Ruby 1.8.7 and Rails 3.x.  The other is using Ruby 2.3 and Rails 5.  Virtualization can help you keep these development environments separate.
* You're doing development on a Mac, but the server you're deploying to is Linux.  Virtualization can help you to create your deployment environment locally.

## The Example

In this example, we're developing a small Python [Flask] application.  We'll use Vagrant and Docker to build an environment to run the program on Linux.


### Vagrant

[Vagrant] is a program that lets you create virtual machine specifications programmatically using Ruby.

How to start the Vagrant box:

    vagrant up
    
Here's how to log in and start the app:

    vagrant ssh
    cd /vagrant
    python ./app.py

How to print a process tree:

    ps axjf


### Docker

Docker is a different form of virtualization.  It allows you to build and run your application locally the same way you might deploy it (if you use Docker to deploy to production).

Docker build command.

    docker build -t jramnani/hello-flask .
    
Run the Flask app:

    docker run -p 8080:8080 jramnani/hello-flask

Login to the Docker container to look around:

    docker run --name test --rm -i -t jramnani/hello-flask bash
    
How to print a process tree:

    ps axjf


[Vagrant]: https://www.vagrantup.com/
[Docker]: https://docker.com
[Flask]: http://flask.pocoo.org/

