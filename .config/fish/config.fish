# Path to Oh My Fish install.
set -gx OMF_PATH "/home/sjudge/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/sjudge/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Make sure we use the right terminal
set -x TERMINAL urxvt256c

# Set default user so my theme doesn't always show user name
set default_user sjudge
