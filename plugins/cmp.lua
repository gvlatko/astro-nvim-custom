local cmp = require "cmp"
return {
  mapping = {
    ["<CR>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        local entry = cmp.get_selected_entry()
        if not entry then
          cmp.select_next_item { behavior = cmp.SelectBehavior.Select }
          cmp.confirm()
        else
          cmp.confirm()
        end
      else
        fallback()
      end
    end, { "i", "s" }),
  },
  source_priority = {
    nvim_lsp = 1000,
    bufer = 750,
    luasnip = 500,
    path = 250,
  },
}
