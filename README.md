Salt
====

Salt is how I choose to manage my personal dotfiles / dev environment.
More information on Salt can be found in their excellent [documentation](http://docs.saltstack.com/en/latest/)

###How to Use

If you don't want to set up Salt you can go straight to [my dotfiles](https://github.com/zconnelly13/dotfiles), otherwise I strongly suggest that you take a look at [SaltStack's documentation](http://docs.saltstack.com/en/latest/) before following the steps below.

###Using this configuration as a base

Grab the code

```
cd /srv
sudo mkdir salt
cd salt
git clone https://github.com/zconnelly13/salt .
```

####What to Change

Open up `devserver/init` and take a look at the top block.

This defines the user that Salt asserts and creates if it doesn't exist. You'll probably want to change the values here. Everything should be fairly obvious, except perhaps `createhome`, which, if `true`, creates the home directory if it does not exist.

The next block is templatized and by default follows [Jinja2](http://jinja.pocoo.org/) standards. The most important piece here is the list of packages to install. You may want to add or remove some of these packages based on your needs.

The rest of the file is devoted to handling my dotfiles. You'll want to change `https://github.com/zconnelly13/dotfiles` to your dotfile repo as well as change other instances of `zconnelly13` to your preferred username

####How to Run Everything
You'll first need to [install the salt-minion](http://docs.saltstack.com/en/latest/topics/installation/index.html). This is the easiest way to run the code because you can run the salt-minion without setting up a master box.

Then run
```
sudo salt-call --local state.highstate
```
and watch the magic happen ^_^
