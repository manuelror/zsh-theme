# rvm:(ruby-version) nvm:(node-version) gvm:(go-version)
# ↪ path git:(branch) git-status

NEWLINE=$'\n'

# Get the current ruby version in use with RVM or RBENV:
if [ -e ~/.rvm/bin/rvm-prompt ]; then
  RUBY_PROMPT_="%{$fg_bold[blue]%}rvm:(%{$fg[green]%}\$(~/.rvm/bin/rvm-prompt v g)%{$fg_bold[blue]%})%{$reset_color%} "
else
  if which rbenv &>/dev/null; then
    RUBY_PROMPT_="%{$fg_bold[blue]%}rbenv:(%{$fg[green]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$fg_bold[blue]%})%{$reset_color%} "
  fi
fi

# Get the current go version in use with GVM:
if [ -e ~/.gvm/bin/gvm-prompt ]; then
  GO_PROMPT_="%{$fg_bold[blue]%}gvm:(%{$fg[green]%}\$(~/.gvm/bin/gvm-prompt v g)%{$fg_bold[blue]%})%{$reset_color%} "
fi

# Get the current node version with NVM
if [ -s ~/.nvm/nvm.sh ]; then
  NODE_PROMPT_="%{$fg_bold[blue]%}nvm:(%{$fg[green]%}\$(nvm current)%{$fg_bold[blue]%})%{$reset_color%} "
fi

# New line
NEW_LINE_PROMPT_="$NEWLINE %(?:%{$fg_bold[green]%}↪ :%{$fg_bold[red]%}↪ )"
NEW_LINE_PROMPT_+=' %{$fg[cyan]%}%c%{$reset_color%} '

GIT_PROMPT="%{$fg_bold[blue]%}\$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}"

PROMPT=" 🤖 $RUBY_PROMPT_$NODE_PROMPT_$GO_PROMPT_$NEW_LINE_PROMPT_$GIT_PROMPT"

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
