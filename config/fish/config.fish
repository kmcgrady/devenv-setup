if status is-interactive
    eval (/opt/homebrew/bin/brew shellenv)
    pyenv init - | source
    load_nvm > /dev/stderr
end
