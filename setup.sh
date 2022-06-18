echo "Hello - welcome to whitenetlinux!"

if ! command -v zsh &> /dev/null
then
  sudo apt-get install zsh
elif
  echo zsh already installed
fi



