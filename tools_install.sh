array=($(ls /etc))

for eachValue in ${array[@]}; do
  if [[ ${eachValue} == "arch-release" ]]; then
    os="archlinux"
  elif [[ ${eachValue} == "ubuntu-release" ]]; then
    os="ubuntu"
    
    
  fi
done

if [[ ${os} == "archlinux" ]]; then
  yes | sudo pacman -Syyuu git-delta fd bat zoxide
	
elif [[ ${os} == ]]; then
  sudo apt-get install -y build-essential
  
fi

