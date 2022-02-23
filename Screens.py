from libqtile.config import Screen
from libqtile import bar

from constants import COLORS, SCREEN_CONFIG

def Screens(widgets):
  top_bar = bar.Bar(widgets, 30, background=COLORS["BLACK"])

  return [
      Screen(
        **SCREEN_CONFIG,
        top=top_bar,
      ),
      Screen(
        **SCREEN_CONFIG,
        top=top_bar,
      ),
  ]