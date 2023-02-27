To enable the `github` theme for `Lualine`, simply specify it in your lualine settings **after theme settings**.

### packer

```lua
use {
  'nvim-lualine/lualine.nvim',
  after = 'github-nvim-theme',
  config = function()
    require('lualine').setup {
      options = {
        theme = 'auto' -- or you can assign github themes individually.
        -- ... your lualine config
      }
    }
  end
}
use {
  'projekt0n/github-nvim-theme',
  config = function()
    require('github-theme').setup({
      theme_style = 'dark_default'
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
    theme = 'auto' -- or you can assign github themes individually.
    -- ... your lualine config
  }
}
EOF
```

### init.lua

```lua
require('lualine').setup {
  options = {
    theme = 'auto' -- or you can assign github_* themes individually.
    -- ... your lualine config
  }
}
```

### Screenshots

#### github_dark

![normal](https://imgur.com/zBRwlUm.png)
![insert](https://imgur.com/n5DG48e.png)
![visual](https://imgur.com/MWQXJLD.png)
![command](https://imgur.com/HGIYVSN.png)
![terminal](https://imgur.com/pEWjIJ8.png)

#### github_dimmed

![normal](https://imgur.com/R800MhA.png)
![insert](https://imgur.com/42M0X0O.png)
![visual](https://imgur.com/euIfZtW.png)
![command](https://imgur.com/E4tzBCD.png)
![terminal](https://imgur.com/RASnrFw.png)

#### github_dark_default

![normal](https://imgur.com/yHa1cK1.png)
![insert](https://imgur.com/mMX2364.png)
![visual](https://imgur.com/SNwhnph.png)
![command](https://imgur.com/aLifoAv.png)
![terminal](https://imgur.com/Q7mG5m8.png)

#### github_dark_colorblind

![normal](https://imgur.com/yHa1cK1.png)
![insert](https://imgur.com/mMX2364.png)
![visual](https://imgur.com/SNwhnph.png)
![command](https://imgur.com/aLifoAv.png)
![terminal](https://imgur.com/Q7mG5m8.png)

#### github_light

![normal](https://imgur.com/om8f3S5.png)
![insert](https://imgur.com/qawZ4G6.png)
![visual](https://imgur.com/3j3ThxU.png)
![command](https://imgur.com/ItcANVN.png)
![terminal](https://imgur.com/8SgNyIU.png)

#### github_light_default

![normal](https://imgur.com/lwTCVXc.png)
![insert](https://imgur.com/zh9uPGS.png)
![visual](https://imgur.com/e3xYvfu.png)
![command](https://imgur.com/TrjrA3i.png)
![terminal](https://imgur.com/7ukHRhL.png)

#### github_light_colorblind

![normal](https://imgur.com/lwTCVXc.png)
![insert](https://imgur.com/zh9uPGS.png)
![visual](https://imgur.com/e3xYvfu.png)
![command](https://imgur.com/TrjrA3i.png)
![terminal](https://imgur.com/7ukHRhL.png)
