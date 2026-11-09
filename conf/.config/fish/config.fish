if status is-interactive
    catnap

    if type -q zoxide
        zoxide init fish | source
    end
end

set -g fish_greeting
set -gx EDITOR nvim
set -gx vblank_mode 0
set -gx DRI_PRIME 1
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx BUN_INSTALL "$HOME/.bun"
set -gx NVM_DIR "$HOME/.nvm"
set -gx XDG_DATA_DIRS /var/lib/flatpak/exports/share/applications $HOME/.local/share/flatpak/exports/share:/usr/local/share:/usr/share

fish_add_path $HOME/bin
fish_add_path $HOME/.local/bin
fish_add_path /usr/local/bin
fish_add_path $HOME/.spicetify
fish_add_path /usr/local/go/bin
fish_add_path $HOME/go/bin
fish_add_path $BUN_INSTALL/bin

test -d "$HOME/.cargo/bin"; and fish_add_path "$HOME/.cargo/bin"
test -d "$HOME/.deno/bin"; and fish_add_path "$HOME/.deno/bin"
test -d "$HOME/.rokit/bin"; and fish_add_path "$HOME/.rokit/bin"

if test -f ~/.cache/wal/colors.fish
    source ~/.cache/wal/colors.fish
end

function xc
    sudo ln -s "/etc/sv/$argv" /var/service/
end

function nr
    nim c -r $argv
end

alias fish-conf='nvim ~/.config/fish/config.fish'
alias sof='source ~/.config/fish/config.fish'
alias ls='lsd'
alias tree='lsd --tree'
alias cl='clear'

alias cr='cargo run'
alias cre='cargo remove'
alias ci='cargo install'
alias ca='cargo add'
alias cip='cargo install --path .'
alias cn='cargo new'

alias gc='git commit -m'
alias ga='git add .'
alias gp='git push -u origin main'

alias ew='ewwii open top-bar --restart'
alias ew-conf='zed ~/.config/ewwii/'
alias niri-conf='nvim ~/.config/niri/config.kdl'
alias ghostty-conf='nvim ~/.config/ghostty/config'
alias v='nvim'
alias knt-conf='nvim ~/.config/kanata/config.kbd'

oh-my-posh init fish --config ~/.config/oh-my-posh.omp.json | source
source /usr/share/fish/vendor_functions.d/xbps-command-not-found.fish
