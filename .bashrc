export PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;36m\] @ \w\[\033[0;32m\]\n$(git branch 2>/dev/null | grep "^*" | colrm 1 2)\[\033[0;32m\]└─\[\033[0m\033[0;32m\] \$\[\033[0m\033[0;32m\]\[\033[0m\] '
export PATH=$PATH:~/.cargo/bin;
export USER=BIDIT
export RUST_SRC_PATH=~/Programming/rust_src_code/src/
export CARGO_HOME=~/.cargo/
