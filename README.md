### Backup your current nvim folder

`mv ~/.config/nvim ~/.config/nvim.bak`

### Clear cache

```
rm -rf ~/.local/share/nvim
```

```
rm -rf ~/.cache/nvim
```

### Clone AstroNvim

```
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

### Clone this config

```
git clone https://github.com/gvlatko/astro-nvim-custom.git ~/.config/nvim/lua/user
```

### Run packer

```
nvim +PackerSync
```

### or

```
nvim  --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
