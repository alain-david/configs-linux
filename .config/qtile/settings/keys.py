from libqtile.config import Key
from libqtile.command import lazy

mod = "mod4"

keys = [Key(key[0], key[1], *key[2:]) for key in [
    # ------------ Window Configs ------------

    # Switch between windows
    ([mod], "j", lazy.layout.down()),
    ([mod], "k", lazy.layout.up()),
    ([mod, "shift"], "j", lazy.layout.shuffle_down()),
    ([mod, "shift"], "k", lazy.layout.shuffle_up()),

    # Change window sizes (MonadTall)
    ([mod], "l", lazy.layout.grow()),
    ([mod], "h", lazy.layout.shrink()),

    # Toggle floating
    ([mod], "t", lazy.window.toggle_floating()),

    # Kill window
    ([mod], "w", lazy.window.kill()),

    # Restart Qtile
    ([mod], "q", lazy.restart()),
    ([mod, "shift"], "q", lazy.shutdown()),

    # Toggle between different layouts as defined below
    ([mod], "Tab", lazy.next_layout()),

    # Switch focus of monitors
    ([mod], "period", lazy.next_screen()),
    ([mod], "comma", lazy.prev_screen()),

    # ------------ App Configs ------------

    # Menu
    ([mod], "p", lazy.spawn("rofi -show drun")),

    # Window Nav
    ([mod, "shift"], "p", lazy.spawn("rofi -show")),

    # Browser
    ([mod], "b", lazy.spawn("firefox")),

    # File Explorer
    ([mod], "e", lazy.spawn("pcmanfm")),

    # Terminal
    ([mod], "Return", lazy.spawn("alacritty")),
    
    # Code 
    ([mod], "c", lazy.spawn("code")),

    # Musik
    ([mod], "m", lazy.spawn("rhythmbox")),

    # VLC
    ([mod], "v", lazy.spawn("vlc")),   

    # Screenshot
    ([mod], "s", lazy.spawn("scrot")),
    ([mod, "shift"], "s", lazy.spawn("scrot -s")),

    # ------------ Hardware Configs ------------

    # Volume
    ([], "XF86AudioLowerVolume", lazy.spawn("amixer set Master 5%-")),
    ([], "XF86AudioRaiseVolume", lazy.spawn("amixer set Master 5%+")),
    ([], "XF86AudioMute", lazy.spawn("amixer set Master toggle")),

    # Brightness
    ([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +10%")),
    ([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 10%-")),
]]
