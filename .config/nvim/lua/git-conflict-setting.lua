require('git-conflict').setup({
	default_mapping = true,
	disable_diagnostics = false,
	highlights = {
		incoming = 'DiffText',
		current = 'DiffAdd'
	}

}
)
