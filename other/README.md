# Ubuntu / Mint

## Set natural scrolling direction

Edit the file `/usr/share/X11/xorg.conf.d/40-libinput.conf`, adding `Option "NaturalScrolling" "on"` in the `Identifier "libinput pointer catchall"` section, like so:

```
  Section "InputClass"
          Identifier "libinput pointer catchall"
          MatchIsPointer "on"
          MatchDevicePath "/dev/input/event*"
          Option "NaturalScrolling" "on"
          Driver "libinput"
  EndSection
```

[Source](https://forums.linuxmint.com/viewtopic.php?f=90&t=128374#p1585057)
