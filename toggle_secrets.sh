#!/usr/bin/env bash

red=$'\e[1;31m'; grn=$'\e[1;32m'; end=$'\e[0m'

function color_print() {
    echo "$1$2${end}"
}

if [[ "$1" = "skip" ]] || [[ "$1" = "no-skip" ]]; then
    git update-index --$1-worktree *gitlab-secrets*
    git status

    if [[ "$1" = "skip" ]]; then
        color_print ${grn} "File should be missing from git status"
    fi

    if [[ "$1" = "no-skip" ]]; then
        color_print ${red} "FILE SHOULD BE IN STATUS LIST, BE CAREFUL!!"
    fi
else
    color_print ${red} "First parameter can only be 'skip' or 'no-skip'"
    exit 1
fi
