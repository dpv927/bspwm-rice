<p align="center">
  <b> ~ dpv927's configuration files ~ </b>
</p>

<img src="preview.png">

The [setup section](#setup) will guide you through the installation process.<br>
Here are some details about my setup:

- **WM:** [bspwm](https://github.com/baskerville/bspwm)
- **OS:** [archLabs](https://archlabslinux.com/)
- **Terminal:** [st](https://st.suckless.org/)
- **Compositor:** [picom](https://github.com/ibhagwan/picom)
- **Status Bar:** [polybar](https://github.com/polybar/polybar)
- **Editor:** [nvchad](https://nvchad.com/)
- **Browser:** [firefox](https://www.mozilla.org/en-US/firefox)
- **File Manager:** [thunar](https://github.com/xfce-mirror/thunar)
- **Application Launcher:** [rofi](https://github.com/davatorium/rofi)

---

## Setup

> All the steps are detailed here. After cloning the repository, there is no particular order to the steps, so you have complete freedom to choose which section you want to start with first.

> Let's begin: We need to clone the repository into a directory, for example your user's one:
```bash
cd && git clone https://github.com/dpv927/bspwm-rice.git
# Now the repo is located at /home/yourusername
```

## Polybar
> We will be using Polybar as our status bar. However, we need to change the default theme to a more modern one that is 'synchronized' with our desktop. To do this, we will use my personal configuration of [Polybar Themes](https://github.com/adi1090x/polybar-themes). 

**Dependencies:**
- **``Polybar``**
- **``Rofi``**
- **``pywal``**
- **``calc``**
- **``networkmanager_dmenu``**

```bash
sudo pacman -S polybar rofi python-pywal calc
yay -S networkmanager-dmenu-git
```

**``Text Fonts``**
- Iosevka Nerd Font
- Fantasque Sans Mono
- Noto Sans
- Droid Sans
- Terminus

**``Icon Fonts``**
- Iosevka Nerd Font
- Icomoon Feather
- Material Icons
- Waffle (Siji)

> Install Iosevka Nerd Font through the [official Nerd Fonts website](https://www.nerdfonts.com/font-downloads). Unzip the file and move the fonts to /usr/share/fonts. Finally, install the remaining fonts:

```bash
yay -S ttf-fantasque-sans-mono ttf-droid noto-fonts terminus-font ttf-icomoon-feather ttf-material-icons-git siji-git
````

> Update font cache:

```bash
fc-cache -fv
```

> Copy my Polybar configuration to the 'config' directory:

```bash
cp -r ~/bspwm-rice/polybar ~/.config/polybar
```

> Alternatively, you can install all the available themes from [Polybar Themes](https://github.com/adi1090x/polybar-themes) as instructed on their official site, and then copy my 'cuts' theme configuration:

```bash
cp -r ~/bspwm-rice/polybar/cuts ~/.config/polybar/
```

## Wm: Bspwm
> We will use [bspwm](https://github.com/baskerville/bspwm) as our window manager. Copy the config:

```bash
cp -r ~/bspwm-rice/bspwm ~/.config/
```

## GTK Configuration

> The recommended themes for the desktop, windows, and the cursor are:
- [GTK Theme (Orchis grey)](https://github.com/vinceliuice/Orchis-theme)
- [Cursor (Breeze Light)](https://github.com/ful1e5/BreezeX_Cursor)

> The GTK theme is dark since the wallpaper and Polybar are also dark, but we will choose a light theme for the cursor to provide contrast and make it clearly visible. If you haven't done it already, download the .tar.gz files, extract them, and move them to their respective paths:

```bash
tar -xf Orchis*.gz
rm Orchis*.gz
sudo mv Orchis* /usr/share/themes

tar -xf Breeze*.gz
rm Breeze*.gz
sudo mv Breeze* /usr/share/iconsXorg
```

> Now we need to change the contents of some files so the cursor theme is applied:

```bash
# /usr/share/icons/default/index.theme
[Icon Theme]
Inherits=BreezeX-Light

# ~/.gtkrc-2.0
gtk-cursor-theme-name="BreezeX-Light"

# ~/.config/gtk-3.0/settings.ini
gtk-cursor-theme-name=BreezeX-Light
```

> At this point, you may be interested in copying the ``.Xresources`` file to have access to some extra X server configurations. However, in this file I have changed the cursor size because it appeared smaller than usual to me. If it is not the size you prefer, change the following line:

```x
Xcursor.size: 30
```

## Terminal: st
> I use the suckless terminal with a custom theme, so if you want to use it, simply copy my 'st/' folder to your '~/.config' directory. Then you must compile and install st:

```bash
# Assuming you copied the st directory from this repository
cd ~/.config/st
sudo make clean install
```

## Prompt: Bash
> In my case, I use bash as the shell's command interpreter, simply out of habit. You can also copy my configuration:

```bash
# Make a backup of your configuration first"
mv ~/.bashrc ~/.bashrc.bak

# Copy the file from the cloned repository
cp ~/bspwm-rice/.bashrc ~/.bashrc
```

## Editor: Nvchad

> I always use [neovim](https://neovim.io/) as my editor. However, I also use it to write and develop my code so I use [nvchad](https://nvchad.com/) to achieve a similar look to what any IDE like vscode offers. If you want to have the same look as in my theme, install nvchad and then copy my configuration file:

```bash
cp -r ~/bspwm-rice/nvim/lua/core/* ~/.config/nvim/lua/core/
```

## Program launcher: Rofi
> I made a custom rofi theme based in the polybar-themes rofi config, changing the colorscheme to match the desktop theme:

```bash
cp -r ~/bspwm-rice/rofi* ~/.config/
``` 

> Instead of that, you can create a 'rofi' folder at your config dir and create a symlink to the polybar's rofi config:

```bash
cd ~/.config
mkdir rofi
ln -s rofi ~/.config/polybar/cuts/scripts/rofi
```
