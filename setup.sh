for file in `ls * | grep -v setup.sh`; do
  cp $file $HOME/.$file
done
