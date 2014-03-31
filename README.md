Salt
====

Salt is how I choose to manage my personal dotfiles / dev environment.
More information on Salt can be found in their excellent [documentation](http://docs.saltstack.com/en/latest/)

###How to Use

If you don't want to set up Salt you can go straight to [my dotfiles](https://github.com/zconnelly13/dotfiles), otherwise I strongly suggest that you take a look at [SaltStack's documentation](http://docs.saltstack.com/en/latest/) before following the steps below.

###Using this configuration as a base

Install git

```
sudo apt-get install git
```

Grab the code

```
cd /srv
sudo mkdir salt
cd salt
sudo git clone https://github.com/zconnelly13/salt .
```

####What to Change

Open up `devserver/init` and take a look at the top block.

This defines the user that Salt asserts and creates if it doesn't exist. You'll probably want to change the values here. Everything should be fairly obvious, except perhaps `createhome`, which, if `true`, creates the home directory if it does not exist.

The next block is templatized and by default follows [Jinja2](http://jinja.pocoo.org/) standards. The most important piece here is the list of packages to install. You may want to add or remove some of these packages based on your needs.

The rest of the file is devoted to handling my dotfiles. You'll want to change `https://github.com/zconnelly13/dotfiles` to your dotfile repo as well as change other instances of `zconnelly13` to your preferred username

Now open up `bootstrap.sh` and again change "zconnelly13" to your preferred username

####How to Run Everything

```
bash bootstrap.sh
```

and watch the magic happen ^_^

bootstrap.sh does the following...  
1. Creates your user and gives your user sudo permissions  
2. Adds the Salt ppa and calls apt-get update  
3. Installs the salt-minion  
4. Kicks off Salt to run locally  

It is tested for ubuntu 12.04+ so if you're on a different os you'll need to do this manually (but it shouldn't be too hard). See [Salt's Installation documentation](http://docs.saltstack.com/en/latest/topics/installation/).


