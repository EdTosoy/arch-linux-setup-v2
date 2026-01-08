# Minimal i3 Setup – 100% Screen Usage / Gruvbox

A clean and minimal i3 setup optimized for **100% screen usage**, with a Gruvbox-inspired color scheme. Perfect for users who want a **lightweight, distraction-free desktop** with essential functionality only.

---

## Features

- 100% screen usage – no status bars, no i3blocks, no polybar
- Gruvbox color scheme for visual comfort
- Minimal autostart apps:
  - NetworkManager tray (`nm-applet`)
  - Compositor (`picom`)
  - Wallpaper with `feh`

- Default applications:
  - Terminal: `kitty`
  - Browser: `zen-browser`
  - Launcher: `rofi`
  - Screenshot: `flameshot`

- Basic keybindings for windows, workspaces, media, and audio

---

## Required Packages

Install the following **essential packages** on Arch Linux:

```bash
sudo pacman -S --needed i3 picom feh kitty rofi flameshot nm-applet wpctl playerctl xorg-xinit xorg-xrandr xorg-xset xorg-xsetroot
```

Optional packages for a better experience:

```bash
sudo pacman -S --needed lxappearance ttf-dejavu ttf-jetbrains-mono ttf-meslo-nerd-font-powerlevel10k
```

### AUR Packages

Recommended AUR packages (requires `yay`):

```bash
yay -S --needed zen-browser-bin antigravity banana-cursor-bin beeper-v4-bin bibata-cursor-theme fnm-bin libpamac-aur pamac-aur rose-pine-cursor rose-pine-gtk-theme spotify ttf-meslo-nerd-font-powerlevel10k yay
```

### Installing AUR Packages Without Yay

If you don’t have `yay`, you can install AUR packages manually:

```bash
# Example for zen-browser-bin
git clone https://aur.archlinux.org/zen-browser-bin.git
cd zen-browser-bin
makepkg -si
```

Repeat for any other AUR package listed in the required packages section.

---

## Installation

1. Clone this repository:

```bash
git clone https://github.com/yourusername/i3-setup.git
```

2. Copy the config files to your i3 directory:

```bash
mkdir -p ~/.config/i3
cp config ~/.config/i3/config
```

3. Optional: Copy wallpapers:

```bash
mkdir -p ~/wallpapers
cp wallpapers/* ~/wallpapers/
```

4. Restart i3 (Mod+Shift+R) or logout/login.

---

## Cleanup Unused Scripts

Your `scripts/` folder contains optional scripts. For this minimal setup, you can safely remove the following:

```
powermenu        # Not used (logout/shutdown via terminal)
blur-lock        # Not used (lockscreen not configured)
pomodoro.sh      # Optional
volume           # Optional
volume_brightness.sh  # Optional
test.sh          # Optional
miei             # Optional
bell.wav         # Optional
bell_end.wav     # Optional
```

Keep only scripts you actively use.

---

## Usage

- **Mod+Return** → Open terminal (`kitty`)
- **Mod+d** → Open application launcher (`rofi`)
- **Mod+h/j/k/l** → Move focus (Vim style)
- **Mod+Shift+h/j/k/l** → Move windows
- **Mod+f** → Toggle fullscreen
- **Mod+Shift+s** → Change wallpaper (shortcut)
- **Media keys** → Control volume and playback

> `Mod` is the **Super/Windows key** by default.

---

## Gruvbox Theme & Appearance

Colors used in this setup:

```
$bg         #282828
$red        #cc241d
$green      #98971a
$yellow     #d79921
$blue       #458588
$purple     #b16286
$aqua       #689d68
$gray       #a89984
$darkgray   #1d2021
$white      #ffffff
```

- Fonts: `Proxima Nova 12`
- Cursor: `Banana` (can replace with your preference)
- Wallpaper: `~/.config/i3/batArch.webp` (can replace with your own)

Window decoration colors in i3:

```
client.focused          $green  $green  $darkgray $green    $green
client.focused_inactive $darkgray $darkgray $yellow $darkgray $darkgray
client.unfocused        $darkgray $darkgray $yellow $darkgray $darkgray
client.urgent           $red    $red    $white    $red      $red
```

---

## Customization

- Change terminal in `config`
- Update wallpaper paths in `config`
- Adjust Gruvbox colors in the color section
- Add/remove custom keybindings

---

## Notes

- **No status bars or lock screen** – minimal and distraction-free
- Only essential scripts are used in this setup
- Works best on Arch Linux or Arch-based distributions

---

**Enjoy your clean and efficient i3 environment!**
