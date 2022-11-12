# Intalar paquetes bases:  

```bash
sudo pacman -S alacritty lightdm lightdm-gtk-greeter qtile rofi xorg xorg-xinit
```
Activa el servicio de lightdm :

    sudo systemctl enable lightdm

Reinicia. 

# Utilidades básicas del sistema

## Almacenamiento

    sudo pacman -S ntfs-3g

Para montar una unidad ejecutaremos el siguiente comando:
```bash
# /dev/sdxx la unidad y /mnt/ntfs punto de montaje
sudo mount /dev/sdxx /mnt/ntfs
```
Si queremos que la unidad NTFS siempre este desde el inicio hay que modificar el fichero fstab:

    sudo nano /etc/fstab

Aquí debemos añadir una línea de código más que indique cómo debe montar la unidad NTFS:

    /dev/sdxx /mnt/ntfs ntfs-3g defaults 0 0

## Brillo

    sudo pacman -S brightnessctl

Establecer los atajos de teclado en:

```python
# Brillo
Key([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
Key([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),
```
## Audio

    sudo pacman -S alsa-utils pamixer

Establecer los atajos de teclado en:

```python
# Volumen
([], "XF86AudioLowerVolume", lazy.spawn("amixer set Master 5%-")),
([], "XF86AudioRaiseVolume", lazy.spawn("amixer set Master 5%+")),
([], "XF86AudioMute", lazy.spawn("amixer set Master toggle")),
```

Activa el audio porque está en "mute". 

## Systray

Instalar iconos para la batería, discos, red y el volumen:

    sudo pacman -S trayer cbatticon network-manager-applet udiskie volumeicon pacman-contrib python-psutil
    cbatticon &
    nm-applet &
    udiskie -t &
    volumeicon &

## AUR helper
Instalar **[paru](https://github.com/Morganamilo/paru)**:

```bash
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
## Perzonalizar

### Fuentes

    paru -S nerd-fonts-ubuntu-mono

Para listar todas las fuentes disponibles:

    fc-list

### Fondo de pantalla

    sudo pacman -S feh
    feh --bg-scale ruta/al/fondo/de/pantalla

### Tema de GTK

Instalar iconos, tema y transparencia:

    sudo pacman -S picom lxappearance materia-gtk-theme papirus-icon-theme

### Tema rofi

    sudo pacman -S which
    rofi-theme-selector

### Tema de lightdm

    sudo pacman -S lightdm-webkit2-greeter
    paru -S lightdm-webkit2-theme-glorious

Estas son las configuraciones que tienes que hacer:
```ini
# /etc/lightdm/lightdm.conf
[Seat:*]
# ...
# Descomenta esta línea y pon este valor
greeter-session = lightdm-webkit2-greeter
# ...

# /etc/lightdm/lightdm-webkit2-greeter.conf
[greeter]
# ...
debug_mode = true #true #false
webkit_theme = glorious
```
Para cambiar el avatar:

	paru -S mugshot

### Tema Grub

Ruta donde copiar los temas:

    /boot/grub/themes

Modifique /etc/default/grub:
```ini
GRUB_THEME="/boot/grub/themes/NombreDeTema/theme.txt"
```
Regenere grub.cfg para aplicar los cambios:

    sudo grub-mkconfig -o /boot/grub/grub.cfg

Aparecerá el mensaje Found theme: /boot/grub/themes/starfield/theme.txt. 

## Xprofile

Puedes usar *.xprofile* para lanzar programas antes de que se ejecute
el gestor de ventanas:

    nano .xprofile

Dentro pega esto:

```bash
~/.fehbg & # Fondo
picom & # Compositor
cbatticon & # Systray bateria
nm-applet & # Systray Network Manager
udiskie -t & # Systray dispositivos
volumeicon & # Systray volume
```
## Gestos

Crea 30-touchpad.conf para configurar los gestos
    
    sudo nvim /etc/X11/xorg.conf.d/30-touchpad.conf
Dentro pega esto:
```bash
Section "InputClass"
	Identifier "touchpad"
	Driver "libinput"
	Option "Tapping" "on"
EndSection
```
## Media Transfer Protocol

Conectar teléfono usando un cable USB:

```bash
sudo pacman -S libmtp mtpfs gvfs-mtp
paru -S simple-mtpfs
# Lista todos los dispositivos conectados
simple-mtpfs -l
```
