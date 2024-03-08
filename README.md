## A custom config for [NVCHAD](https://github.com/NvChad/NvChad.git)
### What plugins does it provide out of the box?

- harpoon
- undotree
- vimwiki
- lightspeed
- markdownviewer

### Prerequisites:
- lua
- nvchad
- an internet connection

### How to install?

Firstly backup any existing custom/ directory:

```bash
mv ~/.config/nvim/lua/custom/ ~/.config/nvim/lua/custom.bak
```
and run the command:

```bash
git clone -b master https://github.com/razzat008/nvchad ~/.config/nvim/lua/custom/ 
```
