for file in `ls * | grep -v setup.sh`; do
  ln -s $file $HOME/.$file
done
