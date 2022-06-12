local palette = require('github-theme.palette')
local util = require('github-theme.util')

---Generate github theme for foot terminal.
---@param cfg gt.ConfigSchema
return function(cfg)
  local colors = palette.get_palette(cfg.theme_style)

  local foot_colors = {}
  for k, v in pairs(colors) do
    if type(v) == 'string' then
      foot_colors[k] = v:gsub('^#', '')
    end
  end

  local foot = util.template(
    [[
[colors]
background=${bg}
foreground=${fg_term}
regular0=${black}
regular1=${red}
regular2=${green}
regular3=${yellow}
regular4=${blue}
regular5=${magenta}
regular6=${cyan}
regular7=${white}
bright0=${bright_black}
bright1=${bright_red}
bright2=${bright_green}
bright3=${bright_yellow}
bright4=${bright_blue}
bright5=${bright_magenta}
bright6=${bright_cyan}
bright7=${bright_white}
]],
    foot_colors
  )
  return foot
end
