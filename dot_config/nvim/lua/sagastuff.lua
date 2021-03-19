local saga = require 'lspsaga'
saga.init_lsp_saga {
	use_saga_diagnostic_sign = true, 
	code_action_prompt = {
	  enable = true,
	  sign = false,
	  sign_priority = 20,
	  virtual_text = false,
	},
	finder_definition_icon = '  ',
	finder_reference_icon = '  ',
	max_preview_lines = 30, -- preview lines of lsp_finder and definition preview

}


--Add some changes here little error pissing me off .