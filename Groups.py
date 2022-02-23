from libqtile.config import Group, Key
from libqtile.lazy import lazy

from constants import MOD

def Groups(keys):

  _groups = {
      1: Group("TER"),
      2: Group("WWW"),
      3: Group("DEV"),
      4: Group("MUS"),
  }

  groups = [_groups[i] for i in _groups]

  def get_group_key(name):
      return [k for k, g in _groups.items() if g.name == name][0]

  for i in groups:
    keys.extend([
        Key([MOD], str(get_group_key(i.name)), lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

        Key([MOD, "shift"], str(get_group_key(i.name)),
            lazy.window.togroup(i.name, switch_group=True),
            desc="Switch to & move focused window to group {}".format(i.name)),
    ])

  # This must create groups again
  return [_groups[i] for i in _groups]

