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

> Todos los pasos están recogidos aqui, con detalle. No saltes pasos o puedes causar un desastre con todo lo que tenias anteriormente.

## Polybar
> Usaremos polybar como nuestra status-bar. No obstante, debemos cambiar el tema que tiene por defecto a uno mas moderno y que esté 'sincronizado' con nuestro escritorio. Para ello, utilizaremos [Polybar Themes](https://github.com/adi1090x/polybar-themes).


**Dependencias:**
- **`Polybar`**
- **`Rofi`**
- **`pywal`**
- **``calc``**
- **``networkmanager_dmenu``**

```bash
sudo pacman -S polybar rofi python-pywal calc
yay -S networkmanager-dmenu-git
```

**Fuentes**

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

> Instalar Iosevka Nerd Font mediante la <a href="https://www.nerdfonts.com/font-downloads">página oficial de Nerd Fonts</a>. Descomprimir .zip y mover fuentes en /usr/share/fonts. Finalmente, instalar el resto de fuentes:

```bash
yay -S ttf-fantasque-sans-mono ttf-droid noto-fonts terminus-font ttf-icomoon-feather ttf-material-icons-git siji-git
````

> Actualizar la cache de las fuentes:

```bash
fc-cache -fv
```

<!--                      GTK theme installation section                     -->
## GTK Configuration

> Los temas recomendados para el escritorio, ventanas y cursor son los siguientes:
- <a href="https://github.com/vinceliuice/Orchis-theme">GTK Theme (Orchis grey)</a>
- <a href="https://github.com/ful1e5/BreezeX_Cursor">Cursor (Breeze Light)</a>

> El tema de GTK es oscuro ya que el fondo de pantalla y polybar son oscuros, pero eligiremos un tema claro para el cursor para que haga contraste y se vea correctamente. 
Si no lo has hecho, descarga los archivos .tar.gz, decomprimelos y muevelos a sus respectivas rutas:

```bash
tar -xf Orchis*.gz
rm Orchis*.gz
sudo mv Orchis* /usr/share/themes

tar -xf Breeze*.gz
rm Breeze*.gz
sudo mv Breeze* /usr/share/icons
```
