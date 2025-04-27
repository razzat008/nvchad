## A custom config for [NVCHAD](https://github.com/NvChad/NvChad.git) v2.0

As this config is for the v2.0 version NvChad; clone the v2.0 branch
```bash
git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim && nvim
```

### What plugins does it provide out of the box?

- harpoon : easliy navigate between files
- undotree : git timeline
- vimwiki : for notes 
- lightspeed : move anywhere with few keystrokes
- peek : a markdown viewer

### Prerequisites:
- lua
- nvchad's base config (**v2.0**)
- an internet connection

### How to install?

Firstly backup any existing custom/ directory:

```bash
mv ~/.config/nvim/lua/custom/ ~/.config/nvim/lua/custom.bak
```
and run the command:

```bash
git clone -b v2.0 https://github.com/razzat008/nvchad ~/.config/nvim/lua/custom/ 
```

If you want to use multiple configs simultaneously:
```bash
alias nv='NVIM_APPNAME="another" nvim'
```
for above to run you **must** clone the config into ```~/.config/another```
