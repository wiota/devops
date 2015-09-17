# Wiota Co Dev Environment

## To start:

1. Copy the Facade `.env` file into `./facade`
2. Use [gasmask]() to configure `/etc/hosts` with entries such as:

    192.168.50.100    www.example.com
    192.168.50.100    static.example.com

3. Run `vagrant up`

## To develop:
In this directory:

    $ vagrant ssh-config >> ~/.ssh/config

In the Facade git repo:

    $ git add remote vagrant vagrant@default:/vagrant/facade/facade.git

After making a change:

    $ git checkout -b new_feature_branch
    $ git commit -am "Here's a new feature"
    $ git push vagrant HEAD:master

Automatically deployed.
