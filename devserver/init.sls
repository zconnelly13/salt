{% for package in ['vim','git','mercurial'] %}
{{ package }}:
  pkg:
    - installed
{% endfor %}

/home/zconnelly13/.vimrc:                        
  file:                                    
    - managed                               
    - source: salt://devserver/zconnelly13/.vimrc   

/home/zconnelly13/.bashrc:
  file:
    - managed
    - source: salt://devserver/zconnelly13/.bashrc
