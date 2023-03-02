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

> Todos los pasos están recogidos aqui, con detalle. Tras clonar el repositorio, no hay un orden en los pasos, por lo que tienes total libertad de elegir la sección que te apetezca primero. 

> Empecemos: Debemos clonar el repositorio en un directorio que sea concurrido, por ejemplo el directorio fuente de tu usuario:
```bash
cd && git clone https://github.com/dpv927/bspwm-rice.git
# ahora el repositirio estará en la ruta /home/nombredetuusuario
```

## Polybar
> Usaremos polybar como nuestra status-bar. No obstante, debemos cambiar el tema que tiene por defecto a uno mas moderno y que esté 'sincronizado' con nuestro escritorio. Para ello, utilizaremos mi confguración personal de [Polybar Themes](https://github.com/adi1090x/polybar-themes). 

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

> Copia mi configuración de Polybar en el directorio de configuración:

```bash
cp -r bspwm-rice/polybar .config/polybar
```

> Alternativamente, puedes instalar todos los temas disponibles de [Polybar Themes](https://github.com/adi1090x/polybar-themes) como se indica en su sitio oficial y luego copiar mi configuración del tema 'cuts':

```bash
cp -r ~/bspwm-rice/polybar/cuts ~/.config/polybar/
```

## Wm: Bspwm
> Usaremos bspwm](https://github.com/baskerville/bspwm) como window manager. Copia la config:

```bash
cp -r ~/bspwm-rice/bspwm ~/.config/ # bspwm
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
sudo mv Breeze* /usr/share/iconsXorg
```

> Ahora debemos cabiar el contenido de algunos archivos para que se aplique el tema para el cursor:

```bash
# /usr/share/icons/default/index.theme
[Icon Theme]
Inherits=BreezeX-Light

# ~/.gtkrc-2.0
gtk-cursor-theme-name="BreezeX-Light"

# ~/.config/gtk-3.0/settings.ini
gtk-cursor-theme-name=BreezeX-Light
```

> Puede que te interese en este punto copiar el archivo ``.Xresources`` para tener disponible algunas configuraciones extra del X server. No obstante, en este archivo he cambiado el tamaño del cursor ya que a mi se me mostSiraba más pequeño de lo normal. Si no está al tamaño de tu gusto, cabia la siguiente línea:

```x
Xcursor.size: 30
```

## Terminal: st
> Yo uso la terminal de suckless con un tema custom, de modo que si lo quieres utilizar, simplemente copia mi carpeta 'st/' a tu directorio '~/.config'. Después debes compilar e instalar st:

```bash
# Suponiendo que copiaste el directorio st de este repositorio
cd ~/.config/st
sudo make clean install
```

## Prompt: Bash
> En mi caso, utilizo bash como interprete de ordenes de la shell, simplemente por costumbre. Puedes copiar tabién mi configuración:

```bash
# Hacer primero un respaldo de tu configuración
mv ~/.bashrc ~/.bashrc.bak

# Copiar el archivo desde el repo clonado
cp ~/bspwm-rice/.bashrc ~/.bashrc
```
