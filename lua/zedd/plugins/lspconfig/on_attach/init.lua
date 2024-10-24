return function(client, bufnr)
	vim.diagnostic.config({
		underline = true,
		virtual_text = false,
		signs = true,
		update_in_insert = true,
		severity_sort = true,
	})

	vim.o.updatetime = 300
end
