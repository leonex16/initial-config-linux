from libqtile import layout
from constants import LAYOUT_CONFIG

def Layout():
  return [
    layout.Columns(**LAYOUT_CONFIG),
    layout.Max(**LAYOUT_CONFIG),
    # layout.MonadTall(**LAYOUT_CONFIG),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
  ]
