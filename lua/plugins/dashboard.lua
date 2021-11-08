local vim = vim
local g = vim.g

vim.cmd("packadd dashboard-nvim")

g.dashboard_default_executive = "telescope"

local custom_header = {
  "",
  "",
  "",
  "         ,-~°c°~-, ",
  "       ///| /l\\ |||\\ ",
  "    ^^^,~\\ |a| //~,^^^^ ",
  "    \\|| |::|r|::| ///// ",
  "     ´^_^:^_^:^y^:^_^:^_^ ",
  "       --\\|°:||:///-- ",
  "    .*    O||/ \\|O   *. ",
  "     \\    ()()()()   |/ ",
  "     '|'    @@@@@   '|' ",
  "      |__   8 8 8  __| ",
  "       \\°  | 0 |  /°/ ",
  "        \\_ | | | /_/ ",
  "          \\  |  /// ",
  "           || 0 || ",
  "             ||| ",
  '   _""|"|"---......---"|"|""`_',
  "          C A M I A C L  ",
}
g.dashboard_custom_header = custom_header

g.dashboard_custom_section = {
  a = {
    description = { "  Find File                  SPC f f" },
    command = "Telescope find_files",
  },
  b = {
    description = { "冷 Find Project               SPC f p" },
    command = "Telescope projects",
  },
  c = {
    description = { "  Recents                    SPC f o" },
    command = "Telescope oldfiles",
  },
  d = {
    description = { "洛 New Buffer                 SPC g g" },
    command = "enew",
  },
  e = {
    description = { "  Edit Configuration         SPC d c" },
    command = ':e ~/.config/nvim/init.lua'
    -- command = "e ~/AppData/Local/nvim",
  },
}

g.dashboard_custom_footer = { "CamiaCL.NVIM" }
