for file in ~/.local/share/ofedway/install/*.sh; do source $file; done

gum confirm "Reboot to apply all settings?" && reboot
