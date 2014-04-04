{% for package in ['vim','git','mercurial','python','python-django','node','npm','python-pip','python-ipdb'] %}
{{ package }}:
  pkg:
    - installed
{% endfor %}

https://github.com/zconnelly13/.dotfiles:
  git.latest:
    - rev: master
    - target: /home/zconnelly13/.dotfiles/
    - force: true

bash /home/zconnelly13/.dotfiles/install.sh:
  cmd.run:
    - cwd: /home/zconnelly13/.dotfiles

sudo chown -R zconnelly13 /home/zconnelly13:
  cmd.run
 
virtualenvwrapper:
  pip.installed:
      - require:
            - pkg: python-pip

/home/zconnelly13/.virtualenvs:
  file.directory:
    - user: zconnelly13
    - mode: 755
    - makedirs: True
