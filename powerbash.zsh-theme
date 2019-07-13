#!/usr/bin/env zsh
# vim: ts=4 sts=4 sw=4 tw=79 cc=+1 et ai ff=unix
#==============================================================================
# Author:  Erik Schreier - erik-schreier@gmx.de
# Source:  https://github.com/erikSchreier/nordic-vim
# Version: 1.0 (Jun 12 2019)
# File:    ~/.oh-my-zsh/custom/themes/powerbash.zsh-theme
#==============================================================================
# Set usericon: $ => user; # => root
#------------------------------------------------------------------------------
if [[ $EUID -ne 0 ]] ; then
	ICON="$"
else
	ICON="#"
fi
#------------------------------------------------------------------------------
# Set promptcolor: green => true; red => false
#------------------------------------------------------------------------------
COLOR="%(?:$FG[002]:$FG[001])"
#------------------------------------------------------------------------------
# LT_PROMPT: user@machine:folder $ _
# RT_PROMPT: branchname: git_info
#------------------------------------------------------------------------------
PROMPT="$COLOR%B%n%b$FG[005]@%m:$FG[004]%c $COLOR%B$ICON%b %{$reset_color%}"
RPROMPT='$(git_prompt_status)$(git_prompt_info)%{$reset_color%}'
#------------------------------------------------------------------------------
# git_prompt_status values
#------------------------------------------------------------------------------
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[007]"
ZSH_THEME_GIT_PROMPT_SUFFIX=":"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
#------------------------------------------------------------------------------
# git_prompt_info values
#------------------------------------------------------------------------------
ZSH_THEME_GIT_PROMPT_ADDED="$FG[002]A "
ZSH_THEME_GIT_PROMPT_MODIFIED="$FG[003]M "
ZSH_THEME_GIT_PROMPT_DELETED="$FG[001]D "
ZSH_THEME_GIT_PROMPT_RENAMED="$FG[006]R "
ZSH_THEME_GIT_PROMPT_UNMERGED="$FG[004]U "
ZSH_THEME_GIT_PROMPT_UNTRACKED="$FG[005]%BX%b "
#==============================================================================
