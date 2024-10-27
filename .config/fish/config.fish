if status is-interactive
    # Commands to run in interactive sessions can go here
    alias os-config="sudo nvim -u /home/plskyuwu/.config/nvim/init.lua /etc/nixos/configuration.nix && os-cp"
    alias os-config-lvim="sudo lvim /etc/nixos/configuration.nix && cp -r /etc/nixos/ ~/Projects/dotfiles/"
    alias os-rebuild="sudo nixos-rebuild switch"
    alias os-upgrade="sudo nixos-rebuild switch --upgrade-all"
    alias os-delete-builds="sudo nix-collect-garbage -d && os-rebuild"
    alias os-rebuild-delete="os-rebuild && delete-builds && os-cp-and-push-git"
    alias os-cp="cp -r /etc/nixos/ ~/Projects/dotfiles/"
    alias os-cp-and-push-git="os-cp && cd ~/Projects/dotfiles/ && git add nixos/configuration.nix && git commit -m \"Update configuration.nix\" && git push && cd ~"

    alias update-nix="sudo nix-channel --update"
end
