#!/bin/bash

# Configuration script for my LaTeX environment.
# Must have pacman & yay (AUR) 
#
# install texlive-core package for most basic ctan packages
sudo pacman -Sy texlive-core
# install tikzit (graphical tikz editor)
#yay -S tikzit

# tllocalmgr is required to fix texlive-core tlmgr (needed upstream)
yay -S tllocalmgr-git

# update pgf, csquotes for block quotes, and japanese font rendering
tllocalmgr install pgf csquotes luatexja haranoaji haranoaji-extra

# refresh latex packages (as root)
sudo texhash
