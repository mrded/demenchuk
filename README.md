Homstatic
========
Personal web site with portfolio.

#### What's inside?
* [Ruby 2](http://www.ruby-lang.org)
* [Scorched](http://scorchedrb.com)
* [Bootstrap 3](http://twitter.github.io/bootstrap/)

#### Deploy to Heroku

    $ heroku create
    $ git push heroku master
    $ heroku ps:scale web=1

#### Development
You can use vagrant which configs are inside this project.

* Install [Vagrant](http://vagrantup.com)
* Build the VM: `$ vagrant up`
* Login to the VM: `$ vagrant ssh`
* Project is located at /vagrant folder: `$ cd /vagrant`
* Install gems: `$ bundle install`
* Run the project: `$ rackup config.ru`

When you are done, exit the VM and run the following command to suspend it until later: `$ vagrant suspend`

* Run server: `$ rake server`
* Run console: `$ rake console`
