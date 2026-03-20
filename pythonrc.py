import readline
import rlcompleter

if "libedit" in readline.__doc__:
    readline.parse_and_bind("bind -v")
    readline.parse_and_bind("bind ^I rl_complete")
    #readline.parse_and_bind('bind "kj" vi-command-mode')
else:
    readline.parse_and_bind("set editing-mode vi")
    readline.parse_and_bind("tab: complete")
