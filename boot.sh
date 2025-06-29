ascii=' _______  _______  _______  ______            _______          
(  ___  )(  ____ \(  ____ \(  __  \ |\     /|(  ___  )|\     /|
| (   ) || (    \/| (    \/| (  \  )| )   ( || (   ) |( \   / )
| |   | || (__    | (__    | |   ) || | _ | || (___) | \ (_) / 
| |   | ||  __)   |  __)   | |   | || |( )| ||  ___  |  \   /  
| |   | || (      | (      | |   ) || || || || (   ) |   ) (   
| (___) || )      | (____/\| (__/  )| () () || )   ( |   | |   
(_______)|/       (_______/(______/ (_______)|/     \|   \_/   
'

echo -e "\n$ascii\n"

dnf install -y git &>/dev/null
git clone https://github.com/winiciusallan/oferway.git ~/.local/share/oferway >/dev/null

# Clone my own dotfiles for post configurations.
git clone https://github.com/winiciusallan/dotfiles.git ~/dotfiles >/dev/null

echo "Installation starting..."
source ~/.local/share/oferway/install.sh
