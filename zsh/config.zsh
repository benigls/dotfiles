setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt PROMPT_SUBST

# if you do a 'rm *', zsh will give you a sanity check!
setopt RM_STAR_WAIT

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
