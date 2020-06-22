#!/bin/zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "/home/ubuntu/.zprezto"
setopt EXTENDED_GLOB
for rcfile in /home/ubuntu/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "/home/ubuntu/.${rcfile:t}"
done

