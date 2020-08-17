#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Date: Sun Aug 16 23:35:03 EDT 2020
##### Purpose: zsh script to source more kubectl aliases
##### Notes:
#}}}***********************************************************

# According to the standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
#
0="${${0:#$ZSH_ARGZERO}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

local aliasesFile=${0:h}/.kubectl_aliases

if [[ -f $aliasesFile ]]; then
    source $aliasesFile
else
    echo "ERROR: $aliasesFile does not exist" >&2
fi
