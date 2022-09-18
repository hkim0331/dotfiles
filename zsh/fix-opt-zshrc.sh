#!/bin/bash
SH='/opt/homebrew/opt/zsh-git-prompt/zshrc.sh'
if [[ `grep python3 ${SH}` ]]; then
    echo using pyton3
else
    gsed -i.bak 's/python/python3/g' ${SH}
    echo fix
fi
