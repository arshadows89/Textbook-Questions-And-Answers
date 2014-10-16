if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export PATH="$HOME/.parts/autoparts/bin:$PATH"
eval "$(parts env)"
