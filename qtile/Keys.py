from libqtile import extension
from libqtile.config import Key
from libqtile.lazy import lazy

from constants import COLORS, FONTS, MOD, DEFAULT_APPLICATIONS

def Keys():

  # A list of available commands that can be bound to keys can be found
  # at https://docs.qtile.org/en/latest/manual/config/lazy.html
  switch_between_windows = [
    Key([MOD], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([MOD], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([MOD], "j", lazy.layout.down(), desc="Move focus down"),
    Key([MOD], "k", lazy.layout.up(), desc="Move focus up"),
    Key([MOD], "space", lazy.layout.next(), desc="Move window focus to other window"),
  ]

  # Move windows between left/right columns or move up/down in current stack.
  # Moving out of range in Columns layout will create new column.
  move_windows = [
    Key([MOD, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([MOD, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([MOD, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([MOD, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    Key([MOD, "shift"], 'a', lazy.prev_screen(), desc='Next monitor'),
    Key([MOD, "shift"], 'e', lazy.next_screen(), desc='Next monitor'),
  ]

  # Grow windows. If current window is on the edge of screen and direction
  # will be to screen edge - window would shrink.
  resize_windows = [
    Key([MOD, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([MOD, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([MOD, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([MOD, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([MOD], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    Key([MOD], "r", lazy.run_extension(extension.DmenuRun(
      dmenu_prompt=">",
      dmenu_font=FONTS["NORMAL"]['FAMILY'],
      background=COLORS["BLACK"],
      foreground=COLORS["WHITE"],
      selected_background=COLORS["PRIMARY"],
      selected_foreground=COLORS["WHITE"],
    )), desc="Spawn a command using a prompt widget"),
  ]

  # Launch applications
  launch_applications = [
    Key([MOD], "Return", lazy.spawn(DEFAULT_APPLICATIONS["TERMINAL"]), desc="Launch terminal"),
    Key([MOD], "b", lazy.spawn(DEFAULT_APPLICATIONS["BROWSER"]), desc="Launch browser"),
    Key([MOD], "f", lazy.spawn(DEFAULT_APPLICATIONS["FILE_MANAGER"]), desc="Launch file manager"),
    Key([MOD], "v", lazy.spawn(DEFAULT_APPLICATIONS["VS_CODE"]), desc="Launch vscode"),
  ]

  qtile_keys = [
    Key([MOD], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([MOD], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([MOD, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([MOD, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
  ]

  volume_keys = [
    Key([], "XF86AudioMute", lazy.spawn("amixer -q set Master toggle")),
    Key([], "XF86AudioLowerVolume", lazy.spawn("amixer -c 0 sset Master 5- unmute")),
    Key([], "XF86AudioRaiseVolume", lazy.spawn("amixer -c 0 sset Master 5+ unmute"))
  ]

  return [
    *switch_between_windows,
    *move_windows,
    *resize_windows,
    *launch_applications,
    *qtile_keys,
    *volume_keys,
  ]