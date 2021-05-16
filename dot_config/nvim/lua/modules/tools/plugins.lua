local tools = {}
local conf = require('modules.tools.config')

tools['kristijanhusak/vim-dadbod-ui'] = {
  cmd = {'DBUIToggle','DBUIAddConnection','DBUI','DBUIFindBuffer','DBUIRenameBuffer'},
  config = conf.vim_dadbod_ui,
  requires = {{'tpope/vim-dadbod',opt = true}}
}

tools['editorconfig/editorconfig-vim'] = {
  ft = { 'go','typescript','javascript','vim','rust','zig','c','cpp' }
}

-- tools['glepnir/prodoc.nvim'] = {
--   event = 'BufReadPre'
-- }

tools['b3nj5m1n/kommentary'] = {
  config = conf.kommentary,
}


--Add history one to find previous history and keybinds .


tools['relastle/vim-nayvy'] ={

  config = function ()
    vim.g.nayvy_import_config_path = '$HOME/nayvy.py'
  end
}


-- Good way for me to record how much or what i code in mostly  
tools['wakatime/vim-wakatime'] ={
}



--Moving stuff 
tools['camspiers/animate.vim'] ={
}






tools['euclidianAce/BetterLua.vim'] = {}


tools['liuchengxu/vista.vim'] = {
  cmd = 'Vista',
  config = conf.vim_vista
}

tools['brooth/far.vim'] = {
  cmd = {'Far','Farp'},
  config = function ()
    vim.g['far#source'] = 'rg'
  end
}

tools['iamcco/markdown-preview.nvim'] = {
  ft = 'markdown',
  config = function ()
    vim.g.mkdp_auto_start = 1
  end
}

tools['nacro90/numb.nvim'] = {
  config = function ()
  require('numb').setup()  end
}


tools['jbyuki/nabla.nvim'] = {
}









return tools
