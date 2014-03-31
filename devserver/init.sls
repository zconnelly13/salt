{% for package in ['vim','git','mercurial','python','python-django','node','npm'] %}
{{ package }}:
  pkg:
    - installed
{% endfor %}

https://github.com/zconnelly13/dotfiles:
  git.latest:
    - rev: master
    - target: /home/zconnelly13/
    - force: true

https://github.com/gmarik/Vundle.vim:
    git.latest:
    - rev: master
    - target: /home/zconnelly13/.vim/bundle/vundle

sudo chown -R zconnelly13 /home/zconnelly13:
  cmd.run

vim +PluginInstall +qall:
  cmd.run:
    - user: zconnelly13
