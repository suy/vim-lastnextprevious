          ╻  ┏━┓┏━┓╺┳╸   ┏┓╻┏━╸╻ ╻╺┳╸   ┏━┓┏━┓┏━╸╻ ╻╻┏━┓╻ ╻┏━┓
          ┃  ┣━┫┗━┓ ┃    ┃┗┫┣╸ ┏╋┛ ┃    ┣━┛┣┳┛┣╸ ┃┏┛┃┃ ┃┃ ┃┗━┓
          ┗━╸╹ ╹┗━┛ ╹    ╹ ╹┗━╸╹ ╹ ╹    ╹  ╹┗╸┗━╸┗┛ ╹┗━┛┗━┛┗━┛

*lastnextprevious* is a Vim plugin that saves the user of typing repeatedly
some movement (or action) commands that are short, but hard to press
repeatedly (specially in some keyboard layouts).

With this plugin, when the user performs one of the configured movements by
pressing the appropriate key strokes, the movement is performed as usual, but
the type of movement is also saved ("last") for later. So if it has to be
repeated ("next"), or it has to be performed in the other direction
("previous"), the user might save some inconvenient key pressing using the
configured shortcut.

For example, moving one tab page backwards is not difficult: just press |gT|.
However, if you want to review all tab pages one by one, your fingers will
have to repeat gTgTgTgT... Likewise, imagine pressing repeatedly |g;| for
revisiting the places where you did changes to a file, possibly reversing the
sense of the movement: g;g;g;g,g;...

The solution offered is to press the keys for the desired movement first, then
act as wanted on that place, and later, when needed, press a simpler key
mapped to this plugin.

To see the full documentation, check the file in the "doc" directory, or see it
online at:

https://raw.github.com/suy/vim-lastnextprevious/master/doc/lastnextprevious.txt

Or HTML formatted (thanks to Kana Natsuno's vim-doc.heroku.com) at:

http://ur1.ca/ajl4x
