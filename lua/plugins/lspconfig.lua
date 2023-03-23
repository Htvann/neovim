local capabilities = require('cmp_nvim_lsp').default_capabilities()
local builtin = require('telescope.builtin')
local saga = require('lspsaga')

saga.setup({
  ui = {
    winblend = 10,
    border = 'rounded',
    colors = {
      normal_bg = '#002b36'
    }
  }
})

local on_attach = function(_, buffer)
  local optional = { noremap = true, silent = true, buffer = buffer }
  vim.keymap.set('n', 'gh', builtin.lsp_definitions, optional) -- gd to go to definition
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, optional) -- K to hover docs
  vim.keymap.set('n', 'gr', '<Cmd> Lspsaga rename<CR>', optional) -- gr to rename
  vim.keymap.set('n', '<C-i>', builtin.lsp_implementations, optional) -- gr to rename
  vim.keymap.set('n', 'gi', '<Cmd> Lspsaga show_line_diagnostics<CR>', optional)
  vim.keymap.set('n', 'F', builtin.lsp_document_symbols, optional)

  -- format on save
  vim.api.nvim_create_autocmd('BufWritePre', {
    group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end

local lsp_config = {
  capabilities = capabilities,
  on_attach = function(_, bufnr)
    on_attach(_, bufnr)
  end
}


require('mason-lspconfig').setup_handlers({
  function(server_name)
    local server = require('lspconfig')[server_name]
    if server then
      server.setup(lsp_config)
    end
  end,
  tsserver = function()
    require('typescript').setup({
      server = vim.tbl_extend('force', lsp_config, {
        on_attach = function(_, bufnr)
          on_attach(_, bufnr)
        end,
        init_options = {
          preferences = {
            importModuleSpecifierPreference = 'project=relative',
            jsxAttributeCompletionStylr = 'none'
          }
        }
      })
    })
  end,
})

require('lspconfig').cssls.setup(lsp_config)


vim.keymap.set('n', 'go', '<cmd>TypescriptOrganizeImports<cr>')
vim.keymap.set('n', 'ga', '<cmd>TypescriptAddMissingImports<cr>')
vim.keymap.set('n', 'gq', '<cmd>TypescriptRemoveUnused<cr>')
vim.keymap.set('n', 'R', '<cmd>TypescriptRenameFile<cr>')

local codeaction = require("lspsaga.codeaction")
vim.keymap.set("n", "<C-k>", function() codeaction:code_action() end, { silent = true })
vim.keymap.set("v", "<C-k>", function()
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
  codeaction:range_code_action()
end, { silent = true })
