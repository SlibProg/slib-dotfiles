echo "REMINDER, THIS IS ONLY FOR VOID LINUX, AND SOME OF YOUR CONFIGS (ALACRITTY, EWWII, CATNAP, GODOT, GTK, PYWAL, NIRI AND FISH) WILL BE DELETED"
sleep 5

echo "Installing needed packages..."
sudo xbps-install -S niri fish-shell python3-pipx ghostty fuzzel godot catnap curl stow
sh -c "$(curl -fsSL https://ewwii-sh.github.io/install.sh)"
pipx install pywal16
sudo bash ./catnap-install.sh

sleep 1
echo "Copying config..."
stow conf

sleep 2
echo "Slib's Void dotfiles instalation is done!"
