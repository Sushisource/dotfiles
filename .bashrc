# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions!
export http_proxy=''
export https_proxy=''
export ftp_proxy=''
export socks_proxy=''

export BROWSER=/usr/local/bin/firefox

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/sjudge/.sdkman"
[[ -s "/home/sjudge/.sdkman/bin/sdkman-init.sh" ]] && source "/home/sjudge/.sdkman/bin/sdkman-init.sh"
