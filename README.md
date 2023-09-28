# Anaconda kickstart for Fedora

This repository contains a collection of kickstart files for setting up Fedora Linux installations. The available kickstart files include:

- [`gnome-minimal.ks`](gnome-minimal.ks)
- [`38/gnome-minimal.ks`](38/gnome-minimal.ks)

The root kickstart file always points to the most up-to-date Fedora version.

## 🚀 How to use

1. Download the network installer ISO from [https://alt.fedoraproject.org](https://alt.fedoraproject.org)
2. Boot the ISO and stop at Grub screen
3. Highlight "Install Fedora", press <kbd>e</kbd> and append:
  ```text
  inst.ks=https://raw.githubusercontent.com/gremo/fedora-kickstart/main/gnome-minimal.ks
  ```
4. Press <kbd>F10</kbd> to start the installation using the kickstart file

## 🛟 What's included

- The default Plymouth boot theme
- Bash colors (Fedora 40 or greater)
- Support for hardware, printing, virtualization, user sharing, and multimedia
- GNOME and Fedora backgrounds
- Flathub remote instead of the Fedora one for use with Flatpak
- Applications:
    - [Files](https://apps.gnome.org/Nautilus/)
    - [Software](https://apps.gnome.org/Software/)
    - [Help](https://apps.gnome.org/Yelp/)

## 📖 Help & documentation

- [GNOME apps](https://apps.gnome.org)
- [Pykickstart’s documentation](https://pykickstart.readthedocs.io/en/latest/index.html)
