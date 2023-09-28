url --mirrorlist="https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-$releasever&arch=$basearch"

# Use graphical install
graphical

# Install system packages
%packages
@fonts                                 # Fonts packages
@guest-desktop-agents                  # Agents used when running as a virtualized desktop
@hardware-support                      # Various hardware specific utilities
@multimedia                            # Common audio/video frameworks
@networkmanager-submodules             # Common NetworkManager submodules
@printing                              # Tools to enable the system to print or act as a print server
bash-color-prompt                      # Bash shell colors
desktop-backgrounds-gnome              # Fedora desktop backgrounds
fedora-workstation-repositories        # Default Fedora repositories
gnome-backgrounds                      # GNOME desktop backgrounds
gnome-shell
gnome-software
gnome-user-share
nautilus
plymouth-system-theme
yelp
%end

%post
# Set the plymouth theme
plymouth-set-default-theme bgrt -R

# Change Systemd boot target
systemctl set-default graphical.target

# Configure Flatpak
systemctl disable flatpak-add-fedora-repos
flatpak remote-add flathub https://dl.flathub.org/repo/flathub.flatpakrepo
%end

# Reboot after installation
reboot --eject
