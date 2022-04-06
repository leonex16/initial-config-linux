from libqtile import widget

from constants import WIDGETS_CONFIG

def Widgets():
  def workspaces():
    return [
        widget.GroupBox(**WIDGETS_CONFIG['GROUP_BOX'])
    ]

  def powerline_base():
    return [
      # widget.Wlan(),
      # widget.KeyboardLayout(**WIDGETS_CONFIG['KEYBOARD']),
      widget.WindowName(),
      widget.Spacer(),
      widget.Sep(**WIDGETS_CONFIG['SEP']),
      widget.PulseVolume(),
      widget.Sep(**WIDGETS_CONFIG['SEP']),
      widget.Battery(**WIDGETS_CONFIG['BATTERY']),
      widget.Sep(**WIDGETS_CONFIG['SEP']),
      widget.Clock( **WIDGETS_CONFIG['CLOCK']),
    ]
  
  return [
    *workspaces(),
    *powerline_base()
  ]
