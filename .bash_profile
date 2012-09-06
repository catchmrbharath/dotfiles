export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/cuda/bin:$PATH
export PATH=/usr/local/share/python:$PATH
export http_proxy=libjis:lib12345@proxy.iitm.ac.in:3128
export https_proxy=libjis:lib12345@proxy.iitm.ac.in:3128
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
      fi
    
# Set git autocompletion and PS1 integration
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
      . /usr/local/git/contrib/completion/git-completion.bash
  fi
  GIT_PS1_SHOWDIRTYSTATE=true

  if [ -f /opt/local/etc/bash_completion ]; then
          . /opt/local/etc/bash_completion
      fi
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
      
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias gvim='mvim'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export CURL_CA_BUNDLE=~/pr/curl_cert/curl_cert.pem

#For sphinx docs
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
