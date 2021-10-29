-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/taro/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/taro/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/taro/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/taro/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/taro/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  ["clever-f.vim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/clever-f.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-snippy"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/cmp-snippy"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/cmp-vsnip"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/cmp_luasnip"
  },
  ["denops.vim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/denops.vim"
  },
  ["eskk.vim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/eskk.vim"
  },
  fzf = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["github-nvim-theme"] = {
    config = { "\27LJ\1\0025\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\26github-color-settings\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/taro/.local/share/nvim/site/pack/packer/opt/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\1\0028\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\29indent-blankline-setting\frequire\0" },
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20lspsaga-setting\frequire\0" },
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    after = { "github-nvim-theme" },
    loaded = true,
    only_config = true
  },
  ["luatab.nvim"] = {
    config = { "\27LJ\1\2K\0\0\2\0\4\0\0054\0\0\0007\0\1\0%\1\3\0:\1\2\0G\0\1\0&%!v:lua.require'luatab'.tabline()\ftabline\6o\bvim\0" },
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/luatab.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2<\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16cmp-setting\frequire\0" },
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\1\2#\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\blsp\frequire\0" },
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-nim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/nvim-nim"
  },
  ["nvim-snippy"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/nvim-snippy"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22nvimtree-settings\frequire\0" },
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\0028\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\29nvim-treesitter-settings\frequire\0" },
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["omni.vim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/omni.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["preview-markdown.vim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/preview-markdown.vim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-edgemotion"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/vim-edgemotion"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gnuplot"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/vim-gnuplot"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors"
  },
  ["vim-quickhl"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/vim-quickhl"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  vimtex = {
    config = { "\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20vimtex-settings\frequire\0" },
    loaded = true,
    path = "/home/taro/.local/share/nvim/site/pack/packer/start/vimtex"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\0028\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\29nvim-treesitter-settings\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16cmp-setting\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22nvimtree-settings\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\1\0028\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\29indent-blankline-setting\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: luatab.nvim
time([[Config for luatab.nvim]], true)
try_loadstring("\27LJ\1\2K\0\0\2\0\4\0\0054\0\0\0007\0\1\0%\1\3\0:\1\2\0G\0\1\0&%!v:lua.require'luatab'.tabline()\ftabline\6o\bvim\0", "config", "luatab.nvim")
time([[Config for luatab.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\0020\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\21lualine-settings\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20lspsaga-setting\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
try_loadstring("\27LJ\1\2/\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\20vimtex-settings\frequire\0", "config", "vimtex")
time([[Config for vimtex]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\1\0026\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\1\2<\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-lspinstall
time([[Config for nvim-lspinstall]], true)
try_loadstring("\27LJ\1\2#\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\blsp\frequire\0", "config", "nvim-lspinstall")
time([[Config for nvim-lspinstall]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd github-nvim-theme ]]

-- Config for: github-nvim-theme
try_loadstring("\27LJ\1\0025\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\26github-color-settings\frequire\0", "config", "github-nvim-theme")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
