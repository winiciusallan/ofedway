for file in ~/.local/shared/oferway/install/*.sh; do source $file; done

gum confirm "Reboot to apply all settings?" && reboot
