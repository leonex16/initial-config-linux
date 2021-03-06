
from libqtile.utils import guess_terminal

DEFAULT_APPLICATIONS = {
  'TERMINAL': guess_terminal(),
  'BROWSER': 'microsoft-edge-stable',
  'FILE_MANAGER': 'thunar',
  'VS_CODE': 'code'
}

MOD = "mod4"

WALLPAPER = "~/.config/qtile/wallpaper.jpg"

AUTOSTART = [
  # xrandr --output eDP1 --mode 1920x1080 --output DP1 --mode 1920x1080 --right-of eDP1 --output HDMI1 --mode 1280x800 --left-of eDP1
  "xrandr --output eDP1 --mode 1920x1080 --output DP1 --mode 1920x1080 --right-of eDP1 &",
  "input-remapper-control --command autoload &",
  "picom &",
  "setxkbmap -layout latam -variant dvorak &",
]

COLORS = {
    'PRIMARY': '#00BCFF',
    'WARNING': '#FFC00D',
    'ERROR': '#FF430D',
    'WHITE': '#FAFAFA',
    'BLACK': '#222222',
  }

FONTS = {
    'NORMAL': {
      'FAMILY': 'Cascadia Code',
      'SIZE': 16
    }
  }

LAYOUT_CONFIG = {
    'border_normal': COLORS["WHITE"],
    'border_focus': COLORS["PRIMARY"],
    'border_width': 4,
    'margin': 8,
  }

WIDGET_DEFAULT = {
  'font': FONTS["NORMAL"]["FAMILY"],
  'fontsize': FONTS["NORMAL"]["SIZE"],
  'padding': 4,
}

WIDGETS_CONFIG = {
  'GROUP_BOX': {
      'font': FONTS['NORMAL']['FAMILY'],
      'fontsize': FONTS['NORMAL']['SIZE']
  },

  'CLOCK': {
      'font': FONTS['NORMAL']['FAMILY'],
      'fontsize': FONTS['NORMAL']['SIZE'],
      'format': '%d / %m / %Y - %H:%M '
      #'timezone' : 'Chile/Cotinental'
  },

  'BATTERY': {
      'font': FONTS['NORMAL']['FAMILY'],
      'fontsize': FONTS['NORMAL']['SIZE'],
      'charge_char' : 'C',
      'discharge_char' : 'D',
      'full_char' : 'F',
      'format' : '{char} {percent:2.0%}'
  },

  'KEYBOARD': {
      'font': FONTS['NORMAL']['FAMILY'],
      'fontsize': FONTS['NORMAL']['SIZE'],
      'configured_keyboards' : ['dvorak-la'],
      'display_map' : {'es' : 'cl'},
  },

  'SEP': {
      'foreground' : COLORS["BLACK"]
  },
}


SCREEN_CONFIG = {
  'wallpaper': WALLPAPER,
  'wallpaper_mode': 'fill',
}
