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

![normal](https://imgur.com/zBRwlUm.png)
![insert](https://imgur.com/n5DG48e.png)
![visual](https://imgur.com/MWQXJLD.png)
![command](https://imgur.com/HGIYVSN.png)
![terminal](https://imgur.com/pEWjIJ8.png)

#### dark_default

![normal](https://imgur.com/yHa1cK1.png)
![insert](https://imgur.com/mMX2364.png)
![visual](https://imgur.com/SNwhnph.png)
![command](https://imgur.com/aLifoAv.png)
![terminal](https://imgur.com/Q7mG5m8.png)

#### dimmed

![normal](https://imgur.com/R800MhA.png)
![insert](https://imgur.com/42M0X0O.png)
![visual](https://imgur.com/euIfZtW.png)
![command](https://imgur.com/E4tzBCD.png)
![terminal](https://imgur.com/RASnrFw.png)

#### light

![normal](https://imgur.com/om8f3S5.png)
![insert](https://imgur.com/qawZ4G6.png)
![visual](https://imgur.com/3j3ThxU.png)
![command](https://imgur.com/ItcANVN.png)
![terminal](https://imgur.com/8SgNyIU.png)

#### light_default

![normal](https://imgur.com/lwTCVXc.png)
![insert](https://imgur.com/zh9uPGS.png)
![visual](https://imgur.com/e3xYvfu.png)
![command](https://imgur.com/TrjrA3i.png)
![terminal](https://imgur.com/7ukHRhL.png)
