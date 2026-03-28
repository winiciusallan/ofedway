ascii=' _______  _______  _______  ______            _______          
(  ___  )(  ____ \(  ____ \(  __  \ |\     /|(  ___  )|\     /|
| (   ) || (    \/| (    \/| (  \  )| )   ( || (   ) |( \   / )
| |   | || (__    | (__    | |   ) || | _ | || (___) | \ (_) / 
| |   | ||  __)   |  __)   | |   | || |( )| ||  ___  |  \   /  
| |   | || (      | (      | |   ) || || || || (   ) |   ) (   
| (___) || )      | (____/\| (__/  )| () () || )   ( |   | |   
(_______)|/       (_______/(______/ (_______)|/     \|   \_/   
'

clear
echo -e "\n$ascii\n"

sudo dnf install -y git &>/dev/null

echo -e "\nCloning Ofedway..."
rm -rf ~/.local/share/ofedway
git clone https://github.com/winiciusallan/ofedway.git ~/.local/share/ofedway >/dev/null

# Clone my own dotfiles for post configurations.
git clone https://github.com/winiciusallan/dotfiles.git ~/dotfiles >/dev/null

echo "Installation starting..."
source ~/.local/share/ofedway/install.sh
