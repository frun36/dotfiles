return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",

	config = function()
		-- 1. Install parsers (Replaces `ensure_installed`)
		require("nvim-treesitter").install({
			"javascript",
			"cpp",
			"rust",
			"lua",
			"vim",
			"vimdoc",
			"c",
			"query",
		})

		-- 2. Configure Highlighting and Indentation via Neovim Autocommands
		vim.api.nvim_create_autocmd("FileType", {
			group = vim.api.nvim_create_augroup("TreesitterSetup", { clear = true }),
			callback = function(args)
				local lang = args.match
				local buf = args.buf

				-- Start Treesitter highlighting 
				-- Wrapped in pcall so it fails silently if a parser isn't installed yet
				pcall(vim.treesitter.start, buf)

				-- Setup Indentation 
				local disabled_indent_langs = { python = true, c = true, cpp = true, latex = true }

				if not disabled_indent_langs[lang] then
					vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
}
