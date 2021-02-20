alias cl='clear';
PROMPT="%F{magenta}%n%f"  # Magenta user name
PROMPT+="@"
PROMPT+="%F{cyan}${${(%):-%m}}%f" # Cyan host name
PROMPT+=" "
PROMPT+="%F{yellow}%1~ %f" # Yellow working directory
