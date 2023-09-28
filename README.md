# Anaconda kickstart for Fedora

A collection of Anaconda kickstart files for Fedora.

Available kickstart files:

- [`38/gnome-minimal.ks`](38/gnome-minimal.ks)

## 🚀 Quick start

1. Download the network installer ISO from [https://alt.fedoraproject.org](https://alt.fedoraproject.org)
2. Boot the ISO and stop at Grub screen
3. Highlight "Install Fedora", press <kbd>e</kbd> and append:
  ```text
  inst.ks=https://raw.githubusercontent.com/gremo/fedora-kickstart/main/38/gnome-minimal.ks
  ```
4. Presso <kbd>F10</kbd> to start the installation unsing the kickstart file

## What's included

### Few tweaks

- Set Plymouth `bgrt` boot theme
- Add Fedora default third-party repositories
- Disable Flatpak `fedora` remote and add `flathub` remote

### Core

- GNOME and Fedora backgrounds
- Hardware, printing, virtualization, user sharing and multimedia support
- [Console](https://apps.gnome.org/Console/)
- [Disks](https://apps.gnome.org/DiskUtility/)
- [Files](https://apps.gnome.org/Nautilus/)
- [Tweaks](https://gitlab.gnome.org/GNOME/gnome-tweaks)
- [Software](https://apps.gnome.org/Software/)
- [System Monitor](https://apps.gnome.org/GnomeSystemMonitor/)

### Flatpak apps

- [Extension Manager](https://flathub.org/apps/com.mattjakeman.ExtensionManager)

## ✅ Validating

To validate the kickstart file install `ksvalidator` utility:

```bash
sudo dnf install -y pykickstart
```

Then run:

```bash
ksvalidator /path/to/kickstart.ks
```

## 📖 Help & documentation

- [Pykickstart’s documentation](https://pykickstart.readthedocs.io/en/latest/index.html)
