#!/bin/bash
#
# Using bash explicitly.
# In macos, /bin/sh is not a symlink to /bin/bash.
# /bin/sh errors in bellow script.

RC="${HOMEBREW_PREFIX}/opt/zsh-git-prompt/zshrc.sh"

if [[ `grep python3 ${RC}` ]]; then
    echo ok using pyton3
else
    gsed -i.bak 's/python/python3/g' ${RC}
    echo fixed
fi
