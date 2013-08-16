Homstatic
========
Personal web site with portfolio and static blog.

#### Keep it simple!
There is no point to build complicated construction for a home page with blog for one person. It should be extremely simple.

#### It's fast!
Of course, it's static!

#### What's inside?
* [Ruby 2](http://www.ruby-lang.org)
* [Scorched](http://scorchedrb.com) 
* [Bootstrap 3](http://twitter.github.io/bootstrap/)
 
### Create new Blog post
`$ touch views/blog/$(date +%s).md`

#### Deploy to Heroku

    $ heroku create
    $ git push heroku master
    $ heroku ps:scale web=1

#### Development
You can use vagrant which configs are inside this project.

* Install [Vagrant](http://vagrantup.com)
* Install chef: `$ gem install chef`
* Build the VM: `$ vagrant up`
* Login to the VM: `$ vagrant ssh`
* Project is located at /vagrant folder: `$ cd /vagrant`
* Change permissions: `$ sudo chown -R vagrant:vagrant /usr/local/rvm/gems/`
* Install gems: `$ bundle install`
* Run the project: `$ rackup config.ru`

When you are done, exit the VM and run the following command to suspend it until later: `$ vagrant suspend`

* Run server: `$ rake server`
* Run console: `$ rake console`
