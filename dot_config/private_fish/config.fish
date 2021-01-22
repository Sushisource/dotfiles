# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/sushi/apps/google-cloud-sdk/path.fish.inc' ]; . '/home/sushi/apps/google-cloud-sdk/path.fish.inc'; end

# Insert cargo bin path if not present (EX: Intellij terminal)
if not contains "$HOME/.cargo/bin/" $PATH
  set -gx PATH "$HOME/.cargo/bin/" $PATH
end

navi widget fish | source
starship init fish | source

# Setup keychain
if status --is-interactive
    keychain --quiet --agents ssh
end

begin
    set -l HOSTNAME (hostname)
    if test -f ~/.keychain/$HOSTNAME-fish
        source ~/.keychain/$HOSTNAME-fish
    end
end

# Setup ssh agent helper env vars
if test -z "$SSH_ENV"
    set -xg SSH_ENV $HOME/.ssh/environment
end

if not __ssh_agent_is_started
    __ssh_agent_start
end

alias la="exa -la --icons"
alias ll="exa -ll --icons"
alias llr="exa -ll -s time --icons"
alias lar="exa -la -s time --icons"
