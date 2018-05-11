# .bash_profile
#
# ログイン時にのみ実行される
# - 環境変数を設定(export)

# pyenv
# -> https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/_/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi



# At the end of .bash_profile
# exec .bashrc
test -r ~/.bashrc && ~/.bashrc
