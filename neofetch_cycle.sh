#!/bin/bash

# Function to print the current distro
print_current_distro() {
    echo "DISTRO: $1"
}

# List of distros
distros=("Kali" "Kali_small" "kali_old" "AIX" "Alpine" "Anarchy" "Android" "Antergos" "antiX" "AOSC"
       "Apricity" "ArcoLinux" "ArchBox" "ARCHlabs" "ArchStrike"
       "XFerience" "ArchMerge" "Arch" "Artix" "Arya" "Bedrock" "Bitrig"
       "BlackArch" "BLAG" "BlankOn" "BlueLight" "bonsai" "BSD"
       "BunsenLabs" "Calculate" "Carbs" "CentOS" "Chakra" "ChaletOS"
       "Chapeau" "Chrom*" "Cleanjaro" "ClearOS" "Clear_Linux" "Clover"
       "Condres" "Container_Linux" "CRUX" "Cucumber" "Debian" "Deepin"
       "DesaOS" "Devuan" "DracOS" "DragonFly" "Drauger" "Elementary"
       "EndeavourOS" "Endless" "EuroLinux" "Exherbo" "Fedora" "Feren" "FreeBSD"
       "FreeMiNT" "Frugalware" "Funtoo" "GalliumOS" "Gentoo" "Pentoo"
       "gNewSense" "GNU" "GoboLinux" "Grombyang" "Guix" "Haiku" "Huayra"
       "Hyperbola" "janus" "Kali" "KaOS" "KDE_neon" "Kibojoe" "Kogaion"
       "Korora" "KSLinux" "Kubuntu" "LEDE" "LFS" "Linux_Lite"
       "LMDE" "Lubuntu" "Lunar" "macos" "Mageia" "MagpieOS" "Mandriva"
       "Manjaro" "Maui" "Mer" "Minix" "LinuxMint" "MX_Linux" "Namib"
       "Neptune" "NetBSD" "Netrunner" "Nitrux" "NixOS, Nurunner"
       "NuTyX" "OBRevenge" "OpenBSD" "OpenIndiana" "OpenMandriva"
       "OpenWrt" "osmc" "Oracle" "PacBSD" "Parabola" "Pardus" "Parrot"
       "Parsix" "TrueOS" "PCLinuxOS" "Peppermint" "POP_OS" "OpenSUSE" "popos" "Porteus"
       "PostMarketOS" "Proxmox" "Puppy" "PureOS" "Qubes" "Radix, Raspbian"
       "Reborn_OS" "Redstar" "Redcore" "Refracted_Devuan" "Regata"
       "Rosa" "sabotage" "Sabayon" "Sailfish" "SalentOS" "Scientific" "Septor"
       "SharkLinux" "Siduction" "Slackware" "SliTaz" "SmartOS" "Solus"
       "Source_Mage" "Sparky" "Star" "SteamOS" "SunOS" "openSUSE_Leap"
       "openSUSE_Tumbleweed" "openSUSE" "SwagArch" "Tails" "Trisquel"
       "Ubuntu-Budgie" "Ubuntu-GNOME" "Ubuntu-MATE" "Ubuntu-Studio" "Ubuntu"
       "Void" "Obarun" "windows10" "Windows7" "Xubuntu" "Zorin" "IRIX" "Redhat"
       "Redhat_old" "Redhat_small" "Ubuntu")

# Loop through the list of distros
for distro in "${distros[@]}"; do
    # Print the current distro
    print_current_distro "$distro"

    # Create a temporary file with the new ascii_distro value
    awk -v distro="$distro" '{gsub(/^ascii_distro=.*/, "ascii_distro=\"" distro "\"")}1' ~/.config/neofetch/config.conf > ~/.config/neofetch/temp_config.conf

    # Replace the original config file with the temporary one
    mv ~/.config/neofetch/temp_config.conf ~/.config/neofetch/config.conf

    # Display Neofetch
    neofetch

    # Sleep for 5 seconds (adjust the duration as needed)
    sleep 1

    # Clear the terminal
    clear
done
