zconnelly13:
  user.present:
    - fullname: Zac Connelly
    - home: /home/zconnelly13
    - groups:
      - sudo  
    - createhome: true
    - password: changeme 

{% for package in ['vim','git','mercurial','python','python-django','node','npm'] %}
{{ package }}:
  pkg:
    - installed
{% endfor %}

https://github.com/zconnelly13/dotfiles:
  git.latest:
    - rev: master
    - target: /home/zconnelly13/

https://github.com/gmarik/Vundle.vim:
    git.latest:
    - rev: master
    - target: /home/zconnelly13/.vim/bundle/vundle

vim +PluginInstall +qall:
  cmd.run:
    - user: zconnelly13
