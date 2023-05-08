#   -------------------------------
#   TOOLS CONFIG
#   1. Docker
#   2. Brew
#   3. DotNet
#
#
#   -------------------------------
alias act='source venv/bin/activate'
alias be='bundle exec'
alias bi='bundle install'
alias cdb='cd ~/code/baseboxes'
alias cdp='cd ~/code/puppet-control'
alias cdr='cd ~/code/remote-server-test'
alias pip='pip --proxy localhost:3128'
alias pp='pbpaste | python -m json.tool' # This allows you to copy json to your mac copy buffer, then run 'pp' at the command line (print pretty)


#   -------------------------------------------------------------------
#   Docker
#   -------------------------------------------------------------------
export DOTOKEN=$DOTOKEN

alias drm='docker rm `docker ps -a -q`'
alias drn='docker images | grep none | awk "{ print $3 }" | xargs docker rmi'
alias prov="docker-machine create --driver digitalocean --digitalocean-access-token $DOTOKEN"

#   -------------------------------------------------------------------
#    Brew
#   -------------------------------------------------------------------
HOMEBREW_NO_INSTALL_CLEANUP=true


#   -------------------------------------------------------------------
#   Ctags
#   -------------------------------------------------------------------
ctags=/usr/local/bin/ctags

#   -------------------------------------------------------------------
#   DotNet
#   -------------------------------------------------------------------
export DOTNET_ROOT='/usr/local/opt/dotnet/libexec'
# Add .NET Core SDK tools
export PATH="$PATH:/Users/dannielrolfe/.dotnet/tools"
