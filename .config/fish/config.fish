if status is-interactive

### GREETING MESSAGE ###
set fish_greeting
toilet -f smblock --filter border:metal -w 40 Arch Linux

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

### NAVIGATION ###
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

### BACKUP ###
function backup --argument filename
    cp $filename $filename.bak
end

### RESTORE ###
function restore --argument file
    mv $file (echo $file | sed s/.bak//)
end

### HISTORY PREVIOUS COMMAND ###
function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i !
  end
end

bind ! __history_previous_command_arguments

### ALIASES ###
alias img "kitty +kitten icat"
alias ls "exa --icons --grid"
alias cp "cp -i"
alias rm "rm -i"
alias mv "mv -i"

function on_exit --on-process-exit %self
   builtin history clear
end

end
