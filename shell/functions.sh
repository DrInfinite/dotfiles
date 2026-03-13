# load all the scripts in that directory
for f in $HOME/shell/functions/*; do source "$f"; done

# Ensure that external keyboards that use an fn key has the F keys as the default
alias fix_fkeys='echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode'
