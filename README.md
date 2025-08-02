# 💤 LazyVim

This is my personal configuration, there you can see my key bindings and the rest of default.

My knowledge of .lua is about zero, so the config is probably not ideal. But it works for me.
Advice from savvy people is welcome.

> It's very important, I'm using unusual movement key bindings

## This is my personal bindings

### Movement

1. `j`, `k`, `l`, `;` as left, down, up, right accordingly instead of `h`, `j`, `k`, `l` (it works in most of required plugins, but not everywhere)
2. `n` as jump to start of previous word instead of `b`
3. `b` and `B` as navigate to next/previous in search mode instead of `n` and `N`
4. `<leader>j`, `<leader>k`, `<leader>l`, `<leader>;` to move between splits
5. `<A-j>` and `<A-;>` to move to left and right buffers accordingly
6. `<leader>w` as split to right
7. `N` as go to definition, I don't know default binding for it
8. `<C-k>`, `<C-l>` to browse in blink.cmp floating window and `<C-y>` (which is default, but another keys are disabled) to select completion
9. `<A-j>`, `<A-;>` for moving between snippet control points

### Code actions and editing including plugins

1. `<C-j>` as delete char before cursor in insert mode instead of `<C-h>`, but `<C-h>` is still working
2. `<C-s>` as save file
3. `h` as hover tooltip, `K` is still working
4. `<leader>e` toggle Neo-tree
5. `<leader>rn` to IncRename as floating window
6. `<leader>sa` to mini.surround (visual only)
7. `S` for flash plugin
8. `<A-k>`, `<A-l>` move selected text up and down accordingly (visual)

## Useful commands

### Default movement

1. `w` move to start of next word
2. `e` move to end of word
3. `0` move to start of the line
4. `$` move to end of the line
5. `<C-u>`, `<C-d>` move page up and down accordingly
6. `<C-y>`, `<C-e>` slowly move page up and down accordingly without moving cursor
7. `gg`, `G` move start and end of file accordingly
8. `[number]gg` or `[number]G` to move to specific line

### Default editing

1. `r[symbol]` swap character under cursor
2. `x` clip selected text
3. `d` delete selected text (copy after deleting removed)
4. `y` copy selected text
5. `p`, `P` paste after and before cursor accordingly
6. `i`, `a` insert mode
7. `o`, `O` insert line below and above accordingly

### Combinations

1. `dw` delete word _after cursor_
2. `dd` delete line
3. `d^` delete to start of line _before cursor_
4. `D` delete to end of line _after cursor_
5. `yy` copy line
6. `yw` copy word _after cursor_
7. `~` toggle selected text register (visual)
8. `zc` close fold under cursor
9. `zo` open fold under cursor
10. `za` toggle fold under cursor
11. `zz` center line under cursor
12. `<leader>wv` vertical split
13. `<leader>wh` horizontal split
14. `<leader>wd` delete window
15. `<leader>gg` lazygit (cwd)

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
