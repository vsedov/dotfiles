
eval "$(zoxide init zsh)"
eval $(thefuck --alias)
eval $(thefuck --alias FUCK)


alias pac="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias gss="git status"
alias gl="git log"
alias pa="php artisan"
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias yeet="paru -Rcs"
alias yyay="paru --bottomup"
alias yayay="paru -S (paru -Slq | fzf -m)"

alias nvimconfig="cd ~/.config/nvim/"
alias nvimshare="cd ~/.local/share/nvim"
alias cls="colorls --dark"

alias ve='pyvenv create '
alias vl='pyvenv list'
alias va='pyvenv shell '
alias vr='pyvenv remove '

alias vd='deactivate'
alias vrc='pip install requests'

alias trash='mv --force -t ~/.local/share/Trash '
alias senko='sudo'
alias nya='nvim'
alias neko='cat'
alias now='shutdown -h now'
alias moe='more'
alias zawarudo='git reset --soft HEAD~1'
alias startup='nvim --startuptime xd && nvim xd'
alias startupS='nvim -nu  NORC --startuptime xd && nvim xd'
alias github='cd ~/GitHub'

alias v=nvim
alias vim=nvim
alias sysinfo="inxi -Fxxxz"
# alias cat=bat
alias open=xdg-open

if command -v pamac >/dev/null 2>&1; then
    alias checkup="sudo pamac checkupdates -a"
    alias up="pamac upgrade -a --no-confirm"
    alias buildup="pamac build --no-confirm"
fi

if command -v pacman >/dev/null 2>&1; then
    alias upnup="sudo pacman -Syyuu"
    alias cleanup='sudo pacman -Rsn $(pacman -Qdtq)'
fi

if command -v microk8s >/dev/null 2>&1; then
    alias k="microk8s.kubectl"
    alias kube="microk8s.kubectl"
    alias kubectl="microk8s.kubectl"
fi

# Github CLI aliases
prcreate() {
    if [ -z "$2" ]; then
        # If title is not provided then use autofill
        gh pr create -B "$1" -f
    else
        # Otherwise use provided title
        gh pr create -B "$1" -t "$2"
    fi
}

prmerge() {
    gh pr merge --merge --delete-branch=false "$1"
}
prlist() {
    gh pr list --state open
}
prcheck() {
    gh pr checkout "$1" && gh pr diff
}

# IP aliases
ip-internal() {
    echo "Wireless :: IP => $( ip -4 -o a show wlo1 | awk '{ print $4 }' )"
}
ip-external() {
    echo "External :: IP => $( curl --silent https://ifconfig.me )"
}
ipinfo() {
    ip-internal && ip-external
}

alias myip=ip-internal

# open_with_fzf() {
#     fd -t f -H -I | fzf -m --preview="xdg-mime query default {}" | xargs -ro -d "\n" xdg-open 2>&-
# }
# cd_with_fzf() {
#     cd $HOME && cd "$(fd -t d | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview" --preview-window=:hidden)"
# }
# pacs() {
#     sudo pacman -Syy $(pacman -Ssq | fzf -m --preview="pacman -Si {}" --preview-window=:hidden --bind=space:toggle-preview)
# }
