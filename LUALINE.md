To enable the `github` theme for `Lualine`, simply specify it in your lualine settings:

> Set `lualine` configuration **before** `github-theme`. otherwise, the `hide_inactive_statusline` option won't work.

### packer

```lua
use {
  "hoob3rt/lualine.nvim",
  config = function()
    require("lualine").setup {
      options = {
        theme = "github"
        -- ... your lualine config
      }
    }
  end
}
use {
  "projekt0n/github-nvim-theme",
  after = "lualine.nvim",
  config = function()
    require("github-theme").setup({
      theme_style = "dark_default"
      -- your github config
    })
  end
}
```

### init.vim

```vim
lua << EOF
require('lualine').setup {
  options = {
    theme = 'github',
    -- ... your lualine config
  }
}
EOF
```

### init.lua

```lua
require('lualine').setup {
  options = {
    theme = 'github',
    -- ... your lualine config
  }
}
```

### Screenshots

#### dark

![normal](https://imgur.com/jUr5BVk.png)
![insert](https://imgur.com/g0N8LzF.png)
![visual](https://imgur.com/MfJmoKn.png)
![command](https://imgur.com/kpkvWsA.png)

#### dark_default

![normal](https://imgur.com/BpoAoRK.png)
![insert](https://imgur.com/3ZOGEV7.png)
![visual](https://imgur.com/7NpCZiP.png)
![command](https://imgur.com/XfiPni9.png)

#### dimmed

![normal](https://imgur.com/vQcPu6L.png)
![insert](https://imgur.com/FfFPpKB.png)
![visual](https://imgur.com/pR5j9oE.png)
![command](https://imgur.com/oKnjGrj.png)

#### light

![normal](https://imgur.com/KBsO3JX.png)
![insert](https://imgur.com/yMvEPRR.png)
![visual](https://imgur.com/30aMdJl.png)
![command](https://imgur.com/DIgPCoa.png)

#### light_default

![normal](https://imgur.com/qzXLS8f.png)
![insert](https://imgur.com/AWTAIXy.png)
![visual](https://imgur.com/5rfuCuA.png)
![command](https://imgur.com/CEREFqn.png)
