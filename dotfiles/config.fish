set fish_greeting
# set -g theme_color_scheme gruvbox

alias cl "clear"
alias tf "terraform"
alias ll "lsd -l"
alias la "lsd -a"
alias ls "lsd"

fzf_configure_bindings --directory=\cf
fzf_configure_bindings --variables=\e\cv

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

set -gx PATH $PATH /home/yesidev/.local/bin
set -gx PATH $PATH ~/learning/bash/

# set -x EDITOR "neovim"
# set -x GPU "GeForce RTX 3050"
# set -x CPU "AMD Ryzen 7 5700X 8-Core Processor"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
