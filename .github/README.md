# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

```shell
mv ~/.config/nvim ~/.config/nvim.bak # Make a backup of your current nvim and shared folder
mv ~/.local/share/nvim ~/.local/share/nvim.bak
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim # Clone AstroNvim
git clone https://github.com/eelko/astronvim_config ~/.config/nvim/lua/user # Clone this repos
```

#### Start Neovim

```shell
nvim
```

### Switching mechanism for multiple nvim instances

```shell
# Switching mechanism for neovim setups (Astronvim vs personal setup)
switchnvim() {
    mv ~/.config/nvim ~/.config/nvim_old
    mv ~/.config/nvim.switch ~/.config/nvim
    mv ~/.config/nvim_old ~/.config/nvim.switch

    mv ~/.local/share/nvim ~/.local/share/nvim_old
    mv ~/.local/share/nvim.switch ~/.local/share/nvim
    mv ~/.local/share/nvim_old ~/.local/share/nvim.switch
}     
```
